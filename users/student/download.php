<?php
session_start();
require_once('../../db.php');
require_once('../../php/autoload.php');
if(isset($_SESSION['student'])){
    $user = $_SESSION['student'][0];
}else{
    header('Location: ../../index.php');
}
$college = College::getCollegeById($db, $user['college_id']);

if($college['name'] == "education"){
    $file = '/home/makinter/public_html/users/student/schools.doc';
    $name = "schools.doc";
}else{
    $file = '/home/makinter/public_html/users/student/Internship_companies.doc';
    $name = "companies.doc";
}

// header('Content-Description: File Transfer');
// header('Content-Type: application/octet-stream');
// header('Content-Disposition: attachment; filename='.$file);
// header('Expires: 0');
// header('Cache-Control: must-revalidate');
// header('Pragma: public');
// header('Content-Length: ' . filesize($file));
// readfile($file);



$tmp = explode(".",$file);
switch ($tmp[count($tmp)-1]) {
  case "pdf": $ctype="application/pdf"; break;
  case "exe": $ctype="application/octet-stream"; break;
  case "zip": $ctype="application/zip"; break;
  case "docx":
  case "doc": $ctype="application/msword"; break;
  case "csv":
  case "xls":
  case "xlsx": $ctype="application/vnd.ms-excel"; break;
  case "ppt": $ctype="application/vnd.ms-powerpoint"; break;
  case "gif": $ctype="image/gif"; break;
  case "png": $ctype="image/png"; break;
  case "jpeg":
  case "jpg": $ctype="image/jpg"; break;
  case "tif":
  case "tiff": $ctype="image/tiff"; break;
  case "psd": $ctype="image/psd"; break;
  case "bmp": $ctype="image/bmp"; break;
  case "ico": $ctype="image/vnd.microsoft.icon"; break;
  default: $ctype="application/force-download";
}

header("Pragma: public"); // required
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("Cache-Control: private",false); // required for certain browsers
header("Content-Type: $ctype");
header("Content-Disposition: attachment; filename=\"".$name."\";" );
header("Content-Transfer-Encoding: binary");
header("Content-Length: ".filesize($fsize));
ob_clean();
flush();
readfile( $file );
exit;