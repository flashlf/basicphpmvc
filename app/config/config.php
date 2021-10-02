<?php

/**
 * Konfigurasi Variabel Global maupun Konstanta
 * Referensi Link https://www.php.net/manual/en/function.define.php
 * 
 * define(string $constant_name, mixed $value, bool $case_insensitive = false): bool
 */

# Konfigurasi URL
define("BASE_URL", "http://". $_SERVER['SERVER_NAME'] ."/archiveapps/public");

# DS a.k.a Directory Separator
define('DS','/');

# Konfigurasi Database
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'archive_app');

define('DB_CONF', array(
    'host' => 'localhost',
    'user' => 'root',
    'pass' => '',
    'schema' => 'archive_app'
));

# Konfigurasi Active Route
define('ACTIVE_ROUTE', array(
    '' => 1
));