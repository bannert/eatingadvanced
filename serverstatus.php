<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <title>Serverstatus</title>
    <meta http-equiv="content-type" content="text/html;charset=iso-8859-1" />

    <style type="text/css"><!--



/* CSS-Sytle (Aussehen der Statusanzeige) */
/* Man kann die vorgebene Struktur beliebig bearbeiten */


        .divhover {
                    padding-top:2px;
                    padding-bottom:2px;
                    height:15px;
                    width:100%;
                    color: #555;
                    font-family: "Ubuntu",sans-serif;
                }
                .divhover div{
                    font-family: "Ubuntu",sans-serif;
                    float: left;
                    width: 200px;
                }
                .divhover td{
                    font-family: "Ubuntu",sans-serif;
                    padding-top:2px;
                    padding-bottom:2px;
                }


                .divhover:hover {
                    background: #f4f4f4;
                    color: #222;
                }

                #divbody {
                    width: 100%;
                    border: 1px dotted #AAAAAA;
                }

                span.partingline {
                    font-family: "Ubuntu",sans-serif;
                    color: #fffff;
                    background: #1e90ff !important;
                    font-size: 13px;
                    padding: 3px;
                    padding-bottom: 4px;
                    border-top-right-radius: 5px;
                }

                div.partingline{
                    margin: 10px 0px 5px 0px;
                }

                hr{
                	width: 95%
                	height: 5px;
                	margin: 2 auto;
                	background: #1e90ff !important;
                }

                #timeleft{}
                #timeright{}
                #mapleft{}
                #mapright{}
                #servernameleft{}
                #servernameright{
                    width: 500px;
                }
                #serverstatleft{}
                #serverstatright{}
                #gamenameleft{}
                #gamenameright{}
                #modnameleft{}
                #modnameright{}
                #modusleft{}
                #modusright{}
                #playersleft{}
                #playersright{}

                /* Playerausgabe Basic (nicht Ark / Mc) */
                #playernamebasic{
                    font-weight: bold
                }
                #onlinebasic{
                    font-weight: bold
                }
                #playerlistbasic{}
                #frags{}

                /* Only for Minecraft */
                 #serverstatfaild{}
                #playerlistmc {}

                /* Only for Ark */
                #gamendescleft{}
                #gamendescright{}
                #passprotleft{}
                #passprotright{}
                #secureleft{}
                #secureright{}
                #playernameark{
                    font-weight: bold
                }
                #onlineark{
                    font-weight: bold
                }
                #playerlistark{}
                #timestamp{}

        --></style>
</head>
<body>


<!-- Begin Content -->
<?php
$ip   = '85.14.201.91';   // IP deines Servers
$port = '27015'; // Port des Servers  (muss angegeben werden)

// Paar Prüfungen und Generierung der URL zur Abfrage der Daten
$aport = (int)$port;
if ($aport) $aport = 'port='.$aport.'&';
else unset($aport);

// Daten holen
echo utf8_encode(file_get_contents('http://my.ngz.net/'.'getserverdata.php?'.$aport.'ip='.$ip));


?>
<!-- End of Content -->


</body>
</html>