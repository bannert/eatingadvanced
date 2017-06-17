<?php 
$pdo = new PDO('mysql:host=localhost;dbname=eatingadvanced', 'root', 'miezum22');
 
function random_string() {
 if(function_exists('random_bytes')) {
 $bytes = random_bytes(16);
 $str = bin2hex($bytes); 
 } else if(function_exists('openssl_random_pseudo_bytes')) {
 $bytes = openssl_random_pseudo_bytes(16);
 $str = bin2hex($bytes); 
 } else if(function_exists('mcrypt_create_iv')) {
 $bytes = mcrypt_create_iv(16, MCRYPT_DEV_URANDOM);
 $str = bin2hex($bytes); 
 } else {
 //Bitte euer_geheim_string durch einen zufälligen String mit >12 Zeichen austauschen
 $str = md5(uniqid('euer_geheimer_string', true));
 } 
 return $str;
}
 
 
$showForm = true;
 
if(isset($_GET['send']) ) {
 if(!isset($_POST['email']) || empty($_POST['email'])) {
 $error = "<b>Bitte eine E-Mail-Adresse eintragen</b>";
 } else {
 $statement = $pdo->prepare("SELECT * FROM benutzer WHERE email = :email");
 $result = $statement->execute(array('email' => $_POST['email']));
 $user = $statement->fetch(); 
 
 if($user === false) {
 $error = "<b>Kein Benutzer gefunden</b>";
 } else {
 //Überprüfe, ob der User schon einen Passwortcode hat oder ob dieser abgelaufen ist 
 $passwortcode = random_string();
 $statement = $pdo->prepare("UPDATE benutzer SET passwortcode = :passwortcode, passwortcode_time = NOW() WHERE B_ID = :userid");
 $result = $statement->execute(array('passwortcode' => sha1($passwortcode), 'userid' => $user['B_ID']));
 
 $empfaenger = $user['email'];
 $betreff = "Neues Passwort für deinen Account auf www.php-einfach.de"; //Ersetzt hier den Domain-Namen
 $from = "From: Tommy-Lee Bannert <gundulflp@gmail.com>"; //Ersetzt hier euren Name und E-Mail-Adresse
 $url_passwortcode = 'www.baketech.de/reset.php?userid='.$user['B_ID'].'&code='.$passwortcode; //Setzt hier eure richtige Domain ein
 $text = 'Hallo '.$user['Vorname'].' '.$user['Nachname'].',
fuer deinen Account auf www.baketech.de wurde nach einem neuen Passwort gefragt. Um ein neues Passwort zu vergeben, rufe innerhalb der naechsten 24 Stunden die folgende Website auf:
'.$url_passwortcode.'
 
Sollte dir dein Passwort wieder eingefallen sein oder hast du dies nicht angefordert, so bitte ignoriere diese E-Mail.
 
Viele Gruesse,
dein baketech.de-Team';
 
 // Um ein neues Passwort zu vergeben, rufe innerhalb der naechsten 24 Stunden die folgende Website auf:  
 //Sollte dir dein Passwort wieder eingefallen sein oder hast du dies nicht angefordert, so bitte ignoriere diese E-Mail. Viele Gruesse, dein baketech.de-Team
 $text = str_replace(' ','+',$text);
 $befehl = "/usr/bin/python3 /var/www/html/scripts/sendemail.py ".$empfaenger." ".escapeshellarg($text);
 $output = exec($befehl);
 echo $output;
 echo "Ein Link um dein Passwort zurückzusetzen wurde an deine E-Mail-Adresse gesendet."; 
 $showForm = false;
 }
 }
}
 
if($showForm):
?>
 
<h1>Passwort vergessen</h1>
Gib hier deine E-Mail-Adresse ein, um ein neues Passwort anzufordern.<br><br>
 
<?php
if(isset($error) && !empty($error)) {
 echo $error;
}
?>
 
<form action="?send=1" method="post">
E-Mail:<br>
<input type="email" name="email" value="<?php echo isset($_POST['email']) ? htmlentities($_POST['email']) : ''; ?>"><br>
<input type="submit" value="Neues Passwort">
</form>
 
<?php
endif; //Endif von if($showForm)
?>