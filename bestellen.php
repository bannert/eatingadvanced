<!DOCTYPE html>
<?php
$pdo = new PDO('mysql:host=localhost;dbname=eatingadvanced', 'root', 'miezum22');
$date = date('d-m-Y',time());
$ddate = date('Y-m-d',time());
$datew = new DateTime($ddate);
$week = $datew->format("W");

//Abrufen der Kalenderwochen
$sth = $pdo->prepare("SELECT * FROM kalenderwoche WHERE KW_ID>= $week");
$sth->execute();
$kw_rows = $sth->rowCount();
$kw = $sth->fetchAll();

//Abrufen der Menüs
if (isset($kw_selected)){
$date = date('d-m-Y',time());
$ddate = date('Y-m-d',time());
$datew = new DateTime($ddate);
$week = $datew->format("W");
$sth = $pdo->prepare("SELECT * FROM menu WHERE KW_ID= $kw_selected ORDER BY Tag");
$sth->execute();
$menus = $sth->fetchAll();
}

$kw_selected = $_GET['awkw'];

$monday = new DateTime();
$tuesday = new DateTime();
$wednesday = new DateTime();
$thursday = new DateTime();
$friday = new DateTime();

$year=2017;
?>
<html>
    <head>
        <title>Bestellen</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style1.css" type="text/css"/>
        <link rel="stylesheet" href="css/style2.css" type="text/css"/>
        <link rel="stylesheet" href="css/style3.css" type="text/css"/>
    </head>
    <body>
        <div class="header-container">
            <header class="wrapper clearfix">
                <h1 class="title"><img src="css/pictures/Profilbild_PSN.png" height="50" alt="EA"/> EatingAdvanced</h1>
                <nav>
                    <ul>
                        <li ><a href="http://www.evos-schoeneck.de/">Link 1</a></li>
                        <li ><a href="">Über uns (oder Link 2)</a></li>
                        <li ><a href="">Log In (Link 3)</a></li>                                                            
                    </ul>
                </nav>
            </header>
        </div>
        
        <div class="main-container">
            <div class="main wrapper clearfix">

                <article>
                    <header>
                        <h1>Einfach Essen bestellen - So gehts!</h1>
                        <p>Wählen Sie zuerst Ihren Bestellzeitraum und entscheiden Sie unter den Auswahlmöglichkeiten des Essensangebotes - fertig!</p>
                    </header>
					<form>
                    <section>
                        <h3>Bestellen für Kalenderwoche:</h3>
						<select name="awkw" onchange="this.form.submit()">
						<?php 
						for($i=0; $i<=$kw_rows-1; $i++){ ?>
						<option value="<?php echo $kw[$i]['KW_ID']; ?>" <?php if ($kw_selected == $kw[$i]['KW_ID']){?>
						selected<?php $kw_selected_index=$i;} echo ">",$kw[$i]['Start']," - ",$kw[$i]['Stop'],"</option>";
						}
							?>
                        </select>
                    </section>
					</form>
                    <section>
                        <h3>Essen für Montag:</h3>
                        <input type="radio" id="Mo_A" name="Montag" value="A" />
                        <label for="Mo_A"> (Essen A)</label><br>
                        
                        <input type="radio" id="Mo_B" name="Montag" value="B" />
                        <label for="Mo_B"> (Essen B)</label><br>
                        
                        <input type="radio" id="Mo_C" name="Montag" value="C" />
                        <label for="Mo_C"> (Essen C)</label><br>
                        
                        <input type="radio" id="Mo_None" name="Montag" value="none" checked="checked" />
                        <label for="Mo_None"> Kein Essen</label><br>
                    </section>
                    <section>
                        <h3>Essen für Dienstag:</h3>
                        <input type="radio" id="Di_A" name="Dienstag" value="A" />
                        <label for="Di_A"> (Essen A)</label><br>
                        
                        <input type="radio" id="Di_B" name="Dienstag" value="B" />
                        <label for="Di_B"> (Essen B)</label><br>
                        
                        <input type="radio" id="Di_C" name="Dienstag" value="C" />
                        <label for="Di_C"> (Essen C)</label><br>
                        
                        <input type="radio" id="Di_None" name="Dienstag" value="none" checked="checked" />
                        <label for="Di_None"> Kein Essen</label><br>
                    </section>
                    <section>
                        <h3>Essen für Mittwoch:</h3>
                        <input type="radio" id="Mi_A" name="Mittwoch" value="A" />
                        <label for="Mi_A"> (Essen A)</label><br>
                        
                        <input type="radio" id="Mi_B" name="Mittwoch" value="B" />
                        <label for="Mi_B"> (Essen B)</label><br>
                        
                        <input type="radio" id="Mi_C" name="Mittwoch" value="C" />
                        <label for="Mi_C"> (Essen C)</label><br>
                        
                        <input type="radio" id="Mi_None" name="Mittwoch" value="none" checked="checked" />
                        <label for="Mi_None"> Kein Essen</label><br>
                    </section>
                    <section>
                        <h3>Essen für Donnerstag:</h3>
                        <input type="radio" id="Do_A" name="Donnerstag" value="A" />
                        <label for="Do_A"> (Essen A)</label><br>
                        
                        <input type="radio" id="Do_B" name="Donnerstag" value="B" />
                        <label for="Do_B"> (Essen B)</label><br>
                        
                        <input type="radio" id="Do_C" name="Donnerstag" value="C" />
                        <label for="Do_C"> (Essen C)</label><br>
                        
                        <input type="radio" id="Do_None" name="Donnerstag" value="none" checked="checked" />
                        <label for="Do_None"> Kein Essen</label><br>
                    </section>
                    <footer>
                        <h3>Essen für Freitag:</h3>
                        <input type="radio" id="Fr_A" name="Freitag" value="A" />
                        <label for="Fr_A"> (Essen A)</label><br>
                        
                        <input type="radio" id="Fr_B" name="Freitag" value="B" />
                        <label for="Fr_B"> (Essen A)</label><br>
                        
                        <input type="radio" id="Fr_C" name="Freitag" value="C" />
                        <label for="Fr_C"> (Essen A)</label><br>
                        
                        <input type="radio" id="Fr_None" name="Freitag" value="none" checked="checked" />
                        <label for="Fr_None"> (Essen A)</label><br>
                    </footer>
                </article>

                <aside>
                    <h3>Zusammenfassung Ihrer Bestellung:</h3>
                    <p>Woche vom <?php echo $kw[$kw_selected_index]['Start']; ?> bis <?php echo $kw[$kw_selected_index]['Stop']; ?>:</p>
                        <ul style="list-style-type: decimal;">
                            <li> <p>Montag (<?php 		$monday->setISODate($year,$kw_selected,1);
														$monday = $monday->format('d.m.Y');
														echo $monday; ?>): </p> </li>
                            <li> <p>Dienstag (<?php 	$tuesday->setISODate($year,$kw_selected,2);
														$tuesday = $tuesday->format('d.m.Y');
														echo $tuesday; ?>): </p> </li>
                            <li> <p>Mittwoch (<?php 	$wednesday->setISODate($year,$kw_selected,3);
														$wednesday = $wednesday->format('d.m.Y');
														echo $wednesday; ?>): </p> </li>
                            <li> <p>Donnerstag (<?php 	$thursday->setISODate($year,$kw_selected,4);
														$thursday = $thursday->format('d.m.Y');
														echo $thursday; ?>): </p> </li>
                            <li> <p>Freitag (<?php 		$friday->setISODate($year,$kw_selected,5);
														$friday = $friday->format('d.m.Y');
														echo $friday; ?>): </p> </li> 
                        </ul>
                    
                    <input style="border: none; min-height: 40px; height: auto; background-color: #7a0000;" type="submit" value="Bestellung abschicken &rAarr;" name="Bestellen" />
                </aside>
            </div>
        </div>
        
        <div class="footer-container">
            <footer class="wrapper">
                <h3>Alle Angaben ohne Gewähr</h3>
            </footer>
        </div>
        
    </body>
</html>
