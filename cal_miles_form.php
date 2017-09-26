<?php
/*
*
* Project File: test_order_form.php
* Company: Code Blast Solutions
* Developed by: ArReko Gibbs
* Date 09/16/2017
*/

int_set ('display_errors', 'OFF');
error_reporting(E_ALL);

//Connect to Database
$conn=odbc_connect('***-****', '**', '*******');

if (!$conn) {
    exit ("Connection Failed: " . $conn);
}

parse_str(strtolower($_SERVER['QUERY_STRING']), $arv);
$ordernumbers = explode("\n", $arv [ordernumbers]);

// Build SQL Where Clause
foreach ($ordernumbers as &$item) {
    if (strlen($item)>1) {
        $ord_num = $ord_num. "'".$item."'";
    }
}
$ord_nums = substr ($ord_num,0,strlen($ord_num)-2);

if (strlen($ord_nums)<1) {
    $ord_nums = "''";
}

// Getting the Data from database
$sql="SELECT ivh_invoicenumber as 'Invoice Number' , ord_number as 'Order Number',
ivh_invoicestatus as 'Invoice Status'
FROM invoiceheader with (nolock)
WHERE ord_number in ($ord_nums)";
// Where ord_number = 'dca890124'";

        //echo "SQL Query:<br>".$sql
        $rs=odbc_exec($conn, $sql);
        if (!$rs){
            exit("error in sql");
        }
        
echo"<!DOCTYPE html>";
echo"<html>";
echo"<body>";

//Build the style
echo"<style>";
echo"table,th,td{";
echo"border0.1px solid black;";
echo"border-collapse:collapse;}";
echo"th,td{";
echo"padding:5px;}";
echo"</style>";
//end of style

//Build of form
echo"<form>";
echo"<div align=\"center\">";
echo"<strong>Please enter Order Number(s):</strong><br />";
echo"<textarea name=\"ordernumbers\" style=\"width:\"250px;\"height:\"2opx;\">".$arv
[ordernumbers]."</textarea><br /><br />";
echo"<input type=\"submit\" name=\"submit\"value=\"Submit\"><input type=\"reset\"name=\"Reset\"value=\"Reset\">";
echo"</form></div><br />";
//end of form

//Build the form
echo"<form mathod=\"POST\"><div align=\"center\">";
echo"<table style=\"width:\"800px\"><tr>";
echo"<th>Select</th>";
echo"<th>Invoice Number</th>";
echo"<th>Order Number</th>";
echo"<th>Invoice Status</th></tr>";
    while (odbc_fetch_row($rs)) {
        $invnum=odbc_result($rs, "Invoice Number");
        $ordernum=odbc_result($rs, "Order Number");
        $invstatus=odbc_result($rs, "Invoice Status");
        echo "<tr>";
        echo "<td><input type =\"chechbox\" name=\"chk_$invnum\"></td>";
        echo "<td>Sinvnum</td>";
        echo "<td>$ordernum</td>";
        echo "<td><select name=\"invstatus_$invnum\">";
            if ($invstatus=="CAL"){
                echo "<option value=\"CAL\" selected>OnHold for Audit</option>";
            }else {
                echo "<option value=\"CAL\">OnHold for Audit</option>";
            }
            if ($invstatus=="MIL") {
                echo "<option value=\"MIL\" selected>Miles</option>";
            }else {
                echo "<option value=\"MIL\">Miles</option>";
            }
            if ($invstatus=="MStart"){
                echo "<option value=\"MST\" selected>MStart</option>";
            }else {
                echo "<option value=\"MST\">MST</option>";
            }
            if ($invstatus=="MSP") {
                echo "<option value=\"MGO\" selected>MGO</option>";
            }else {
                echo "<option value=\"MGO\" >MGO</option>";
            }
            echo "</select></td>";
        echo "</tr>";
    }
echo"</table>"; //end of table
echo"</form>"; //end of form
echo"</body>";
echo"</html>":
?>