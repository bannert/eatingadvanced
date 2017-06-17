<?php

	//Anmeldung mit PHP
	session_start();
	
	//Ausgabetexte
	$fehler = "Login nicht erfolgreich";
	
	//versuche, eine Verbindung zur Datenbank herzustellen
	try {
		$pdo = new PDO('mysql:host=localhost;dbname=eatingadvanced', 'root', 'miezum22');
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$query = $pdo->prepare('SET NAMES utf8');									
		$query->execute();			
	} catch(PDOException $e) {
		echo "Datenbankfehler: " . $e->getMessage() . "<br>";
		echo "Die Datenbank existiert vermutlich nicht oder die Anmeldedaten sind falsch.";
		exit();
	}
	
	//Variable wird im PHP-Teil ermittelt und legt fest, was auf der Seite geschehen soll
	$aktion = 0;
	//0 = Nutzer nicht eingeloggt, Login anzeigen
	//1 = Fehler beim Login, Login + Fehler anzeigen
	//2 = Login erfolgreich oder Nutzer bereits eingeloggt, weiterleiten	
	
	//Nutzer ruft die Seite auf und ist noch nicht angemeldet
	//userId kann EMail oder SchülerID sein
	if(!isset($_SESSION["userId"]) and !isset($_GET["login"])){
		$aktion = 0;
	}

	//Nutzer ruft die Seite auf und ist angemeldet
	if(isset($_SESSION["userId"])){
		session_destroy();
		$aktion = 0;
	}
	
	//Seite wird vom Script mit Anmeldedaten aufgerufen und Nutzer ist noch nicht angemeldet
	if(isset($_GET["login"]) and !isset($_SESSION["userId"])){
		//Anmeldedaten auslesen
		$userId = $_POST["tbUser"];
		$passwd = $_POST["tbPasswd"];
		
		//SQL-Abfrage starten und SQL-Injection verhindern
		$statement = $pdo->prepare("SELECT * FROM benutzer WHERE email = :mail");
		$result = $statement->execute(array('mail' => $userId));
		$user = $statement->fetch();
		
		//Überprüfung des Passworts wenn die Abfrage ein Ergebnis geliefert hat
		if ($user !== false){
			
			//Wird noch das InitPasswort verwendet?
			if ($user['initPassword'] !== "") {
				//Passwort mit der Datenbank abgleichen
				if ($passwd == $user['initPassword']){
					//Passwort stimmt
					//Passwort verschlüsseln und wieder abspeichern				
					
					$initPassword = $user['initPassword'];
					$initPasswordHash = password_hash($initPassword, PASSWORD_DEFAULT);
					
					$query = $pdo->prepare('UPDATE benutzer SET Password=:pw, initPassword="" WHERE B_ID = :id');
					$query->bindParam(':pw', $initPasswordHash);
					$query->bindParam(':id', $user['B_ID']);
					$query->execute();
					$aktion = 2;
					
				} else {
					//Fehler, Passwort ist falsch
					$aktion = 1;
				}
				
			//Verschlüsseltes Passwort wird verwendet
			} else {
				//Passwort mit der Datenbank abgleichen
				if (password_verify($passwd, $user['Password'])) {
					//Passwort stimmt
					$aktion = 2;
					//Todo: Passwort neu verschlüsseln, wenn veraltet
					
				} else {
					//Fehler, Passwort ist falsch
					$aktion = 1;
				}
			}
			
			if ($aktion == 2) {
				//Login war erfolgreich, Session setzen
				$_SESSION['userId'] = $user['B_ID'];
				//$_SESSION['anzeigename'] = $user['Anzeigename'];
				$_SESSION['rang'] = $user['Rang'];				
			}
			
		} else {
			//Fehler, Nutzer existiert nicht
			$aktion = 1;
		}
	}

?>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Login</title>
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
                        <li ><a href="./account.php">Mein Profil</a></li>
                        <li ><a href="./about.php">Über uns</a></li>
                        <li ><a href="./login.php">Login</a></li>                                                            
                    </ul>
                </nav>
            </header>
        </div>

        <div class="main-container">
            <div class="main wrapper clearfix">

                <center> 
                    <br><br>
					
					<?php
						if ($aktion == 0 or $aktion == 1) {
						//Login fehlgeschlagen, Anmeldeformular anzeigen
					?>	
						<form name="Login" action="?login=1" method="post" style="border-style: solid; border-width: 1px; width: auto; max-width: 500px;">
						
							<header>
								<h1>Anmelden</h1>
								
								<?php //Fehlermeldung ausgeben bei falscher Anmeldung
									if ($aktion == 1) { echo '<p style="color: red">'.$fehler.'</p>'; } 
								?>
								
								<p>Geben Sie Ihre Email-Adresse ein:</p>
							</header>
							
							<input type="text" name="tbUser" value="" style="width:60%; border-color: #e80000; border-style: double"/><br>
							<p>Geben Sie Ihr Passwort ein:</p>
							<input type="password" name="tbPasswd" value="" style="width:60%; border-color: #e80000; border-style: double"/>
							
							<footer>
								<a href="forgot.php" style="font-size: small">Passwort vergessen?</a><br><br>
								
								<input type="submit" value="Anmelden" style="width:60%; height:25px; color: white; background:#e80000; border-style: none"/>  
								
								<hr style="width:90%;">
								<h4>Neu bei EatingAdvanced?</h4>
								<input type="button" value="Erstellen Sie Ihr EatingAdvanced-Konto " name="Register" style="width:60%; height:25px; color: white; background:#e80000; border-style: none" 
									   onClick="self.location.href = './account.php'"> 

								<br><br>
							</footer> 
							
						</form> 
					<?php
						} elseif ($aktion == 2) {
						//Login erfolgreich oder bereits eingeloggt, Weiterleitung zur Bestellung				
					?>
						<p>Login erfolgreich.<br>Falls du nicht automatisch weitergeleitet wirst <a href="<?php echo 'bestellen.php'; ?>">klicke hier</a>.</p>
						<meta http-equiv="refresh" content="0; URL=bestellen.php" />
					<?php
						}
					?>
                    <br><br>
                </center>

            </div> <!-- #main -->
        </div> <!-- #main-container -->

        <div class="footer-container">
            <footer class="wrapper">
                <h3>Alle Angaben ohne Gewähr</h3>
            </footer>
        </div>

    </body>
</html>
