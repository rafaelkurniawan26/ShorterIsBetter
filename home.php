<?php
session_start();
$connect = mysqli_connect("localhost", "root", "", "ShorterIsBetter");
if (!$connect) {
    die("Connection failed: " . mysqli_connect_error());
}
function generateShortURL($longURL)
{
    $hashedURL = md5($longURL); 
    $shortURL = substr($hashedURL, 0, 6); 
    return $shortURL;
}
if (isset($_POST['generate'])) {
    $longURL = mysqli_real_escape_string($connect, $_POST['long_url']);
    $shortURL = mysqli_real_escape_string($connect, $_POST['short_url']);
if (empty($shortURL)) {
    $shortURL = generateShortURL($longURL);
}
$query = "INSERT INTO shortened_urls (`shortURL`, `longURL`) VALUES ('$shortURL', '$longURL');";
mysqli_query($connect, $query);
echo "Shortened URL: <a href='$longURL'>http://<your_web_domain>/$shortURL</a>";
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header">
    <h2 id="Judul">ShorterIsBetter</h2>
    <a href="index.php" id="home">Dashboard</a>
    </div>
    </div>
    <div class="tulisan">
    Shorten your URL
    </div>
    <div class="forms">
    <form method="POST">
        <label for="" id="label">Long URL</label>
        <br>
        <input type="text" name="long_url" id="input" required>
        <br>
        <label for="" id="label">Short URL</label>
        <br>
        <input type="text" name="short_url" id="input">
        <br>
        <input type="submit" name="generate" value="Generate URL" id="input2">
        <br>
    </form>
    </div>
</body>
</html>