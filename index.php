<?php
echo '<h1>eatingadvanced</h1>';

$mysqli=mysqli_connect("localhost", "root", "miezum22", "eatingadvanced");
if (mysqli_connect_errno())
  {
  //echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  
$dbc = mysqli_connect(localhost,root,miezum22);
$dbs = mysqli_select_db($dbc, eatingadvanced);

$date = date('d-m-Y',time());
echo $date;

$ddate = date('Y-m-d',time());
$datew = new DateTime($ddate);
$week = $datew->format("W");
echo "<br/>";
echo "Wochennummer: $week";



$check = "SELECT * FROM menu WHERE KW_ID>= $week";
$result = mysqli_query($mysqli,$check);
$rowcount=mysqli_num_rows($result);
echo "<br/>";
echo $rowcount;
echo "<br/>";
$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
echo $row["Bezeichnung"];
?>