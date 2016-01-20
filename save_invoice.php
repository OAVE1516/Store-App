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
$phone = $_POST["phone"];
$school = $_POST["school"];
$address = $_POST["address"];
$city = $_POST["city"];
$state = $_POST["state"];
$zip = $_POST["zip"];
$date = $_POST["date"];
$person = $_POST["person"];
$comments = $_POST["comments"];

//Takes the list of addons and puts them into a string
$addons = "";
foreach ($sel_addons[$ITEM] as $addon){
    $addons .= $addon . ", ";
}

$body = "Name: $name\n
Email: $email\n
Phone: $phone\n
School: $school\n
Address: $address $city, $state $zip\n\n
Selected Size: $sel_size\n
Selected Occasion: $sel_occasion[$ITEM], $$sel_occasion[$COST]\n
Selected Theme: $sel_theme[$ITEM], $$sel_theme[$COST]\n
Selected Addons: $addons $$sel_addons[$COST]\n
Subtotal: $${prices['subtotal']}\n
Tax: $${prices['tax']}\n
Shipping: $${prices['shipping']}\n
Total: $${prices['grandTotal']}\n\n
Order Taken by: $person\n\n
Additional Comments: $comments\n\n

Party Arrival Date: $date";

date_default_timezone_set('America/Los_Angeles');
$time = date('g-i-s A MjS');

$file = fopen("orders/$time.txt", "w");
fwrite($file, $body);
fclose($file);

session_destroy();

echo "Order has been taken successfully. Click <a href='/'>here</a> to take another.";