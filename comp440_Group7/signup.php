<?php
   include("config.php");
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form

      $myfName = mysqli_real_escape_string($db,$_POST['firstName']);
      $mylName = mysqli_real_escape_string($db,$_POST['lastName']);
      $myusername = mysqli_real_escape_string($db,$_POST['username']);
      $mypassword = mysqli_real_escape_string($db,$_POST['password']);
      $myconfPassword = mysqli_real_escape_string($db,$_POST['confPassword']);
      $myemail = mysqli_real_escape_string($db,$_POST['email']);

      if(strlen($myusername) < 8) {
        $error = "ERROR: Username must be 8 characters";
    } else if (strlen($mypassword) < 8) {
        $error = "ERROR: Password must be 8 characters";
    } else if ($mypassword != $myconfPassword) {
        $error = "ERROR: Passwords don't match";
    } else {

    //   $sql = "SELECT username, password, user_type, email  FROM users WHERE username = '$myusername'
    //   and password = '$mypassword'", myusertype = ;

    if(!$db){
        $error = 'Not Connected Server';
    }

        // check input
        if($mypassword != $myconfPassword) {
            $error = "Passwords don't match! Try again";
        } else {


        // Check if username or email already exists
        $checkQuery = "SELECT * FROM users
        WHERE username = '$myusername' OR email = '$myemail'";
        $exec = mysqli_query($db,$checkQuery);
        $count = mysqli_num_rows($exec);

        if($count > 0) {
            $error = "Username or Email already exists! Try a different one";
            /*
            ?>
            <script type="text/javascript">
            alert("Username or Email already exists! Try a different one");
            </script>
                <?php*/
        } else {

      $sql = "INSERT INTO users(username, password, firstname, lastname, email)
      VALUES ('$myusername', '$mypassword', '$myfName', '$mylName', '$myemail')";
      $error = "";

      $result = mysqli_query($db,$sql);
      if($result){
            echo "Inserted ";
            ?>
            <script type="text/javascript">
            window.location = "login.php";
            </script>
                <?php
            }
      else{
            $error = "Account Already Exists";
      }
  }

  }
    //   $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
    //   $active = $row['active'];

    //   $count = mysqli_num_rows($result);
    //   $nameError = "";

    //   $error = "";
      // If result matched $myusername and $mypassword, table row must be 1 row

    //   if($count == 1) {
    //     //  session_register("myusername");
    //      $_SESSION['login_user'] = $myusername;

    //      header("location: welcome.php");
    //   }else {
    //     $nameError = "User Name or Password is wrong";
    //     //   if(isset($_SESSION))
    //     //  $error = "Your Login Name or Password is invalid";
    //   }
   }
}
?>
<html>

   <head>
      <title>Sign Up Page</title>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
      <link href="style.css" rel="stylesheet" type="text/css">
   </head>

   <body>
      <div class = "register">
          <h1>Register <br><br>
              <span><?php echo ((isset($error) && $error != '') ? $error : ''); ?> </span>

          </h1>
               <form action = "" method = "post">
                   <label><i class="fas fa-user"></i></label>
                   <input pattern="^[a-zA-Z1-9].*" type = "text" placeholder="First Name" required name = "firstName" class = "box"/><br /><br />

                   <label><i class="fas fa-user"></i></label>
                   <input pattern="^[a-zA-Z1-9].*" type = "text" placeholder="Last Name" required name = "lastName" class = "box" /><br/><br />

                  <label><i class="fas fa-user"></i></label>
                  <input pattern="^[a-zA-Z1-9].*" type = "text" placeholder="Username" required name = "username" class = "box"/><br /><br />

                  <label><i class="fas fa-envelope"></i></label>
                  <input pattern="^[a-zA-Z1-9].*" type = "email" placeholder="Email" required name = "email" class = "box" /><br/><br />

                  <label><i class="fas fa-lock"></i></label>
                  <input pattern="^[a-zA-Z1-9].*" type = "password" placeholder="Password" required name = "password" class = "box" /><br/><br />

                  <label><i class="fas fa-lock"></i></label>
                  <input pattern="^[a-zA-Z1-9].*" type = "password" placeholder="Confirm Password" required name = "confPassword" class = "box" /><br/><br />

                  <input id="btn" type = "submit" value = " Submit "/>
                  <input id="btn" type="button" onclick="window.location.href = 'login.php';" value="Log in"/><br />
               </form>

        </div>
   </body>
</html>
<?php
    unset($error);
?>
