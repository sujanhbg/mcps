<?php

class Lic_lib {

    private $CI = null;

    function __construct() {
        $this->CI = & get_instance();
    }

    function get_licence_dtls() {
        $myfile = fopen("system/lic.ini", "r") or die("Licence Not Found!");
        $lic = json_decode(base64_decode(base64_decode(fread($myfile, filesize("system/lic.ini")))), true);

        return <<<EOT
        <div style="font-size: 24px;text-align: center;padding: 50px;">
            <b>Licence Information</b><br>
            Licence Issued to: <b style="color:green">{$lic['ClientName']}</b><br>
            Licence Issue Date: <b style="color:green">{$lic['licDate']}</b><br>
            Please Contact with KringLab for renew your licence;


        </div>
EOT;
    }

}
