<?php
//onecompiler.com/php

//initialization

$tennisPlayer = array(
    "name" => "Roger",
    "surname" => "Federer",
    "age" => 41,
    "racket" => "Wilson Pro Staff",
    "favorite_shot" => "Forehand",
    "backhand_type" => "One-handed");

//get and print the value for key "racket"

$racket = $tennisPlayer["racket"];
echo $racket;
echo "\r\n";

//add height item to the associative array

$tennisPlayer["height"] = 185;

//remove backhand type from the associative array

unset($tennisPlayer["backhand_type"]);

//change the favorite shot from Forehand to Backhand

$tennisPlayer["favorite_shot"] = "Backhand";

//check for the existence of age (a key) in the associative array

$ageExists = false;

if(array_key_exists("age", $tennisPlayer))
{
    $ageExists = true;
}

if ($ageExists == true)
{
  echo "true";
}
else
{
  echo "false";
}

echo "\r\n";

//check for the existence of 185 (a value) in the associative array

$numberExists = in_array( 185, $tennisPlayer);

if ($numberExists == true)
{
  echo "true";
}
else
{
  echo "false";
}

echo "\r\n";

//apply a function foo that prints the key-value pair

function foo($key, $value)
{
  echo $key . ", ". $value . " \n";
}

foreach($tennisPlayer as $key => $value)
{
  foo($key, $value);
}
?>