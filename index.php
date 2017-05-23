<?php
echo '<h1>eatingadvanced</h1>';

$pdo = new PDO('mysql:host=localhost;dbname=eatingadvanced', 'root', 'miezum22');

$date = date('d-m-Y',time());
echo $date;

$ddate = date('Y-m-d',time());
$datew = new DateTime($ddate);
$week = $datew->format("W");
echo "<br/>";
echo "Wochennummer: $week";

$sth = $pdo->prepare("SELECT * FROM menu WHERE KW_ID>= $week");
$sth->execute();
$result = $sth->fetchAll();
echo "<br/>";
echo $result[0]['M_ID'];
echo $result[0]['KW_ID'];
echo $result[0]['Bezeichnung'];
echo $result[0]['Tag'];
echo "<br/>";
echo $result[1]['M_ID'];
echo $result[1]['KW_ID'];
echo $result[1]['Bezeichnung'];
echo $result[1]['Tag'];

?>