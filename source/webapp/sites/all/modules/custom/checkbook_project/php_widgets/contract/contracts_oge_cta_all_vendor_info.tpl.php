<?php
/**
* This file is part of the Checkbook NYC financial transparency software.
* 
* Copyright (C) 2012, 2013 New York City
* 
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU Affero General Public License as
* published by the Free Software Foundation, either version 3 of the
* License, or (at your option) any later version.
* 
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU Affero General Public License for more details.
* 
* You should have received a copy of the GNU Affero General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
?>
<div>
<h3>Vendor Infromation</h3> Number of Vendors: <?php echo count($node->vendors_list);?> 
<table class="dataTable outerTable">
    <thead>
    <tr>
      <th class="text"><?php echo WidgetUtil::generateLabelMapping("vendor_name"); ?></th>
      <th class="text"><div><span><?php echo $node->widget_count_label; ?></span></div></th>
      <th class="number"><?php echo WidgetUtil::generateLabelMapping("spent_to_date"); ?></th>
      <th class="number endCol"><?php echo WidgetUtil::generateLabelMapping("vendor_address"); ?></th>
    </tr>
    </thead>
   <tbody>
   <?php 
	$vendor_cont_count = array();   
   	foreach($node->vendor_contracts_count as $vendor_cont){
		$vendor_cont_count[$vendor_cont['vendor_id']]['count'] = $vendor_cont['count'];
		$vendor_cont_count[$vendor_cont['vendor_id']]['count'] = $vendor_cont['count'];
	}

    
   	foreach($node->vendors_list as $vendor){
		echo "<tr>";
		echo "<td class='text'><a href='/contracts_landing/status/A/year/" . _getCurrentYearID() . "/yeartype/B/vendor/" . $vendor['vendor_id']  . 
				 "/agency/" . $vendor['agency_id'] . "/datasource/checkbook_oge/?expandBottomCont=true'>" . 
								$vendor['vendor_name']  . "</a></td>";
		echo "<td class='text'>" . $vendor_cont_count[$vendor['vendor_id']]['count']  . "</td>";
		echo "<td class='number'>" . custom_number_formatter_format($vendor['check_amount_sum'], 2, '$')  . "</td>";
		echo "<td class='text'>" . $vendor['address']  . "</td>";
		echo "</tr>";
	}
   ?>
   
 </tbody>
 </table>  
</div>
<?php

