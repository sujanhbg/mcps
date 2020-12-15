<?php $this->load->view("partial/header"); ?>
<br />
<div style="text-align: center;">
    <h1>Welcome to Point of sales Software. This software has been modified by KringLab.</h1>
    <div style="font-size: 36px;text-align: center;color: #08f;padding:20px;" id="liveclock"></div>
    <div id="home_module_list">
        <?php
        foreach ($allowed_modules->result() as $module) {
            ?>
            <div class="module_item">
                <div class="griditem">
                    <a href="<?php echo site_url("$module->module_id"); ?>">
                        <img src="<?php echo base_url() . 'images/menubar/' . $module->module_id . '.png'; ?>" border="0" alt="Menubar Image" /></a><br />
                    <a href="<?php echo site_url("$module->module_id"); ?>"><?php echo $this->lang->line("module_" . $module->module_id) ?></a>
                </div>
            </div>
            <?php
        }
        ?>
    </div>
</div>
<?php $this->load->view("partial/footer"); ?>