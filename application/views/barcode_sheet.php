<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title><?php echo $this->lang->line('items_generate_barcodes'); ?></title>
	<link rel="stylesheet" rev="stylesheet" href="<?php echo base_url();?>css/barcode_font.css" />
	<style type="text/css" >
		* 
		{ 
			font-size: 12px;
		}
	</style>
</head>

<body class=<?php  echo "font_".$this->barcode_lib->get_font_name($barcode_config['barcode_font']); ?> 
      style="font-size:<?php echo $barcode_config['barcode_font_size'] + 5; //5 is size offset for font in display label?>px">
    <table cellpadding="0" cellspacing="<?php echo $barcode_config['barcode_page_cellspacing']; ?>" width='<?php echo $barcode_config['barcode_page_width']."%"; ?>' >
		<tr><td style="font-size:120%; text-align:center;"><b>Naogaon Super Shop & Rice Agency</b></td></tr>
		<tr>
			<?php
			$count = 0;
			foreach($items as $item)
			{
				if ($count % $barcode_config['barcode_num_in_row'] == 0 and $count != 0)
				{
					echo '</tr><tr>\n';
				}
				echo "<td align=\"center\">" . $this->barcode_lib->display_barcode($item, $barcode_config,$texes) . "</td>\t\n";
				$count++;
			}
			?>
		</tr>
	</table>
</body>

</html>
