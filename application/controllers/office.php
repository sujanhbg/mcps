<?php

require_once ("secure_area.php");

class Office extends Secure_area {

    function __construct() {
        parent::__construct();
    }

    function index() {
        $this->load->view("office/main");
    }

    function expensecategory() {
        echo "Hello";
    }

}

?>