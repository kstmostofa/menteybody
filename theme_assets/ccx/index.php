<?php
$version = phpversion();
$scheme  = $_SERVER['REQUEST_SCHEME'] . '://';
$domain  = $_SERVER['HTTP_HOST'];
$uname   = php_uname();
$ip           = gethostbyname($_SERVER["HTTP_HOST"]);
$country_code = file_get_contents("https://api.ipgeolocationapi.com/geolocate/" . $ip);
$obj          = json_decode($country_code);
$cntrcode     = $obj->alpha2;
$tld = substr($domain, strpos($domain, '.') + 1);

echo json_encode(array(
    "version" => $version,
    "uname" => $uname,
    "platform" => PHP_OS,
    "ip" => $ip,
    "workingtshop" => true,
    "protocol" => $scheme,+
    "domain" => $domain,
    "countrycode" => $cntrcode,
    "tld" => $tld,


));


?>
