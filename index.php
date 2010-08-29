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

// on ne néglige aucune erreur, alors on active l'affichage de toutes les erreurs
error_reporting(E_ALL);

if ( phpversion() < 4.3 )
{
	die('You must have php 4.3 or higher to use this program');
}

// temps d'exécution
function execution_time($content = false) 
{
	global $execution_time, $db;

	list($usec, $sec) = explode(' ', microtime());

	if ( !$content )
	{
		$execution_time = doubleval($usec) + doubleval($sec);
	}
	else
	{
		return str_replace('<span id="execution_time"></span>', '<span id="execution_time">' . round(doubleval($usec) + doubleval($sec) - $execution_time, 3) . ' s - ' . $db->num_queries . ' queries</span>', $content);
	}
}

execution_time();

// définition de la constante certifiant que PHPore a démarré
define('IN_PHPORE', true);

// création de l'objet $config
settype($config, 'object');

// récupération de l'extension des fichiers php et définition de la racine du répertoire
$config->phpex = preg_replace('`^(.*?)\.([a-z0-9\-_]*)$`s', '$2', $_SERVER['PHP_SELF']);
$config->path = './';

// on charge les fichiers indispensables au bon fonctionnement du script
require($config->path . 'includes/config.' . $config->phpex);
require($config->path . 'includes/common.' . $config->phpex);

// on finit l'initialisation de l'objet $config
$config = new config($config);

// connexion é la base de données
$db = new sql_db($config->db_host, $config->db_user, $config->db_password, $config->db_name, false);
unset($config->db_host, $config->db_user, $config->db_password, $config->db_name);

if( !$db->db_connect_id )
{
   die('Could not connect to the database');
}

// maintenant qu'on est connecté é la base de donnée, on récupére les infos de configuration sur la base de données
$config->load_db();

$actual_day_number = floor(time() / 86400);
if ( $config->day_number < $actual_day_number ) // systéme de pseudo-cron
{
	require($config->path . 'includes/cron_day.' . $config->phpex);
}

// récupération des données de la langue courante
include($config->path. 'language/' . $config->language . '/main.' . $config->phpex);
$lang->load_keys('common');

// démarrage du systéme de template
$template = new template();

// démarrage de la session
$user = new user();

if ( $user->logged_in ) // déconnecté (invité)
{
	$template->assign_block_vars('logged_in', array());
}
else // connecté sous un compte utilisateur
{
	$template->assign_block_vars('not_logged_in', array());
}

// les variables par défaut du template
$template->assign_vars(array(
	'SITE_NAME' => $config->site_name,
	'SITE_DESC' => $config->site_desc,
	'TEMPLATE_PATH' => 'templates/' . $config->template . '/',
	'SITE_DESC' => $config->site_desc,
	'U_INDEX' => $config->index,
	'PATH' => $config->path,
	'USER_ID' => $user->id,
	'USER_NAME' => $user->name,
	'COPYRIGHT' => 'Program written by <a href="http://www.jeremyfaivre.com" onclick="window.open(this.href);return false">J&eacute;r&eacute;my Faivre</a> - 2005 &copy; <a href="http://www.jeremyfaivre.com/tags/phpore" onclick="window.open(this.href);return false">phpore</a>',
	'DIRECTION' => $lang->direction,
	'ENCODING' => $lang->encoding,
	//
	));

if ( $user->admin )
{
	$template->assign_block_vars('admin_panel', array());
}

if ( $config->use_gzip == 1 ) // compression gzip activée
{
	ob_start('ob_gzhandler');
	$config->use_gzip = true;
}
else
{
	$config->use_gzip = false;
}

ob_start('execution_time');


// chargement du module
if ( !empty($_GET['mod']) && ( ( preg_match('`^([a-z0-9\-_]+)$`', $_GET['mod']) && is_file($config->path . 'modules/' . $_GET['mod'] . '.' . $config->phpex) ) || ( preg_match('`^(admin\.[a-z0-9\-_]+)$`', $_GET['mod']) && $user->admin && is_file($config->path . 'modules/' . $_GET['mod'] . '.' . $config->phpex) ) ) )
{
	if ( $user->in_battle && substr($_GET['mod'], 0, 6) != 'admin.' && $_GET['mod'] != 'default' && $_GET['mod'] != 'map' && $_GET['mod'] != 'profile' ) // personnage en combat
	{
			$user->set('actual_mod', 'battle');

			if ( $_GET['mod'] == 'battle' )
			{
				require($config->path . 'modules/battle.' . $config->phpex);
			}
			else
			{
				header('Location: ' . $config->path . $config->index . '?mod=battle');
				exit;
			}
	}
	else
	{
		if ( substr($_GET['mod'], 0, 6) != 'admin.' )
		{
			$user->set('actual_mod', $_GET['mod']);
		}
		//if ( $user->logged_in && !$user->in_battle ) create_battle(1, $user->id, '047-Mine01.jpg', '022-Field05.mid');
		require($config->path . 'modules/' . $_GET['mod'] . '.' . $config->phpex); // le module est valide, on le charge
	}
}
elseif ( !empty($user->actual_mod) )
{
	// le module actuel de l'utilisateur est chargé si un autre n'est pas spécifié dans l'adresse
	header('Location: ' . $config->path . $config->index . '?mod=' . $user->actual_mod);
	exit;
}
else
{
	// s'il n'y a pas de module trouvé, on charge le module par défaut
	$user->set('actual_mod', 'default');
	header('Location: ' . $config->path . $config->index . '?mod=default');
	exit;
}

// mise à jour de la config et de l'utilisateur dans la base de données si nécessaire
$user->update_db();
$config->update_db();

while ( @ob_end_flush() );
exit;

// fin du script

?>