<?php
	session_start();
	
	
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Mein Profil</title>
        <meta charset=UTF-8>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style1.css" type="text/css"/>
        <link rel="stylesheet" href="css/style2.css" type="text/css"/>
        <link rel="stylesheet" href="css/style3.css" type="text/css"/>
		<?php if(isset($_SESSION["userId"])){ echo '<meta http-equiv="refresh" content="0; URL=bestellen.php" />'; } ?>
    </head>
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
                        <h1>Ihr Benutzerprofil</h1>
                        <p>Bitte füllen Sie alle Pflichtfelder (*) aus und überprüfen Sie sie auf Richtigkeit - fertig!</p>
                        <hr>
                    </header>
					
                    <section>
                        <h3>Angaben der Erziehungsberechtigten: </h3>
                        <p style="margin-left: 10px">Benutzername: <input style="float: right; width:70%;" type="text" name="username" /></p>
                        <p style="margin-left: 10px">Vorname: <input style="float: right; width:70%;" type="text" name="vorname" /></p>
                        <p style="margin-left: 10px">Nachname: <input style="float: right; width:70%;" type="text" name="nachname" /></p>
                        <p style="margin-left: 10px">Straße: <input style="float: right; width:70%;" type="text" name="strasse" /> 
						<p style="margin-left: 10px">Hausnummer: <input style="float: right; width:70%;" type="text" name="hausnr" /></p>
                        <p style="margin-left: 10px">Wohnort: <input style="float: right; width:70%;" type="text" name="wohnort" /></p>
						<p style="margin-left: 10px">Passwort: <input style="float: right; width:70%;" type="text" name="e_password" /></p>
                        <p style="margin-left: 10px">Passwort bestätigen: <input style="float: right; width:70%;" type="text" name="e_v_password"/></p>
                            
                        <p><i>(die Angaben werden ausschließlich zum Versand der Rechnung verwendet)</i></p>
                    </section>
					</form>
					<form action="?awkw=<?php echo $kw_selected; ?>" method="post">
                    
                    <!--

					Warum ist das hier?                        
                        
                    <section>     
                        <h3>Essen für Montag:</h3>    
                        <p>Menü A: <input type="text" name="mo_a" style="width:80%;" value="<?php //echo $mo_a; ?>" /></p>
                        <p>Menü B: <input type="text" name="mo_b" style="width:80%;" value="<?php //echo $mo_b; ?>" /></p>
                        <p>Menü C: <input type="text" name="mo_c" style="width:80%;" value="<?php //echo $mo_c; ?>" /></p>
                    </section>
                    <section>
                        <h3>Essen für Dienstag:</h3>
                        <p>Menü A: <input type="text" name="tu_a" style="width:80%;" value="<?php //echo $tu_a; ?>" /></p>
                        <p>Menü B: <input type="text" name="tu_b" style="width:80%;" value="<?php //echo $tu_b; ?>" /></p>
                        <p>Menü C: <input type="text" name="tu_c" style="width:80%;" value="<?php //echo $tu_c; ?>" /></p>
                    </section>
                    <section>
                        <h3>Essen für Mittwoch:</h3>
                        <p>Menü A: <input type="text" name="we_a" style="width:80%;" value="<?php //echo $we_a; ?>" /></p>
                        <p>Menü B: <input type="text" name="we_b" style="width:80%;" value="<?php //echo $we_b; ?>" /></p>
                        <p>Menü C: <input type="text" name="we_c" style="width:80%;" value="<?php //echo $we_c; ?>" /></p>
                    </section>
                    <section>
                        <h3>Essen für Donnerstag:</h3>
                        <p>Menü A: <input type="text" name="th_a" style="width:80%;" value="<?php //echo $th_a; ?>" /></p>
                        <p>Menü B: <input type="text" name="th_b" style="width:80%;" value="<?php //echo $th_b; ?>" /></p>
                        <p>Menü C: <input type="text" name="th_c" style="width:80%;" value="<?php //echo $th_c; ?>" /></p>
                    </section>
                    <footer>
                        <h3>Essen für Freitag:</h3>
                        <p>Menü A: <input type="text" name="fr_a" style="width:80%;" value="<?php //echo $fr_a; ?>" /></p>
                        <p>Menü B: <input type="text" name="fr_b" style="width:80%;" value="<?php //echo $fr_b; ?>" /></p>
                        <p>Menü C: <input type="text" name="fr_c" style="width:80%;" value="<?php //echo $fr_c; ?>" /></p>
                    </footer>
					-->
					
					
                </article>