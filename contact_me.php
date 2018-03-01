<?php
// Check for empty fields
if(empty($_POST['name'])  		||
   empty($_POST['email']) 		||
   empty($_POST['store_name']) 		||
   empty($_POST['sales_rep']) 		||
   empty($_POST['message'])	||
   !filter_var($_POST['email'],FILTER_VALIDATE_EMAIL))
   {
	echo "No arguments Provided!";
	return false;
   }

$name = $_POST['name'];
$email_address = $_POST['email'];
$store_name = $_POST['store_name'];
$sales_rep = $_POST['sales_rep'];
$message = $_POST['message'];

// Create the email and send the message
$to = 'matteichsteadt@gmail.com'; // Add your email address inbetween the '' replacing yourname@yourdomain.com - This is where the form will send a message to.
$email_subject = "Homelegance Kiosk Info Request:  $name";
$email_body = "You have received a new message from your website contact form.\n\n"."Here are the details:\n\nName: $name\n\nEmail: $email_address\n\nPhone: $phone\n\nStore Name: $store_name\n\n Sales Rep: $sales_rep\n\nMessage:\n$message";
$headers = "From: info@homelegance-kiosk.com\n"; // This is the email address the generated message will be from. We recommend using something like noreply@yourdomain.com.
$headers .= "Reply-To: $email_address";
mail($to,$email_subject,$email_body,$headers);
return true;
?>
