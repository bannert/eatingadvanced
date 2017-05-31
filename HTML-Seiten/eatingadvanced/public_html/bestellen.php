<!DOCTYPE html>
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

//Datum der Wochentage berrechnen
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

//Abrufen der Menüs
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
        $di_a = $menus[0]['Bezeichnung'];
        $di_b = $menus[1]['Bezeichnung'];
        $di_c = $menus[2]['Bezeichnung'];
    } else {
        $di_a = 'Noch kein Menü verfügbar!';
        $di_b = 'Noch kein Menü verfügbar!';
        $di_c = 'Noch kein Menü verfügbar!';
    }

    //Mittwoch
    $sth = $pdo->prepare("SELECT * FROM menu WHERE KW_ID= $kw_selected and Tag='$wednesday' ORDER BY Art");
    $sth->execute();
    $menus = $sth->fetchAll();
    $menus_row = $sth->rowCount();
    if ($menus_row > 0) {
        $mi_a = $menus[0]['Bezeichnung'];
        $mi_b = $menus[1]['Bezeichnung'];
        $mi_c = $menus[2]['Bezeichnung'];
    } else {
        $mi_a = 'Noch kein Menü verfügbar!';
        $mi_b = 'Noch kein Menü verfügbar!';
        $mi_c = 'Noch kein Menü verfügbar!';
    }

    //Donnerstag
    $sth = $pdo->prepare("SELECT * FROM menu WHERE KW_ID= $kw_selected and Tag='$thursday' ORDER BY Art");
    $sth->execute();
    $menus = $sth->fetchAll();
    $menus_row = $sth->rowCount();
    if ($menus_row > 0) {
        $do_a = $menus[0]['Bezeichnung'];
        $do_b = $menus[1]['Bezeichnung'];
        $do_c = $menus[2]['Bezeichnung'];
    } else {
        $do_a = 'Noch kein Menü verfügbar!';
        $do_b = 'Noch kein Menü verfügbar!';
        $do_c = 'Noch kein Menü verfügbar!';
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
?>
<html>
    <head>
        <title>Bestellen</title>
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
    
    
    var height = $(document).height(); //funktioniert noch nicht
    if (height < 5000) {
        
   
    
    
    
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
    
    
    } else {};
    
    
  }); // END function
}); // END document ready
                
                
                
                
                
                
                
                
                
                
                
                
  
        </script>
    </head>
    <body>
        <div class="header-container">
            <header class="wrapper clearfix">
                <h1 class="title"><img src="css/pictures/Profilbild_PSN.png" height="50" alt="EA"/> EatingAdvanced</h1>
                <nav>
                    <ul>
                        <li ><a href="./start.php">Startseite</a></li>
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
                        <h1>Einfach Essen bestellen - So gehts!</h1>
                        <p>Wählen Sie zuerst Ihren Bestellzeitraum und entscheiden Sie unter den Auswahlmöglichkeiten des Essensangebotes - fertig!</p>
                    </header>
                    <form>
                        <section>
                            <h3>Bestellen für Kalenderwoche:</h3>
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
                <section>
                    <h3>Essen für Montag:</h3>
                    <input type="radio" id="Mo_A" name="Montag" value="A" style="margin-left: 10px" />
                    <label for="Mo_A"> <?php echo $mo_a; ?></label><br>

                    <input type="radio" id="Mo_B" name="Montag" value="B" style="margin-left: 10px" />
                    <label for="Mo_B"> <?php echo $mo_b; ?></label><br>

                    <input type="radio" id="Mo_C" name="Montag" value="C" style="margin-left: 10px" />
                    <label for="Mo_C"> <?php echo $mo_c; ?></label><br>

                    <input type="radio" id="Mo_None" name="Montag" value="none" checked="checked" style="margin-left: 10px" />
                    <label for="Mo_None"> Kein Essen</label><br>
                </section>
                <section>
                    <h3>Essen für Dienstag:</h3>
                    <input type="radio" id="Di_A" name="Dienstag" value="A" style="margin-left: 10px" />
                    <label for="Di_A"> <?php echo $di_a; ?></label><br>

                    <input type="radio" id="Di_B" name="Dienstag" value="B" style="margin-left: 10px" />
                    <label for="Di_B"> <?php echo $di_b; ?></label><br>

                    <input type="radio" id="Di_C" name="Dienstag" value="C" style="margin-left: 10px" />
                    <label for="Di_C"> <?php echo $di_c; ?></label><br>

                    <input type="radio" id="Di_None" name="Dienstag" value="none" checked="checked" style="margin-left: 10px" />
                    <label for="Di_None"> Kein Essen</label><br>
                </section>
                <section>
                    <h3>Essen für Mittwoch:</h3>
                    <input type="radio" id="Mi_A" name="Mittwoch" value="A" style="margin-left: 10px" />
                    <label for="Mi_A"> <?php echo $mi_a; ?></label><br>

                    <input type="radio" id="Mi_B" name="Mittwoch" value="B" style="margin-left: 10px" />
                    <label for="Mi_B"> <?php echo $mi_b; ?></label><br>

                    <input type="radio" id="Mi_C" name="Mittwoch" value="C" style="margin-left: 10px" />
                    <label for="Mi_C"> <?php echo $mi_c; ?></label><br>

                    <input type="radio" id="Mi_None" name="Mittwoch" value="none" checked="checked"  style="margin-left: 10px"/>
                    <label for="Mi_None"> Kein Essen</label><br>
                </section>
                <section>
                    <h3>Essen für Donnerstag:</h3>
                    <input type="radio" id="Do_A" name="Donnerstag" value="A" style="margin-left: 10px" />
                    <label for="Do_A"> <?php echo $do_a; ?></label><br>

                    <input type="radio" id="Do_B" name="Donnerstag" value="B" style="margin-left: 10px" />
                    <label for="Do_B"> <?php echo $do_b; ?></label><br>

                    <input type="radio" id="Do_C" name="Donnerstag" value="C" style="margin-left: 10px" />
                    <label for="Do_C"> <?php echo $do_c; ?></label><br>

                    <input type="radio" id="Do_None" name="Donnerstag" value="none" checked="checked" style="margin-left: 10px" />
                    <label for="Do_None"> Kein Essen</label><br>
                </section>
                <footer>
                    <h3>Essen für Freitag:</h3>
                    <input type="radio" id="Fr_A" name="Freitag" value="A" style="margin-left: 10px" />
                    <label for="Fr_A"> <?php echo $fr_a; ?></label><br>

                    <input type="radio" id="Fr_B" name="Freitag" value="B" style="margin-left: 10px" />
                    <label for="Fr_B"> <?php echo $fr_b; ?></label><br>

                    <input type="radio" id="Fr_C" name="Freitag" value="C" style="margin-left: 10px" />
                    <label for="Fr_C"> <?php echo $fr_c; ?></label><br>

                    <input type="radio" id="Fr_None" name="Freitag" value="none" checked="checked" style="margin-left: 10px" />
                    <label for="Fr_None"> Kein Essen</label><br>
                </footer>
            </article>

            <aside>
                <h3>Zusammenfassung Ihrer Bestellung:</h3>
                <p>Woche vom <?php echo $kw[$kw_selected_index]['Start']; ?> bis <?php echo $kw[$kw_selected_index]['Stop']; ?>:</p>
                <ul style="list-style-type: decimal;">
                    <li> <p>Montag (<?php echo $monday; ?>): </p> </li>
                    <li> <p>Dienstag (<?php echo $tuesday; ?>): </p> </li>
                    <li> <p>Mittwoch (<?php echo $wednesday; ?>): </p> </li>
                    <li> <p>Donnerstag (<?php echo $thursday; ?>): </p> </li>
                    <li> <p>Freitag (<?php echo $friday; ?>): </p> </li> 
                </ul>

                <input style="border: none; min-height: 40px; height: auto; background-color: #7a0000;" type="submit" value="Bestellung abschicken &#10132;" name="Bestellen" />
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
