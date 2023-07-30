<?php
session_start();
    $connect=mysqli_connect("localhost", "root", "", "ShorterIsBetter");
    if (!$connect) {
        die("Connection failed: " . mysqli_connect_error());
    }
    if(isset($_POST['Submit'])){
        $username = mysqli_real_escape_string($connect, $_POST['Username']);
        $password = mysqli_real_escape_string($connect, $_POST['Password']);
        $confirmPassword = mysqli_real_escape_string($connect, $_POST['confirmPassword']);
        $minPasswordLength = 8;
        if (strlen($password) < $minPasswordLength) {
         echo '<script>
         alert("Password must be at least 8 character long");
             </script>';
            }
        if ($password !== $confirmPassword) {
            echo '<script>
            alert("Password Tidak Sesuai");
                </script>';
                exit;
        }
        $query = "SELECT * FROM user WHERE Username = '$username'";
        $result = mysqli_query($connect, $query);
        if (mysqli_num_rows($result) > 0) {
            echo '<script>
            alert("Username sudah terpakai");
            </script>';
            exit;
        }
        $hashedPassword = password_hash($password, PASSWORD_BCRYPT);
        $query = "INSERT INTO user (`Username`, `Password`) VALUES (?, ?);";
        $stmt = mysqli_prepare($connect, $query);
        mysqli_stmt_bind_param($stmt, "ss", $username, $hashedPassword);    
        if (mysqli_stmt_execute($stmt)) {
            header('Location: login.php');
            exit;
        } else {
            echo "Error: " . mysqli_error($connect);
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
    <title>Register</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header">
    <h2 id="Judul">ShorterIsBetter</h2>
    <a href="index.php" id="home">Dashboard</a>
    </div>
    <div class="tulisan">
        Register To ShorterIsBetter
    </div>
    <br>
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
        <label for="" id="label">Confirm Password</label>
        <br>
        <input type="password" name="confirmPassword" id="input" required>
        <br>
        <input type="submit" name="Submit" id="input2">
    </form>
    </div>
</body>
</html>
