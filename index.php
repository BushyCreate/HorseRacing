<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $host = '127.0.0.1';
    $db = 'horse_racing';
    $user = 'bit_academy';
    $pass = 'bit_academy';
    $charset = 'utf8mb4';

    $dsn = "mysql:host=$host;dbname=$db;charset=$charset";

    $options = [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES => false,
    ];

    $pdo = new PDO($dsn, $user, $pass, $options);
    $name = $_POST['name'];
    $color = $_POST['horsecolor'];
    $pdo->query("UPDATE horse_info SET name = $name, color = $color");
    header('Location: horserace.html');
}

?>


<!DOCTYPE html>

<head>
    <title>
        Design your horse!
    </title>
</head>

<body>
    <form action="index.php" method="post">
        <h1>DESIGN YOUR HORSE</h1>

        <label for="name">NAME</label>
        <input type="text" id="name" placeholder="Name here">

        <select name="horsecolor" id="horsecolor">
            <option value="Black">Black</option>
            <option value="Brown">Brown</option>
            <option value="White">White</option>
        </select>

        <button type="submit">PLAY</button>
        <a href="horserace.html">Already Played Before?</a>
    </form>
</body>