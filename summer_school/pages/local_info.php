<?
	$util = new Util();
	$maps = $util->getMaps();
?>
<p class="title" align="justify">
&curren; Weather Forecasts
</p>
It is expected to be mostly sunny during the week, with temperatures between 19C and 24C. It may get rather humid in the first days of the week.<br>
</p>
<p class="title" align="justify">
&curren; Local Transportation
</p>
<p align="justify">
<b>Travelling from the airport to a hotel</b><br/>
<br/>
The line 100 Volabus is the fast bus between the airport &quot;C. Colombo&quot; and the centre. The ticket costs 3.00&euro;,
but one can ride also with a standard weekly pass (see below).<br/>
From the airport, the bus reaches Stazione Piazza Principe, Piazza De Ferrari, and Piazza Verdi.<br/><br/>
&raquo; Get off in Piazza De Ferrari, walk to Piazza Dante, climb the stairs to &quot;Colombo's birthplace&quot;, walk under Porta Soprana and follow via Ravecca to get to the accomodation at &quot;<b>Casa Paganini</b>&quot;.<br/><br/>
&raquo; Get off in Piazza De Ferrari, walk to Via Dante and take bus 42 to Boccadasse (ask the driver for the stop)
for Hotel La Capannina.<br/><br/>
&raquo; Get off in Piazza De Ferrari, walk to Piazza Dante and take bus 15 all the way to the terminus stop in Nervi
for hotels in that area.<br/><br/>
<br/>
<b>How to reach DIMA/DISI</b><br/>
<br/>
<b>(a)</b> from the centre, Piazza De Ferrari<br/><br/>
Take bus 44 from Via Dante. After some 15 minutes, the route climbs a hill and the bus rides a bus lane in the middle of the road. You can see railroad tracks on the left. When the tracks disappear, the bus leaves the bus lane, and stops on a road on the right which climbs more steaply (Via San Martino). Get off at the next stop (the <i>second</i> stop on Via San Martino).<br/>
Walk back some 30 metres, and turn left up along Via Papigliano, to reach Via Padre Semeria, a small lane enclosed by high walls. You see a small gate in front of you: go through it and walk the metal bridge.
When you are to take the steps down, you see the main entrance to the Departments of Computer Science and Mathematics.<br/>

<br/>
Take bus 15 from Piazza Dante. After some 15 minutes, the route climbs a hill with sharp bends.
After reaching the top of the hill (Via Albaro), you will see a park on the right, and the bus will get into a large square
(Piazza Leonardo). The stop after the square is Via Boselli.<br/>
You may see signs for DIMA/DISI: at the traffic light after the bus stop, take Via Guerrazzi on the left, going upward,
turn left in Via Pisa, then right on Via Flora which continues into Via Dodecaneso. At the very end of that road, there is
the entrance to the University Grounds. Enter the grounds: DIMA/DISI is the last department along the road.<br/>
<br/>
<b>(b)</b> from the railway station Brignole<br/><br/>
Take bus 17 or 17/ in Piazza G. Verdi (direction San Martino, eastward).<br/>
Get off the bus at the first stop on Corso Europa, near &quot;Ospedale San Martino&quot;. The bus stop is the first after theend of Corso Gastaldi.
It is easy to tell when you are on Corso Gastaldi: it is a large double-lane road which climbs up, leaving railroad tracks on its left.
It ends just after the tracks disappear. At that point you may ring the bell to request the bus stops. On the right you may notice the
following big signs in succession: &quot;COOP&quot; in red, &quot;OPEL&quot; in yellow, &quot;Blockbuster&quot; in blue - just in front
of the bus stop.
Walk back along the road for some 50 meters, then take on your left the steps of Salita Papigliano. Cross the first road you meet
(Via San Martino).
Climb up along Via Papigliano, to reach Via Padre Semeria, a small lane enclosed by high walls. You see a small gate in front of you:
go through it and walk the metal bridge.
When you are to take the steps down, you see the main entrance to the Departments of Computer Science and Mathematics.<br/>
<br/>
<b>(c)</b> from Nervi<br/><br/>
Take bus 15 from the terminus stop next to the Post Office in Via Franchini, after the crossroad at the top of Viale delle Palme.
The ride along the seaside takes some 15-20 minutes, then the bus route moves away from the sea and starts climbing. At the bus
stop at the top of the hill, you'll see a very ugly, concrete grey building on the left. Then the bus rides a narrow two-way road
(Via Pisa), then on to a wide four lane street (Via Boselli). Get off the bus at the stop in Via Boselli (in front of a modern church).<br/>
You may see signs for DIMA/DISI: at the traffic light after the bus stop, take Via Guerrazzi on the right, going upward, turn left in Via Pisa,
then right on Via Flora which continues into Via Dodecaneso. At the very end of that road, there is the entrance to the University
Grounds. Enter the grounds: DIMA/DISI is the last department along the road.<br/>
<br/>
<b>Bus tickets</b><br/>
<br/>
Tickets can be bought at a bus company kiosk (there is one in piazza Verdi, in front of station Brignole), at any newsagent's
or at any tobacconist's (it shows &quot;a white T against a black background&quot; sign). You can buy tickets on a bus only after 8 p.m.
Bus tickets are valid also on the underground and on railway trains within the town area (Voltri to Nervi).<br/>
<br/>
The possible choices are<br/>
<ol>
<li>single fare ticket: it costs 1.00&euro;, it is valid for 90 minutes.
It has to be validated at a small yellow/orange machine at the beginning of the trip:
	<ul>
	<li>on the bus on the side labeled &quot;Convalida sui mezzi AMT&quot;</li>
	<li>at the train station on the side labeled &quot;Convalida per viaggio FS&quot;</li>
	</ul>
</li>
<li>
carnet of ten tickets: it costs 9.50&euro; and holds ten single fare tickets. The carnet stub must be shown together with the ticket.
</li>
<li>
weekly pass: it costs 10.00&euro;. It must be validated at the beginning of the first trip, and mark with the user's name and the date
of the week's Monday (for MAP it is 28/8/2006).
</li>
</ol>
</p>

<p class="title" align="justify">
&curren; Map of the Town
</p>
<p align="justify">
Click on the small maps to enlarge.<br/>
To view the printable version click <a class="lbody" href="maps/GenovaMaps.pdf" target="_blank">here</a>. (pdf)<br/>
<table border="0" align="center" class="body" cellpadding="2" cellspacing="0">
<? foreach($maps as $rows){?>
	<tr>
		<td align="center">-&nbsp;<?=$rows['testo']?>&nbsp;-</td>
	</tr>
	<tr>
		<td align="center">
			<a class="lbody" href="#" onClick="window.open('<?=$rows['image']?>','Map','height=<?=$rows['height']?>,width=<?=$rows['width']?>,toolbar=no,scrollbars=yes');return false;">
				<img src="<?=$rows['thumb']?>" alt="" border="1"/>
			</a>
		</td>
	</tr>
<? } ?>
</table>
</p>

<p class="title" align="justify">
&curren; Restaurants
</p>
<p align="justify">
Street numbers in Genoa come in two colours: black usually for houses, and red for shops.<br>
<i><b>Of course</b></i>, they grow separately along a street. Red number &quot;14&quot; is shown as &quot;14r&quot;.<br>

<dl>
<dt><b>Zona Nervi</b>
<dd>
<ul>
<li>Ristorante Pizzeria &quot;La Spiga&quot;<br>
Via Marco Sala 14r, tel 0103726394<br>
Open in the evenings, lunches on Saturday and Sunday. Local cuisine and fish</li>

<li>Ristorante &quot;5 maggio&quot;<br>
Via 5 maggio 26, tel 0103776969<br>
Ristorante pizzeria, open every day.
Advance booking is strongly advised. Bus 15 from Nervi stops exactly in front of the restaurant. Expensive</li>

<li>Ristorante &quot;Medusa&quot;<br>
Passeggiata Anita Garibaldi 27A<br>
Pizza and fish. Reasonable price, considering the view. Prices from 20&euro;</li>
</ul>
<dt>
<b>Zona Centro</b>
<dd>

<ul>
<li>Pizzeria &quot;La sosta degli artisti&quot;<br>
Piazza San Donato 55r, tel. 0102466149<br>
Open every day 12-15 and 
19-1. Advance booking is advised. Prices below 20&euro;</li>

<li>Osteria &quot;La Cabotina&quot;<br>
Via San Sebastiano 34r, tel 010590373<br>
Open in the evenings, Tuesday-Saturday. Advance booking is advised. Prices below 20&euro;</li>

<li>Trattoria da Ugo<br>
Via Dei Giustiniani 86r, tel 0102469302<br>
Open every day except Monday. Excellent local cuisine at prices below 20&euro;. Advance booking is advised</li>

<li>Antica Osteria di Vico Palla<br>
Vicolo Palla 15r (at Porto Antico), tel. 0102466575<br>
Open every day expect Monday. Excellent local cuisine at prices below 30&euro;</li>

<li>Antica Osteria della Foce<br>
Via Ruspoli 72/74r (take bus 20 to terminus &quot;Foce&quot;), tel 0105533155<br>
Open 12-15, 19.30-22.30. Closed on Saturday for lunch, and on Sunday. Advance booking is necessary</li>

<li>Ristorante &quot;Le rune&quot;<br>
Via Domoculta 14r (uphill from via XXV Aprile), tel 010594951<br>
Open for lunch until 14.30, for dinner until 22.30. Closed on Saturday and on Sunday for lunch.
Prices above 20&euro;</li>

<li>Ristorante &quot;Il Matto&quot;<br>
Vico della Casana 9/int.1 (on the first floor of a private house), tel 0102466667<br>
Closed on Sunday. Local cuisine with a twist. Advance booking is advised. Price around 30&euro;</li>

<li>Ristorante arabo &quot;Nabil&quot;<br>
Vicolo Falamonica 21r, tel 0102476114<br>
A Jordanian cook prepares excellent middle-Eastern food: from Mansaf to Kifta and Jiaj. Advanced booking is advised. Prices around 25&euro;</li>

<li>Osteria &quot;San Matteo&quot;<br>
Piazza San Matteo 4-6r, tel 0102473282<br>
Closed on Monday. Re-elaborated local cuisine, excellent choice of wines. Prices from 20&euro;</li>

<li>Pizzeria di Vico dei Biscotti<br> 
Vico dei Biscotti (on a corner of Piazza delle Erbe), tel 0102518990<br>
Open every day, but for lunch on Saturday or Sunday. Plenty of space. Prices below 20&euro;</li>

</ul>

<dt><b>Zona Boccadasse</b>
<dd>
Near Hotel La Capannina

<ul>
<li>Pizzeria &quot;Il Guscio&quot;<br>
Via Boccadasse 37r, tel 0103770086</li>

<li>Pizzeria Biancini<br>
Via Boccadasse 9r, tel 0103777575</li>

<li>Trattoria &quot;Dindi&quot;<br>
Piazza Nettuno 11r, tel 0103761364<br>
Mainly fish. Prices around 30&euro;</li>

<li>Ristorante &quot;Santa Chiara a Boccadasse&quot;<br>
Via Capo S. Chiara 69 (on a corner of Piazza Nettuno), tel 0103770081<br>
Excellent restaurant. Wide price range 30-50&euro;</li>

<li>Antica Trattoria &quot;Osvaldo&quot;<br>
Via della Casa 2r, tel 0103771881<br>
Closed on Monday. Expensive</li>

<li>Ristorante &quot;Creuza De Ma&quot;</li>
Piazza Nettuno 2, tel 0103770091<br>
Good restaurant. Price range 25-40&euro;</li>
</ul>

<dt><b>Zona DIMA/DISI</b>
<dd>

These restaurants are near the conference site, and offer a fairly reasonable option for lunch if one does not want to eat at the Mensa. They are listed from the one closest to DIMA/DISI.

<ul>
<li>Bar &quot;Pit Stop&quot;<br>
Via San Martino 31r<br>
Excellent for a quick sandwich</li>

<li>Bar &quot;Pit Stop 2&quot;<br>
Via San Martino 23r<br>
Same management as &quot;Pit Stop&quot;, but wider seating area, a few more choices on the menu</li>

<li>Chinese Restaurant &quot;La Muraglia&quot;<br>
Via San Martino 11, tel 0105221371<br>
Always open</li>

<li>Chinese Restaurant &quot;Nuova era&quot;<br>
Corso Europa 63, tel 010501758<br>
Always open</li>

<li>Pizzeria &quot;Fuorigrotta&quot;<br>
Corso A. Gastaldi 191r,
tel 0105299055</li>

<li>Bar &quot;La Piazza&quot;<br>
Piazza Leonardo Da Vinci 1r, tel  010 312235<br>
The best choice of all, but ask for directions to a local before going.</li>
</ul>
</dl>

</p>
