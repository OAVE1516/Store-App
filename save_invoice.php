<?php
session_start();
$sel_size = $_SESSION["sel_size"];
$sel_occasion = $_SESSION["sel_occasion"];
$sel_theme = $_SESSION["sel_theme"];
$sel_addons = $_SESSION["sel_addons"];
$total_price = $_SESSION["totalPrice"];
$prices = $_SESSION["finalPrices"];

$ITEM = 0;
$COST = 1;

$name = $_POST["name"];
$email = $_POST["email"];
$school = $_POST["school"];
$address = $_POST["address"];
$city = $_POST["city"];
$state = $_POST["state"];
$zip = $_POST["zip"];

//Takes the list of addons and puts them into a string
$addons = "";
foreach ($sel_addons[$ITEM] as $addon){
    $addons .= $addon . ", ";
}

$body = "Customer Information: \nName: $name\nEmail: $email\nSchool: $school\nAddress: $address $city, $state $zip\n\n
Selected Size: $sel_size\n
Selected Occasion: $sel_occasion[$ITEM], $$sel_occasion[$COST]\n
Selected Theme: $sel_theme[$ITEM], $$sel_theme[$COST]\n
Selected Addons: $addons $$sel_addons[$COST]\n
Subtotal: $${prices['subtotal']}\n
Tax: $${prices['tax']}\n
Shipping: $${prices['shipping']}\n
Total: $${prices['grandTotal']}";

date_default_timezone_set('America/Los_Angeles');
$time = date('g-i-s A MjS');

$file = fopen("orders/$time.txt", "w");
fwrite($file, $body);
fclose($file);

session_destroy();