<html>
<?php
echo '<h1>eatingadvanced</h1>';


//Eintragung in die Datenbank
if (isset($_GET['add'])){
	//Auslesen der POST
	$bezeichnung = $_POST['name'];
	$menu = $_POST['menu'];
	$date = $_POST['date'];
	//Datumsformat ändern
	$date = date("d.m.Y",strtotime($date));
	//KW von Datum ausrechnen
	$kw = date(W,strtotime($date));
	//Eintragung in die Datenbank
	$pdo = new PDO('mysql:host=localhost;dbname=eatingadvanced', 'root', 'miezum22');
	$sth = $pdo->prepare("INSERT INTO menu (KW_ID, Bezeichnung, Art, Tag) VALUES ($kw, '$bezeichnung', '$menu', '$date')");
	$sth->execute();
}


//Abruf der aktuellen Menus
$pdo = new PDO('mysql:host=localhost;dbname=eatingadvanced', 'root', 'miezum22');
$date = date('d-m-Y',time());
$ddate = date('Y-m-d',time());
$datew = new DateTime($ddate);
$week = $datew->format("W");
$sth = $pdo->prepare("SELECT * FROM menu WHERE KW_ID>= $week ORDER BY Tag");
$sth->execute();
$rows = $sth->rowCount();
$result = $sth->fetchAll();


for($i=0; $i<=$rows-1; $i++){
echo $result[$i]['Bezeichnung'];
echo " ";
echo $result[$i]['Art'];
echo " ";
echo $result[$i]['Tag'];
echo "<br/>";
}
echo "<br/>";
?>

<body>
<form action="?add=1" method="post">
Bezeichnung: <input type="name" name="name"><br>
Art:<br>
<input type="radio" name="menu" value="A" checked> A<br>
<input type="radio" name="menu" value="B"> B<br>
<input type="radio" name="menu" value="C"> C<br>
Tag: <input type="date" name="date"><br>
<input type="submit">
</form>
</body>
<?php
?>
</html>