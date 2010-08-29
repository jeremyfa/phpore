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

if ( !$user->logged_in || !$user->admin )
{
	header('Location: ' . $config->path . $config->index . '?mod=login');
	exit;
}

$mode = ( isset($_GET['mode']) ) ? 'GET.' . trim($_GET['mode']) : '';

$lang->load_keys('admin_panel');

if ( $mode == 'GET.nav' )
{
	$nav_menu = array();
	$nav_menu[] = array('admin.general', $lang->admin_general, array(
		'config' => $lang->general_config,
		'select_user_to_edit' => $lang->user_editor,
		'delete_user' => $lang->delete_user,
		'select_class_to_edit' => $lang->class_editor,
		'create_class' => $lang->create_class,
		'delete_class' => $lang->delete_class
		));
	$nav_menu[] = array('admin.map', $lang->admin_maps, array(
		'select_map_to_edit' => $lang->map_editor,
		'create_map' => $lang->create_map,
		'resize_map' => $lang->resize_map,
		'delete_map' => $lang->delete_map
		));
	$nav_menu[] = array('admin.map', $lang->admin_tilesets, array(
		'select_tileset_to_edit' => $lang->tileset_editor,
		'create_tileset' => $lang->create_tileset,
		'select_tileset_to_export' => $lang->export_tileset,
		'import_tileset' => $lang->import_tileset,
		'delete_tileset' => $lang->delete_tileset
		));
	$nav_menu[] = array('admin.map', $lang->admin_events, array(
		'select_event_to_edit' => $lang->event_editor,
		'create_event' => $lang->create_event,
		'delete_event' => $lang->delete_event,
		'synchro_pic' => $lang->synchro_pic
		));

	$i = 0;
	while ( isset($nav_menu[$i]) )
	{
		$template->assign_block_vars('cat_nav_title', array(
			'VALUE' => $nav_menu[$i][1]
			));

		foreach ( $nav_menu[$i][2] as $mod => $value )
		{
			$template->assign_block_vars('cat_nav_title.cat_nav_option', array(
				'URL' => $config->index . '?mod=' . $nav_menu[$i][0] . '&amp;mode=' . $mod,
				'VALUE' => $value
				));
		}
		$i++;
	}

	$template->set_filenames(array(
		'nav' => 'admin.nav.tpl'
		));

	$template->pparse('nav');
}
elseif ( $mode == 'GET.main' )
{
	message_die($lang->admin_panel, $lang->admin_panel_explain);
}
else
{
	$template->set_filenames(array(
		'frameset' => 'admin.frameset.tpl'
		));

	$template->assign_vars(array(
		'FRAME_NAV' => $config->index . '?mod=admin.panel&amp;mode=nav',
		'FRAME_MAIN' => $config->index . '?mod=admin.panel&amp;mode=main'
		));

	$template->pparse('frameset');
}

?>