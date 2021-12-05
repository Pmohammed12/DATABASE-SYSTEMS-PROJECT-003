<!DOCTYPE HTML>  
<html>
<head>
<style>
.error {color: #FF0000;}
</style>
</head>
<body>  

<?php
// define variables and set to empty values
$user_idErr = $fullnameErr = $usernameErr= $emailErr = $passwordErr = "";
$user_id = $fullname = $username = $email = $password = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["user_id"])) {
    $User_idErr = "user_id is required";
  } else {
    $user_id = test_input($_POST["user_id"]);
  }
  
  if (empty($_POST["fullname"])) {
    $fullnameErr = "fullname is required";
  } else {
    $fullname = test_input($_POST["fullname"]);
  }
    
  if (empty($_POST["username"])) {
    $usernameErr = "username is required";
  } else {
    $username = test_input($_POST["username"]);
  }

  if (empty($_POST["email"])) {
    $emailErr = "email is required";
  } else {
    $email = test_input($_POST["email"]);
  }

  if (empty($_POST["password"])) {
    $passwordErr = "password is required";
  } else {
    $password = test_input($_POST["password"]);
  }
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>

<h2>PHP Form Validation Example</h2>
<p><span class="error">* required field</span></p>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
  user_id: <input type="text" name="user_id">
  <span class="error">* <?php echo $user_idErr;?></span>
  <br><br>
  fullname: <input type="text" name="fullname">
  <span class="error">* <?php echo $fullnameErr;?></span>
  <br><br>
  username: <input type="text" name="username">
  <span class="error"><?php echo $usernameErr;?></span>
  <br><br>
  email: <input type="text" name="Email" >
  <br><br>
  password:<input type="password" name="password" >
  
  <span class="error">* <?php echo $passwordErr;?></span>
  <br><br>
  <input type="submit" name="register" value="register">  
</form>

<?php
echo "<h2>Your Input:</h2>";
echo $user_id;
echo "<br>";
echo $fullname;
echo "<br>";
echo $username;
echo "<br>";
echo $email;
echo "<br>";
echo $password;
?>

</body>
</html>