<?php

//$lic = ["licDate" => "2020-05-01", "price" => 3000];
$myfile = fopen(BASEPATH . "lic.ini", "r") or die("Unable to open file!");
$lic = json_decode(base64_decode(base64_decode(fread($myfile, filesize(BASEPATH . "lic.ini")))), true);
$date1 = strtotime($lic['licDate']);
$date2 = strtotime(date("Y-m-d"));

// Formulate the Difference between two dates 
$diff = abs($date2 - $date1);

$diff = ($diff / 3600) / 24;
$dif2 = $diff - 365;
$licfine = ($dif2 * 10);
$totalff = $lic['price'] + ($dif2 * 10);
if ($diff > 365 && $diff <= 400) {
    $expiremass = "<script>"
            . "alert(\"1 Year Licence has been expired. Please renew your licence.\");"
            . "</script>";
} elseif ($diff > 400) {
    $expiremass = "";
    echo "<div style='text-align:center;margin-top:100px;padding:100px;'><h1 style='color:red'>Licence has been expired. Please Pay <b>BDT. {$totalff}.00 </b>(with fine) for renew your licence<br>"
    . "</h1></div>";
    $myfile = fopen("system/lic.ini", "r") or die("Licence Not Found!");
    $lic = json_decode(base64_decode(base64_decode(fread($myfile, filesize("system/lic.ini")))), true);

    echo <<<EOT
        <div style="font-size: 24px;text-align: center;padding: 50px;">
            Licence Information<br>
            Licence Issued to: {$lic['ClientName']}<br>
            Licence Issue Date: {$lic['licDate']}<br>
            Please Contact with Kalni-IT for renew your licence;


        </div>
EOT;
    exit();
}

function smooth_run() {
    
}
