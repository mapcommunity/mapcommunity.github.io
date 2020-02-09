<?
	$util = new Util();
	$invited = $util->getInvitedSpeakers();
?>
<p class="title" align="justify">
&curren; Courses and lecturers
</p>
<p align="justify">
<ul style="line-height:2;">
<?
	$i = 0;
	foreach($invited as $speaker){
?>
	<li>
		<a class="lnone" href="#" onClick="window.open('common/pop_abstract.php?ref=<?=$i?>','abstract','height=400,width=500,toolbar=no,scrollbars=yes');return false;"><b><?=$speaker['corso']?></b></a>,
<a class="lnone" href="http://<?=$speaker['link']?>" target="_blank"><?=$speaker['nome']?></a>, <?=$speaker['da']?></li>
<?
		$i++;
	}
?>
</ul>
</p>
<p class="title" align="justify">
&curren; Notes
</p>
<p align="justify">
<ul>
<li>
Proof analysis: slides of
<a target="_blank" class="lbody" href="pdf/Coquand_MAP_06_l1.pdf">lecture 1</a>,
<a target="_blank" class="lbody" href="pdf/Coquand_MAP_06_l2.pdf">lecture 2</a>,
<a target="_blank" class="lbody" href="pdf/Coquand_MAP_06.pdf">all lectures</a>,
</li>
<li>
Computer algebra: slides of
<a target="_blank" class="lbody" href="pdf/Kaltofen_MAP_06_p1.pdf">part 1</a>,
<a target="_blank" class="lbody" href="pdf/Kaltofen_MAP_06_p2.pdf">part 2</a>,
<a target="_blank" class="lbody" href="pdf/Kaltofen_MAP_06_p3.pdf">part 3</a>,
<a target="_blank" class="lbody" href="pdf/Kaltofen_MAP_06_p4.pdf">part 4</a>
<a target="_blank" class="lbody" href="pdf/Kaltofen_MAP_06_p5.pdf">part 5</a>,
</li>
<li>
Constructive commutative algebra: slides of
<a target="_blank" class="lbody" href="pdf/Lombardi_MAP_06_l1.pdf">lecture 1</a>,
<a target="_blank" class="lbody" href="pdf/Lombardi_MAP_06_l2.pdf">lecture 2</a>,
<a target="_blank" class="lbody" href="pdf/Lombardi_MAP_06_l4.pdf">lecture 4</a>
</li>
<li>
Constructive analysis:
<a target="_blank" class="lbody" href="pdf/Schwichtenberg_MAP_06.pdf">slides</a> of all lectures
</li>
<li>
Constructive homological algebra:
<a target="_blank" class="lbody" href="pdf/Sergeraert_MAP_06.pdf">notes</a> of all lectures
</li>
<li>
History of real algebraic geometry: notes of all lectures in
<a target="_blank" class="lbody" href="pdf/Roy_MAP_06.pdf">pdf form</a> 
or
<a target="_blank" class="lbody" href="pdf/Roy_MAP_06_texmacs.tm">TeXmacs form</a>
</li>
</p>