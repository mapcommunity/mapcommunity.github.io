<?php

//include_once 'DB.php';

class Util{
	
	var $dsn;
	
	function Util(){
		//$this->dsn = "mysql://romagnoli:rumenta@localhost/mfps_db";
		$this->dsn = "mysql://root:rumenta@localhost/mfsp_db";
	}
	
	function logger($msg){
		$messaggio = ">> [".date("r")."] - ".$msg."\n";
		$fname = "logs/mfps_".date("dmy").".log";
		$fp = fopen($fname,"a");
		if(!$fp){return false;}
		if(fwrite($fp,$messaggio)==-1){return false;}
		fclose($fp);
		mail("2001s032@educ.disi.unige.it","Errore loggato su MFPS",$messaggio);
		return true;
	}
	
	function getMenu(){
		$items = file("common/menu.txt");
		return $items;
	}

	function getMenuItem($i){
		if($i==100) return "Website credits";
		$items = file("common/menu.txt");
		return $items[$i];
	}

	function getBody($i){
		$path = "pages/";
		switch($i){
			case 0: return $path."welcome.php";
			case 1: return $path."committee.php";
			case 2: return $path."program.php";
			case 3: return $path."schedule.php";
			case 4: return $path."travel.php";
			case 5: return $path."accomodation.php";
			case 6: return $path."local_info.php";
			case 7: return $path."organizers.php";
			case 8: return $path."financial.php";
			case 100: return "common/credits.php";
		}
	}
	
	function getInvitedSpeakers(){	
		
		$speakers = array(
				array('nome'=>'Thierry Coquand','da'=>'Goteborg','link'=>'www.cs.chalmers.se/~coquand/','corso'=>'Proof analysis',
'abstract'=>'The purpose of this course is to survey some recent works in
constructive mathematics from the point of view of mathematical
logic.
We illustrate the relevance of simple logical considerations in
the development of constructive mathematics.
We present equational, first-order and coherent logic, with
their completeness theorems and give examples.<br>
References<br>
(1) A logical approach to abstract algebra<br>
http://hlombardi.free.fr/publis/AlgebraLogicCoqLom.pdf<br>
(2) Dynamical method in algebra: Effective Nullstellens&auml;tze<br>
http://hlombardi.free.fr/publis/NullstellensatzDynamic.pdf'),
				array('nome'=>'Erich Kaltofen','da'=>'NCSU','link'=>'www4.ncsu.edu/~kaltofen/','corso'=>'Computer algebra','abstract'=>'&nbsp;'),
				array('nome'=>'Henri Lombardi','da'=>'Besancon','link'=>'hlombardi.free.fr/','corso'=>'Constructive commutative algebra',
'abstract'=>'Lesson 1: Noetherianity versus coherence.<br>
Finitely generated abelian groups, finitely generated modules
over a PID. (structure theorem, classical and constructive,
constructive noetheriannity)<br>
http://hlombardi.free.fr/publis/LectSlides1.pdf<br>
Lesson 2: (elimination of primes)<br>
Krull dimension (classical and constructive, constructive
treatment of some &quot;great&quot; theorems)<br>
http://hlombardi.free.fr/publis/LectSlides2.pdf<br>
Lesson 3: (elimination of minimal primes)<br>
Seminormal rings. How to eliminate a minimal prime in a
classical proof in order to get an algorithmic proof.<br>
http://hlombardi.free.fr/publis/LectSlides3.pdf<br>
Lesson 4: (elimination of prime cones)<br>
Ordered fields. Real closure. Positivstellens&auml;tze.<br>
http://hlombardi.free.fr/publis/LectSlides4.pdf'),
				array('nome'=>'Marie-Francoise Roy','da'=>'Rennes','link'=>'perso.univ-rennes1.fr/marie-francoise.roy/','corso'=>'History of algorithmic real algebra ',
'abstract'=>'1) Real root counting (Tarski, Hermite, Sylvester)<br>
2) Quantifier elimination (Tarski, Seidenberg, Collins)<br>
3) Sums of squares (Artin, Stengle)'),
				array('nome'=>'Francis Sergeraert','da'=>'Grenoble','link'=>'www-fourier.ujf-grenoble.fr/~sergerar/','corso'=>'Constructive homological algebra',
'abstract'=>'Standard homological algebra is not constructive, and this is
frequently the source of serious problems when algorithms are
looked for. In particular the usual exact and spectral sequences
of homological algebra frequently are not sufficient to obtain
some unknown homology or homotopy group. We will explain it is
not difficult to fill in this gap, the main tools being on one
hand, from a mathematical point of view, the so-called
Homological Perturbation Lemma, and on the other hand, from a
computational point of view, Functional Programming.<br>
We will illustrate this area of constructive mathematics by
applications in two domains:<br>
a) Commutative Algebra frequently meets homological objects, in
particular when resolutions are involved (syzygies).<br>
Constructive Homological Algebra produces new methods to process
old problems such as homology of Koszul complexes, resolutions,
minimal resolutions. The solutions so obtained are constructive
and therefore more complete thant the usual ones, an important
point for their concrete use.<br>
b) Algebraic Topology is the historical origin of Homological
Algebra. The usual exact and spectral sequences of Algebraic
Topology can be easily transformed into new effective versions,
giving algorithms computing for example unknown homology and
homotopy groups. In particular the effective version of the
Eilenberg-Moore spectral sequence gives a very simple solution
for the old Adams\' problem: what algorithm could compute the
homology groups of iterated loop spaces?<br>
Machine programs and machine demonstrations will also
concretely illustrate the theoretical results so obtained.<br>
Plan:<br>
1. Elements of Homological Algebra. Ordinary Homological Algebra
is not constructive.<br>
2. Notion of (constructive) &quot;Solution of the Homological Problem
for a chain-complex&quot;. Reductions between chain-complexes.
Homological Perturbation Lemma. Particular case of twisted sums
(cone construction).<br>
3. Applications in Commutative Algebra: Effective Homology of
Koszul complexes. Equivalence between *effective* homology of
Koszul complexes and resolutions. A simple solution for a
minimal resolution.<br>
4. Twisted products in Algebraic Topology. The effective version
of the Serre spectral sequence. Application: a theoretical and
concrete algorithm computing homotopy groups.<br>
5. Twisted divisions in Algebraic Topology. The effective
version of the Eilenberg-Moore spectral sequence. Application: a
theoretical and concrete algorithm solving Adams\' problem for
iterated loop spaces.<br>
6. Effective Algebraic Topology and Postnikov invariants.
Conclusion: the pretended Postnikov invariants in fact are
not... invariant!'),
				array('nome'=>'Helmut Schwichtenberg','da'=>'Munich','link'=>'www.mathematik.uni-muenchen.de/personen/schwichtenberg_en.php','corso'=>'Constructive analysis',
'abstract'=>'1. Logic<br>
2. Computable Functionals<br>
3. Logic for Computable Functionals; Proof Interpretations<br>
4. Real Numbers<br>
5. Continuous Functions<br>
6. Program Extraction in Constructive Analysis')
			);
		
		return $speakers;
	}
		
	function getMaps(){	
		
		$directory = 'maps/';
		$maps = array(
				array('testo'=>'Complete_Map','thumb'=>$directory.'completa_thu.jpg','image'=>$directory.'completa.jpg','width'=>'933','height'=>'307'),
				array('testo'=>'East_Map','thumb'=>$directory.'aeroportoprincipe_thu.jpg','image'=>$directory.'aeroportoprincipe.jpg','width'=>'889','height'=>'316'),
				array('testo'=>'Center_Map','thumb'=>$directory.'principebrignole_thu.jpg','image'=>$directory.'principebrignole.jpg','width'=>'872','height'=>'521'),
				array('testo'=>'West_Map','thumb'=>$directory.'brignolenervi_thu.jpg','image'=>$directory.'brignolenervi.jpg','width'=>'931','height'=>'386'),
				array('testo'=>'DISI_Map','thumb'=>$directory.'disi_thu.jpg','image'=>$directory.'disi.jpg','width'=>'578','height'=>'627')
			);
		
		return $maps;
	}
	
	function getHotels(){	
		
		$hotels = array(
					array(
						'hotel'=>'<b>Astor</b> **** (Nervi)<br/> via delle Palme 16, 16167 Genova<br/> tel +39010329011, fax +390103728486<br/> <a class="lbody" target="_blank" href="http://www.astorhotel.it">www.astorhotel.it</a>',
						'single'=>'80&euro; - 105&euro;<br/>as available',
						'double'=>'100&euro; - 130&euro;<br/>as available'
					),
					array(
						'hotel'=>'<b>Esperia</b> *** (Nervi)<br/> via Val Cimson 1, 16167 Genova<br/> tel +39010321777, fax +390103291006<br/> <a class="lbody" target="_blank" href="http://www.hotelesperia.it">www.hotelesperia.it</a>',
						'single'=>'90&euro;',
						'double'=>'110&euro;'
					),
					array(
						'hotel'=>'<b>Tirreno</b> *** (Albaro)<br/> Via dei Mille 17, 16147 Genova<br/> tel +39010389342, fax +39010386342<br/> <a class="lbody" target="_blank" href="http://www.hoteltirrenogenova.it">www.hoteltirrenogenova.it</a>',
						'single'=>'90&euro; - 110&euro;<br/>as available',
						'double'=>'130&euro;'
					),
					array(
						'hotel'=>'<b>la Capannina</b> *** (Albaro)<br/> via T. Speri 7, 16146 Genova<br/> tel +39010317131, fax +390103622692<br/> <a class="lbody" target="_blank" href="http://www.lacapanninagenova.it">www.lacapanninagenova.it</a>',
						'single'=>'75&euro;',
						'double'=>'95&euro;'
					),
					array(
						'hotel'=>'<b>Hermitage</b> *** (Albaro)<br/> via A. Liri 29, 16145 Genova<br/> tel +39010311605, fax +39010311605<br/> <a class="lbody" target="_blank" href="http://www.hermitagehotel.ge.it">www.hermitagehotel.ge.it</a>',
						'single'=>'115&euro;',
						'double'=>'135&euro;'
					),
					array(
						'hotel'=>'<b>Astoria</b> *** (Centre East)<br/> piazza Brignole 4, 16122 Genova<br/> tel +39010873316, fax +390108317326<br/> <a class="lbody" target="_blank" href="http://www.hotelastoriagenova.it">www.hotelastoriagenova.it</a>',
						'single'=>'-',
						'double'=>'100&euro;'
					),
					array(
						'hotel'=>'<b>Bellevue</b> *** (Centre West)<br/> salita della Provvidenza 1, 16134 Genova<br/> tel +390102462400, fax +39010265932<br/> <a class="lbody" target="_blank" href="http://www.bellevue.genova.it">www.bellevue.genova.it</a>',
						'single'=>'80&euro;',
						'double'=>'90&euro;'
					),
				);
		
		return $hotels;
	}
	
	function pre_register($dati){
		
		$query = "INSERT INTO preregistration SET ";
		$query .= "name='".$dati["name"]."',";
		$query .= "surname='".$dati["surname"]."',";
		$query .= "institution='".$dati["instituition"]."',";
		$query .= "mail='".$dati["mail"]."'";
		
		$idb = mysql_connect("localhost","wm_mfps","rumenta");
		if(!$idb){
			if(!($this->logger("Errore in connessione: ".mysql_error()))) die("I can't log");
			return false;
		}
		mysql_query($query,$idb);
		mysql_close();
		return true;
		/*$db =& DB::connect($this->dsn);
		if (PEAR::isError($db)){
			$this->logger("Errore in connessione: ".$db->getMessage());
			return false;
		}
		$res =& $db->query($query);
		if (PEAR::isError($res)){
			$this->logger("Errore in query: ".$res->getMessage());
			$db->disconnect();
			return false;
		}
		$db->disconnect();
		return true;*/
	}

}	
?>
		