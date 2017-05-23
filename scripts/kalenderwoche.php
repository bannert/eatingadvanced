<?php
$mysqli=mysqli_connect("localhost", "root", "miezum22", "eatingadvanced");
if (mysqli_connect_errno())
  {
  //echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  
$dbc = mysqli_connect(localhost,root,miezum22);
$dbs = mysqli_select_db($dbc, eatingadvanced);

$year = 2017;
$week_start = new DateTime();
$week_stop = new DateTime();

for ($week_no=1; $week_no<=52; $week_no++){
	$week_start->setISODate($year,$week_no);
	$week_start = $week_start->format('d-m-Y');
	$week_stop->setISODate($year,$week_no,7);
	$week_stop = $week_stop->format('d-m-Y');
	echo $week_start;
	echo "<br/>";
	echo $week_stop;
	echo "<br/>";
	echo "<br/>";
	$neu="INSERT INTO kalenderwoche (KW_ID,Start,Stop) VALUES ($week_no,'$week_start','$week_stop')";
	mysqli_query($mysqli,$neu);
	$week_start = new DateTime();
	$week_stop = new DateTime();
}
?>