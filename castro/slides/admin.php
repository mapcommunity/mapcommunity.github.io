<?php
session_start();
$action = $HTTP_GET_VARS['action'];
$file = $HTTP_GET_VARS['file'];

if($action == 'logout'){ $_SESSION['permission'] = ""; }

$permission = $_SESSION['permission'];
$username = $_SESSION['username'];


if($action == 'login'){
  $username=$HTTP_POST_VARS["username"];
  $password=$HTTP_POST_VARS["password"];
  
  $liste[1]="briseid";
  $liste[2]="buchberger";
  $liste[3]="diaz";
  $liste[4]="gerhardy";
  $liste[5]="kapur";
  $liste[6]="kauers";
  $liste[7]="kohlenbach";
  $liste[8]="leustean";
  $liste[9]="mahboubi";
  $liste[10]="mayero";
  $liste[11]="paule";
  $liste[12]="perdry";
  $liste[13]="quadrat";
  $liste[14]="roy";
  $liste[15]="ruiz";
  $liste[16]="schuster";
  $liste[17]="schwichtenberg";
  $liste[18]="sergeraert";
  $liste[19]="yengui";
  $liste[20]="romero";
  $liste[21]="dominguez";
  $liste[22]="berciano"; 
  $liste[23]="marin";  
  
  $flag = false; 
  for($i=1; $i<24; $i++){ $flag = ($flag or ($username==$liste[$i])); }
  if ($flag AND $password=="chirimbo"){
    $permission = "ok";
    $_SESSION['permission'] = "ok";   
    $_SESSION['username'] = $username;
  } else{
    print "<html><pre>Wrong username or password.</pre></html>\n";
  }  
 }

if(!isset($username) or $permission <> "ok"){
  print "<html>\n<body>\nHello happy MAP speaker. Please identify yourself.<p>"; 
  print "<form method=\"post\" action=\"admin.php?action=login\">\n<table>";
  print "<tr><td>Username:<td><input type=\"text\" name=\"username\" size=\"20\"><br>\n";
  print "<tr><td>Password:<td><input type=\"password\" name=\"password\" size=\"15\"><br>\n";
  print "<td></table>\n<input type=\"Submit\" value=\"Submit\">\n";
  print "</form>\n</body>\n</html>";
  return ;
 }


$name = $username;

$handle = opendir($name);
$number = 0;
while (false !== ($filename = readdir($handle))) {
  if($filename{0} <> ".") {
    $number += 1;
    $files[$number] = $filename;
  }
 } 

if($action == "delete"){
  print "<html>\nAre you sure you want to delete $file?<br>\n";
  print "<a href=\"admin.php?action=yes&file=".
    urlencode($file)."\">YES</a>&nbsp;&nbsp;".
    "<a href=\"admin.php\">NO</a>\n";
  print "</html>";
  return;
 }

$filename = $name."/".$file;

if($action == "yes" && $file{0} <> "." && $file{0} <> "/" && file_exists($filename)) {
  unlink($filename);
    print "<html><head>\n<meta http-equiv=\"Refresh\" content=\"0; URL=admin.php\">\n";
    print "</head>\n<body>\n";
  print "\n<a href=\"admin.php\">done.</a>\n";
  print "</body>\n</html>";
  return;
 }


if($action == "upload"){
  print "<html>\n";
  if (substr($_FILES['userfile']['name'],-4) == ".php"){
    print "Oh no, you're not uploading a php file!\n</html>";
  print "\n<a href=\"admin.php?\">OK</a>\n</html>";
    return;
  }
  if (move_uploaded_file($_FILES['userfile']['tmp_name'], $name."/".$_FILES['userfile']['name'])) {
    print "<head>\n<meta http-equiv=\"Refresh\" content=\"0; URL=admin.php\">\n";
    print "</head>\n<body>\n";
    print "The file was succesfully uploaded.<br>\n";
  } else {
    print "<body>\nSomething wrong happened when uploading!<br>\n<pre>\n";
    print_r($_FILES);
    print "\n</pre>";
  }
  print "\n<a href=\"admin.php\">OK</a>\n</body></html>";
  return;
 }

print "<html><H1>Welcome.</H1>\n";
print "This is a very basic administation tool for uploading your slides.<p>\n";

print "You are logged as user: $username.<br>\n<p>\n";

print "If you want to be logged out," .
 " <a href=\"admin.php?action=logout\">click here.</a>\n";

if($number == 0){
  print "<p>You don't have any uploaded file yet.<br>\n";
 } else {
  print "<p>You have already uploaded the following file";
  if($number>1){ print "s"; }
  print ":\n<p><table>";
  for($i=1; $i<=$number; $i++){
    $file = $files[$i];
    print "<tr><td>$file<td><a href=\"admin.php?action=delete" .
      "&file=". urlencode($file) ."\">[delete]</a>\n";
  }
  print "</table>\n";
 }

print "<p>You may want to upload one file. You can do this here:";

echo "<form enctype=\"multipart/form-data\" 
       action=\"admin.php?action=upload\"
       method=\"post\"/>\n<input type=\"hidden\"/>";

echo "<input name=\"userfile\" type=\"file\"/>\n";
echo '<br><input type="submit" value="Send"/>';
echo "\n</form>\n";

?>
</html>