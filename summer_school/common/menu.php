<!-- Menu -->
<table class="menu" border="0" width="100%" cellpadding="0" cellspacing="0">
<?
	if(isset($_GET[page])){
		$page = $_GET[page];
	} else {
		$page = 0;
	}
	
	$util = new Util();
	$items = $util->getMenu();
	$i = 0;
	foreach($items as $elem){ 
?>
	<tr height="16">
		<td align="center" bgcolor="<?=($page==$i)?"#003366":"#57789A"?>">
			<a class="lmenu" href="index.php?page=<?=$i?>">
				<?=$elem?>
			</a>
		</td>
	</tr>
	<tr height="2">
		<td><img src="images/spacer.gif" width="1" height="2" border="0" alt=""></td>
	</tr>
<?
		$i++;
	}
?>
</table>