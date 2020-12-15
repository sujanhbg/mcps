<?php
if (isset($_GET['opt'])) {
    $action = $_GET['opt'];
} else {
    $action = "";
}

switch ($action) {
    case "renew":


        break;

    default:





        $myfile = fopen("system/lic.ini", "r") or die("Licence Not Found!");
        $lic = json_decode(base64_decode(base64_decode(fread($myfile, filesize("system/lic.ini")))), true);
        ?>
        <div style="font-size: 24px;text-align: center;padding: 50px;">
            Licence Information<br>
            Licence Issued to: <?php echo $lic['ClientName'] ?><br>
            Licence Issue Date: <?php echo $lic['licDate'] ?><br>
            Please Contact with Kalni-IT for renew your licence;


        </div>
        <?php
        break;
}
?>