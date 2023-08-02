<?php
session_start();
$connect=mysqli_connect("localhost", "root", "", "ShorterIsBetter");
if (!$connect) {
    die("Connection failed: " . mysqli_connect_error());
}
if(isset($_POST['Login'])){
    $username = mysqli_real_escape_string($connect, $_POST['Username']);
    $password = mysqli_real_escape_string($connect, $_POST['Password']);
    $query = "SELECT * FROM user WHERE BINARY Username = ?;";
    $stmt = mysqli_prepare($connect, $query);
    mysqli_stmt_bind_param($stmt, "s", $username);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $hashedPassword = $row['Password'];
        if (password_verify($password, $hashedPassword)) {
            $_SESSION['username'] = $username;
            header('Location: home.php');
            exit;
    }
        else {
            echo'<script>
            alert("Login Gagal Seperti Hidup Anda");
            </script>';
        }
    }
    else{
        echo'<script>
            alert("Login Gagal Seperti Hidup Anda");
            </script>';
    }

        mysqli_stmt_close($stmt);
        mysqli_close($connect);
}
?>






<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header">
    <h2 id="Judul">ShorterIsBetter</h2>
    <a href="index.php" id="home">Dashboard</a>
    </div>
    </div>
    <div class="tulisan">
    Login To ShorterIsBetter
    </div>
    <div class="forms">
    <form method="POST">
        <label for="" id="label">Username</label>
        <br>
        <input type="text" name="Username" id="input" required>
        <br>
        <label for="" id="label">Password</label>
        <br>
        <input type="password" name="Password" id="input" required>
        <br>
        <input type="submit" name="Login" value="Login" id="input2">
        <br>
    </form>
    </div>
</body>
</html>
