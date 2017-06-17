<?php
session_start();
?>
<html>
    <head>
        <title>Speiseplan</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style1.css" type="text/css"/>
        <link rel="stylesheet" href="css/style2.css" type="text/css"/>
        <link rel="stylesheet" href="css/style3.css" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>    
		$(document).ready(function() {
		$(function() {
		var offset = $("aside").offset();
		var topPadding = 35;
		var topMargin = 20;
		var animateSpeed = 200;
		$(window).scroll(function() {
		if ($(window).scrollTop() > offset.top) {
			$("aside").stop().animate({
          marginTop: $(window).scrollTop() - offset.top + topPadding
        },animateSpeed);
		} else {
        $("aside").stop().animate({
          marginTop: topMargin
        },animateSpeed);  
		}
		}); // END window scroll
		}); // END function
		}); // END document ready
        </script>    
    </head>
<?php

$pdo = new PDO('mysql:host=localhost;dbname=eatingadvanced', 'root', 'miezum22');
$date = date('d-m-Y', time());
$ddate = date('Y-m-d', time());
$datew = new DateTime($ddate);
$week = $datew->format("W");
$year = 2017; //ÜBERARBEITEN
$monday = new DateTime();
$tuesday = new DateTime();
$wednesday = new DateTime();
$thursday = new DateTime();
$friday = new DateTime();
$kw_selected = $_GET['awkw'];

//Abrufen der Kalenderwochen
$sth = $pdo->prepare("SELECT * FROM kalenderwoche WHERE KW_ID>= $week");
$sth->execute();
$kw_rows = $sth->rowCount();
$kw = $sth->fetchAll();

//Wenn Kalenderwoche gewählt wurde, Datum berrechnen
if(isset($kw_selected) AND $kw_selected<>'Bitte Zeitraum wählen'){
	$monday->setISODate($year, $kw_selected, 1);
	$monday = $monday->format('d.m.Y');

	$tuesday->setISODate($year, $kw_selected, 2);
	$tuesday = $tuesday->format('d.m.Y');

	$wednesday->setISODate($year, $kw_selected, 3);
	$wednesday = $wednesday->format('d.m.Y');

	$thursday->setISODate($year, $kw_selected, 4);
	$thursday = $thursday->format('d.m.Y');

	$friday->setISODate($year, $kw_selected, 5);
	$friday = $friday->format('d.m.Y');
	} else {
		$monday='';
		$tuesday='';
		$wednesday='';
		$thursday='';
		$friday='';
		}

//Verfügbare Essen abrufen
if (isset($kw_selected)) {
    //Montag
    $sth = $pdo->prepare("SELECT * FROM menu WHERE KW_ID= $kw_selected AND Tag='$monday' ORDER BY Art");
    $sth->execute();
    $menus = $sth->fetchAll();
    $menus_row = $sth->rowCount();
    if ($menus_row > 0) {
        $mo_a = $menus[0]['Bezeichnung'];
        $mo_b = $menus[1]['Bezeichnung'];
        $mo_c = $menus[2]['Bezeichnung'];
    } else {
        $mo_a = 'Noch kein Menü verfügbar!';
        $mo_b = 'Noch kein Menü verfügbar!';
        $mo_c = 'Noch kein Menü verfügbar!';
    }
    //Dienstag
    $sth = $pdo->prepare("SELECT * FROM menu WHERE KW_ID= $kw_selected and Tag='$tuesday' ORDER BY Art");
    $sth->execute();
    $menus = $sth->fetchAll();
    $menus_row = $sth->rowCount();
    if ($menus_row > 0) {
        $tu_a = $menus[0]['Bezeichnung'];
        $tu_b = $menus[1]['Bezeichnung'];
        $tu_c = $menus[2]['Bezeichnung'];
    } else {
        $tu_a = 'Noch kein Menü verfügbar!';
        $tu_b = 'Noch kein Menü verfügbar!';
        $tu_c = 'Noch kein Menü verfügbar!';
    }

    //Mittwoch
    $sth = $pdo->prepare("SELECT * FROM menu WHERE KW_ID= $kw_selected and Tag='$wednesday' ORDER BY Art");
    $sth->execute();
    $menus = $sth->fetchAll();
    $menus_row = $sth->rowCount();
    if ($menus_row > 0) {
        $we_a = $menus[0]['Bezeichnung'];
        $we_b = $menus[1]['Bezeichnung'];
        $we_c = $menus[2]['Bezeichnung'];
    } else {
        $we_a = 'Noch kein Menü verfügbar!';
        $we_b = 'Noch kein Menü verfügbar!';
        $we_c = 'Noch kein Menü verfügbar!';
    }

    //Donnerstag
    $sth = $pdo->prepare("SELECT * FROM menu WHERE KW_ID= $kw_selected and Tag='$thursday' ORDER BY Art");
    $sth->execute();
    $menus = $sth->fetchAll();
    $menus_row = $sth->rowCount();
    if ($menus_row > 0) {
        $th_a = $menus[0]['Bezeichnung'];
        $th_b = $menus[1]['Bezeichnung'];
        $th_c = $menus[2]['Bezeichnung'];
    } else {
        $th_a = 'Noch kein Menü verfügbar!';
        $th_b = 'Noch kein Menü verfügbar!';
        $th_c = 'Noch kein Menü verfügbar!';
    }

    //Freitag
    $sth = $pdo->prepare("SELECT * FROM menu WHERE KW_ID= $kw_selected and Tag='$friday' ORDER BY Art");
    $sth->execute();
    $menus = $sth->fetchAll();
    $menus_row = $sth->rowCount();
    if ($menus_row > 0) {
        $fr_a = $menus[0]['Bezeichnung'];
        $fr_b = $menus[1]['Bezeichnung'];
        $fr_c = $menus[2]['Bezeichnung'];
    } else {
        $fr_a = 'Noch kein Menü verfügbar!';
        $fr_b = 'Noch kein Menü verfügbar!';
        $fr_c = 'Noch kein Menü verfügbar!';
    }
}	

	function eintragen($dbc,$woche,$mba,$mbb,$mbc,$d){
		$sth = $dbc->prepare("DELETE FROM menu WHERE Tag='$d'");
		$sth->execute();
		$sth = $dbc->prepare("INSERT INTO menu (KW_ID, Bezeichnung, Art, Tag) VALUES ($woche, '$mba', 'A', '$d')");
		$sth->execute();
		$sth = $dbc->prepare("INSERT INTO menu (KW_ID, Bezeichnung, Art, Tag) VALUES ($woche, '$mbb', 'B', '$d')");
		$sth->execute();
		$sth = $dbc->prepare("INSERT INTO menu (KW_ID, Bezeichnung, Art, Tag) VALUES ($woche, '$mbc', 'C', '$d')");
		$sth->execute();
	}
	
	if(isset($_POST['Eintragen'])){
	//Montag eintragen
	$mo_a = $_POST['mo_a'];
	$mo_b =	$_POST['mo_b'];
	$mo_c =	$_POST['mo_c'];
	eintragen($pdo,$kw_selected,$mo_a,$mo_b,$mo_c,$monday);
	
	//Dienstag
	$tu_a = $_POST['tu_a'];
	$tu_b =	$_POST['tu_b'];
	$tu_c =	$_POST['tu_c'];
	eintragen($pdo,$kw_selected,$tu_a,$tu_b,$tu_c,$tuesday);

	//Mittwoch
	$we_a = $_POST['we_a'];
	$we_b =	$_POST['we_b'];
	$we_c =	$_POST['we_c'];
	eintragen($pdo,$kw_selected,$we_a,$we_b,$we_c,$wednesday);

	//Donnerstag
	$th_a = $_POST['th_a'];
	$th_b =	$_POST['th_b'];
	$th_c =	$_POST['th_c'];
	eintragen($pdo,$kw_selected,$th_a,$th_b,$th_c,$thursday);
	
	//Freitag
	$fr_a = $_POST['fr_a'];
	$fr_b =	$_POST['fr_b'];
	$fr_c =	$_POST['fr_c'];
	eintragen($pdo,$kw_selected,$fr_a,$fr_b,$fr_c,$friday);
}
?>
	<body>   
        <div class="header-container">
            <header class="wrapper clearfix">
                <h1 class="title"><img src="css/pictures/Profilbild_PSN.png" height="50" alt="EA"/> EatingAdvanced</h1>
                <nav>
                    <ul>
                        <li ><a href="./account.php">Mein Profil</a></li>
                        <li ><a href="./about.php">Über uns</a></li>
                        <li ><a href="./login.php">Login</a></li>                                                            
                    </ul>
                </nav>
            </header>
        </div>
        
        <div class="main-container">
            <div class="main wrapper clearfix">

                <article>
                    <header>
                        <h1>Erstellen Sie Ihren Speiseplan</h1>
                        <p>Wählen Sie den Zeitraum aus und tragen anschließend die Menüs für den jeweiligen Tag ein - fertig!</p>
                        <hr>
                    </header>
					<form method="get">
                    <section>
                        <h3>Speiseplan für Kalenderwoche: </h3>
                        <select name="awkw" onchange="this.form.submit()">
                                <option <?php if (!isset($_GET['awkw'])) { ?> selected <?php } ?> >Bitte Zeitraum wählen</option>
                                <?php for ($i = 0; $i <= $kw_rows - 1; $i++) { ?>
                                    <option value="<?php echo $kw[$i]['KW_ID']; ?>" <?php if ($kw_selected == $kw[$i]['KW_ID']) { ?>
                                                selected<?php
                                $kw_selected_index = $i;
                            } echo ">", $kw[$i]['Start'], " - ", $kw[$i]['Stop'], "</option>";
                        }
                                ?>
                        </select>
                    </section>
					</form>
					<form action="?awkw=<?php echo $kw_selected; ?>" method="post">
                    <section>     
                        <h3>Essen für Montag:</h3>
                        <p>Menü A: <input type="text" name="mo_a" style="width:80%;" value="<?php echo $mo_a; ?>" /></p>
                        <p>Menü B: <input type="text" name="mo_b" style="width:80%;" value="<?php echo $mo_b; ?>" /></p>
                        <p>Menü C: <input type="text" name="mo_c" style="width:80%;" value="<?php echo $mo_c; ?>" /></p>
                    </section>
                    <section>
                        <h3>Essen für Dienstag:</h3>
                        <p>Menü A: <input type="text" name="tu_a" style="width:80%;" value="<?php echo $tu_a; ?>" /></p>
                        <p>Menü B: <input type="text" name="tu_b" style="width:80%;" value="<?php echo $tu_b; ?>" /></p>
                        <p>Menü C: <input type="text" name="tu_c" style="width:80%;" value="<?php echo $tu_c; ?>" /></p>
                    </section>
                    <section>
                        <h3>Essen für Mittwoch:</h3>
                        <p>Menü A: <input type="text" name="we_a" style="width:80%;" value="<?php echo $we_a; ?>" /></p>
                        <p>Menü B: <input type="text" name="we_b" style="width:80%;" value="<?php echo $we_b; ?>" /></p>
                        <p>Menü C: <input type="text" name="we_c" style="width:80%;" value="<?php echo $we_c; ?>" /></p>
                    </section>
                    <section>
                        <h3>Essen für Donnerstag:</h3>
                        <p>Menü A: <input type="text" name="th_a" style="width:80%;" value="<?php echo $th_a; ?>" /></p>
                        <p>Menü B: <input type="text" name="th_b" style="width:80%;" value="<?php echo $th_b; ?>" /></p>
                        <p>Menü C: <input type="text" name="th_c" style="width:80%;" value="<?php echo $th_c; ?>" /></p>
                    </section>
                    <footer>
                        <h3>Essen für Freitag:</h3>
                        <p>Menü A: <input type="text" name="fr_a" style="width:80%;" value="<?php echo $fr_a; ?>" /></p>
                        <p>Menü B: <input type="text" name="fr_b" style="width:80%;" value="<?php echo $fr_b; ?>" /></p>
                        <p>Menü C: <input type="text" name="fr_c" style="width:80%;" value="<?php echo $fr_c; ?>" /></p>
                    </footer>
                </article>
                
                <aside>
                <h3>Zusammenfassung des Speiseplans:</h3>
                <p>Woche vom <?php echo $kw[$kw_selected_index]['Start']; ?> bis <?php echo $kw[$kw_selected_index]['Stop']; ?>:</p>
                <ul style="list-style-type: decimal;">
                    <li> <p>Montag (<?php echo $monday; ?>): <?php echo $mo_m; ?></p> </li>
                    <li> <p>Dienstag (<?php echo $tuesday; ?>): <?php echo $tu_m; ?></p> </li>
                    <li> <p>Mittwoch (<?php echo $wednesday; ?>): <?php echo $we_m; ?></p> </li>
                    <li> <p>Donnerstag (<?php echo $thursday; ?>): <?php echo $th_m; ?></p> </li>
                    <li> <p>Freitag (<?php echo $friday; ?>): <?php echo $fr_m; ?></p> </li> 
                </ul>

                <input style="border: none; min-height: 40px; height: auto; background-color: #7a0000;" type="submit" value="Speiseplan eintragen &#10132;" name="Eintragen"/>
				
				</form>
                </aside>
 
        </div>
        </div>
        <!--<form action="?add=1" method="post">
            Bezeichnung: <input type="name" name="name"><br>
            Art:<br>
            <input type="radio" name="menu" value="A" checked> A<br>
            <input type="radio" name="menu" value="B"> B<br>
            <input type="radio" name="menu" value="C"> C<br>
            Tag: <input type="text" name="date" id="datepicker" placeholder="Hier klicken">
            <br>
            <input type="submit">
        </form>
        -->
        <div class="footer-container">
            <footer class="wrapper">
                <h3>Alle Angaben ohne Gewähr</h3>
                Copyright EatingAdvanced
            </footer>
        </div>
        
    </body>
    <?php
    ?>
</html>