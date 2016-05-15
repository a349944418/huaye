<?php
// error_reporting(E_ERROR | E_WARNING | E_PARSE);  
// ini_set('display_errors', 1);
// Version
define('VERSION', '1.4.0.0');

// Configuration
if (is_file('config.php')) {
	require_once('config.php');
}



date_default_timezone_set('PRC');

// Startup
require_once(DIR_SYSTEM . 'startup.php');

$application_config = 'catalog';

// Application
require_once(DIR_SYSTEM . 'framework.php');
