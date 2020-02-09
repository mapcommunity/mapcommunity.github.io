<?
	include("common/library.php");	
	
	$util = new Util();	

	if(isset($_GET[page])){
		$page = $_GET[page];
	} else {
		$page = 0;
	}
?>
<html>
<head>
<title>MAP - Genova 2006</title>
<meta http-equiv="Content-Type" content="text/html;">
<link href="common/style.css" rel="stylesheet" type="text/css">
<script src="common/functions.js"></script>
</head>
<body bgcolor="#ffffff" topmargin="2">
<table align="center" border="0" cellpadding="0" cellspacing="0" width="780">
  
  <? include("common/header.php"); ?>
     
	<table border="0" width="100%" cellpadding="0" cellspacing="0">
		<tr><td valign="top">
   
			<? include("common/menu.php"); ?>
   
	   </td></tr>
	   <tr><td valign="top" align="right">
   
		   <? include("common/sponsor.php"); ?>
   			<a class="lnone" href="index.php?page=100"><font style="font-size:9px; color:#999999;">credits</font></a>
	   </td></tr>
	   </table>
   
   </td>
   <td rowspan="1" width="2" bgcolor="#FFFFFF"><img src="images/spacer.gif" width="2" height="1" border="0" alt=""></td>
  </tr>
  <tr>
   <td valign="top" colspan="2" width="629" height="21"><img name="data" src="images/index_r4_c1.jpg" width="629" height="21" border="0" alt=""></td>
  </tr>
  <tr>
   <td colspan="2" width="629" height="400" valign="top"  background="images/foto.jpg" style="background-position:bottom; background-repeat:no-repeat;">
   
	<table border="0" width="100%" cellpadding="0" cellspacing="7">
   		<tr>
			<td class="title" height="20">
				<?=$util->getMenuItem($page)?>
			</td>
		</tr>
		<tr>
			<td height="1" bgcolor="#003366"><img src="images/spacer.gif" width="1" height="1" border="0" alt=""></td>
		</tr>
		<tr>
			<td class="body" valign="top">
				
				<!-- Body -->
				<? include($util->getBody($page)); ?>
				
			</td>
		</tr>
   	</table>
   </td>
  </tr>
  
  <? include("common/footer.php"); ?>
  
</table>
</body>
</html>
