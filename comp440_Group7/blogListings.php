<?php
   include("config.php");
   session_start();

   // check if logged in
   if(!isset($_SESSION['loggedin'])){
      header("location:login.php");
      die();
   }

   if($_SERVER["REQUEST_METHOD"] == "POST") {

      if(!$db){
         $error = 'Not Connected Server';
     }

    //----------------Search Tag Table--- after submit---------------
    if (isset($_POST['submit'])) {
      $mytag = mysqli_real_escape_string($db,$_POST['searchtags']);
      $sqlTag = "SELECT blogid, tag FROM blogstags Where tag = '$mytag';";
      $result = $db->query($sqlTag);

      echo "<br>";
      echo "<table border='1'>";
      echo "<td>blogid </td><td>tag</td>";
      while ($row = mysqli_fetch_assoc($result)) { // Important line !!! Check summary get row on array ..
          echo "<tr>";
          foreach ($row as $field => $mytag) { // I you want you can right this line like this: foreach($row as $value) {
              echo "<td>" . $mytag . "</td>"; // I just did not use "htmlspecialchars()" function.
          }
          echo "</tr>";
      }
      echo "</table>";


   //    if ($result->num_rows > 0) {
   //       echo "Result for Tag search <br>";
   //       while($row = $result->fetch_assoc()) {
   //           echo "blogid: " . $row["blogid"]. " - tag: " . $row["tag"]. "<br> ";
   //       }
   //   } else {
   //       echo "0 results";
   //   }

    }
    //--------------------search tag table---------------------------------

   //   $stmt->close();
   //   $db->close();
   }
?>

<html>

   <head>
      <title>Recent Blogs</title>
      <link href="style.css" rel="stylesheet" type="text/css">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
   </head>

   <body class="loggedin">
       <nav class="navtop">
           <div>
               <h1><a style href="index.php">The Bookface</a></h1>
               <a href="blogListings.php"><i class="fas fa-blog"></i>View Blogs</a>
               <a href="blog.php"><i class="fas fa-plus"></i>Create Blog</a>
               <a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
           </div>
       </nav>
       <div class="content">
      <h2>Recent Blogs</h2>
      <div style = "margin:30px">

               <form action = "" method = "post">


                  <label>Search by Tags:</label><input type = "text" name = "searchtags" class = "box" size = "50" /><br/><br />


                  <input type = "submit" name = "submit" value = " Submit "/>
                  <!-- <input type="button" onclick="window.location.href = 'signup.php';" value="Sign Up"/><br />    -->

               </form>

            </div>
        </div>

   </body>

</html>
