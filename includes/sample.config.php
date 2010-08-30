<?php

/*

Program: phpore
Author: Jeremy Faivre
Contact: http://www.jeremyfaivre.com/about
Year: 2005

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

*/

if ( !defined('IN_PHPORE') )
{
	exit;
}

$config->cache_dir = 'cache';
$config->table_prefix = 'phpore_';
$config->db_type = 'mysql4';
$config->db_name = 'phpore_demo';
$config->db_user = 'root';
$config->db_password = 'root';
$config->db_host = 'localhost';

?>