<html lang="en">
<head>
<title>Products</title>
    <link rel="stylesheet" href="style.css" type="text/css"/>
</head>
<body class="wrapper">
<h1>Products</h1>
<ul>
                <a href="/about.html">About</a>
                <a href="/index.html">Main</a>
                <a href="/control/user/index.php">Profile</a>
</ul>

<table>
    <tr><th>Id</th><th>name</th><th>price</th></tr>
    <?php
include_once "boot.php";

$result = db()->query("SELECT * FROM Products");
foreach ($result as $row){
    echo "<tr><td>{$row['id']}</td><td>{$row['name']}</td><td>{$row['price']}</td></tr>";
}
?>
</table>
<br>
<br>
<br>
<form method="post" action="./do_logout.php">
    <button type="submit" class="btn btn-primary">Logout</button>
</form>
</body>
</html>