
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Docker Intro</title>
</head>
<body>
<?php
try {
    $conn = new PDO('mysql:host=mysql-container;dbname=docker_intro', 'root', '758286');
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->prepare('SELECT * FROM product');
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo '<pre>';
    var_export($result);
    echo '</pre>';

    } catch(PDOException $e) {
    echo 'ERROR: ' . $e->getMessage();
}
?>
</body>
</html>

