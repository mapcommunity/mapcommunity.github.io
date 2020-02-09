<?
	include("library.php");
	$util = new Util();
	$talks = $util->getInvitedSpeakers();
	if(isset($_GET["ref"])) $ref = $_GET["ref"];
	else $ref = 0;
	$talk = $talks[$ref];
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;">
<link href="style.css" rel="stylesheet" type="text/css">
<title>Abstract - <?=$talk['corso']?></title>
</head>
<body>
<table border="0" cellpadding="2" cellspacing="4">
	<tr>
		<td class="title" align="center">
			<?=$talk['corso']?><br>
			<font size="-1"><?=$talk['nome']?></font>
		</td>
	</tr>
	<tr>
		<td class="body"><p align="justify"><?=$talk['abstract']?></p></td>
	</tr>
</table>
</body>
</html>