<?php
   //include("config.php");
   session_start();

   // check if logged in
   if(!isset($_SESSION['loggedin'])){
      header("location:login.php");
      die();
   }

   function generate_string($input, $strength = 16) {
      $input_length = strlen($input);
      $random_string = '';
      for($i = 0; $i < $strength; $i++) {
          $random_character = $input[mt_rand(0, $input_length - 1)];
          $random_string .= $random_character;
      }

      return $random_string;
  }

   if($_SERVER["REQUEST_METHOD"] == "POST") {

      if(!$db){
         $error = 'Not Connected Server';
     }
    // generating 10 random string


     if (isset($_POST['Database_Initialize'])) {
      echo "<script>console.log('posting?' );</script>";

      $sql = "CREATE TABLE Guests (
         id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
         firtname VARCHAR(30) NOT NULL
         )";

         if ($db->query($sql) === TRUE) {
             echo "Table Guests created successfully";
         } else {
             echo "Error creating table: " . $db->error;
         }

      $permitted_chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';

      for($i =0; $i < 10; $i ++){
         $temp  = generate_string($permitted_chars, 10);

         // $sql2 = "INSERT INTO Guests(firtname)
         // VALUES ('$temp')";
         echo "<script>console.log('this is my function?' );</script>";


         //-----sql injection protection
         $stmt = $db->prepare("INSERT INTO Guests (firtname) VALUES (?)");
         $stmt->bind_param("s", $firstname);

         $firstname = $temp;
         $stmt->execute();

      //    if ($db->query($stmt) === TRUE) {
      //       echo "New record reated successfully";
      //   } else {
      //       echo "Error: " . $sql2 . "<br>" . $db->error;
      //   }
      }
     }

   //   $stmt->close();
   //   $db->close();
   }
?>

<html>

   <head>
       <meta charset="utf-8">
      <title>Welcome </title>
      <link href="style.css" rel="stylesheet" type="text/css">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
   </head>

   <body class="loggedin">
       <nav class="navtop">
           <div>
               <h1><a style href="index.php">The Bookfage</a></h1>
               <a href="blogListings.php"><i class="fas fa-blog"></i>View Blogs</a>
               <a href="blog.php"><i class="fas fa-plus"></i>Create Blog</a>
               <a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
           </div>
       </nav>
       <div class="content">
           <h2>Home Page</h2>
           <p style="font-size:32px;">Welcome back, <?=$_SESSION['user_name']?>!</p>
           <form action = "" method = "post">
              <!-- <input type = "submit" value = " Initialize Data "/> -->
              <input id="btn" type="submit" name="Database_Initialize" value="Database Initialize" />
              <!-- <span><?php echo ((isset($error) && $error != '') ? $error : ''); ?> </span> -->
           </form>
       </div>
   </body>

</html>
