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

$lang->load_keys('default');

if ( !$user->logged_in )
{
	$template->assign_vars(array(
		'PAGE_NAME' => $lang->reception
		));
}
else
{
	$template->assign_vars(array(
		'PAGE_NAME' => $lang->reception,
		'CHARASET' => $user->charaset,
		'PIC_WIDTH' => $user->pic_width,
		'PIC_HEIGHT' => $user->pic_height,
		'CHAR_WIDTH' => ceil($user->pic_width/4),
		'CHAR_HEIGHT' => ceil($user->pic_height/4)
		));
}

$template->set_filenames(array(
	'header' => 'page_header.tpl',
	'footer' => 'page_footer.tpl',
	'body' => 'default.tpl'
	));

$template->pparse('header');
$template->pparse('body');
$template->pparse('footer');


?>