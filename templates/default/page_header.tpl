<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="{DIRECTION}">

<head>
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset={ENCODING}" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<title>{SITE_NAME} - {PAGE_NAME}</title>
<link rel="stylesheet" href="{TEMPLATE_PATH}style.css" type="text/css" />
<script type="text/javascript" src="javascript/common.js"></script>
<!-- BEGIN redirect -->
<meta http-equiv="refresh" content="{redirect.TIMEOUT};{redirect.HTML_LOCATION}" />
<script type="text/javascript">
<!--
function location_timeout(time)
{
	if ( document.getElementById('redirect_timeout') )
	{
		document.getElementById('redirect_timeout').innerHTML = time;
		if ( time > 0 )
		{
			setTimeout('location_timeout(' + (time - 1) + ');', 1000);
		}
	}
}
function location_redirect()
{
	document.location.href = '[redirect.LOCATION]';
}
setTimeout('location_redirect();', ({redirect.TIMEOUT} * 1000));
//-->
</script>
<!-- END redirect -->

</head>

<body>
<noscript><div id="noscript">{L_JAVASCRIPT_REQUIRED}</div></noscript>
<span id="top"></span>
<!-- BEGIN bgsound_ie -->
<bgsound src="music/{bgsound_ie.MUSIC}" loop="-1" />
<!-- END bgsound_ie -->
<!-- BEGIN bgsound_ns -->
<object data="music/{bgsound_ns.MUSIC}" type="audio/midi" width="0" height="0"><param name="src" value="music/{bgsound_ns.MUSIC}" /><param name="autostart" value="true" /><param name="loop" value="true" /></object>
<!-- END bgsound_ns -->

<table class="bodyline" width="100%" cellspacing="0" cellpadding="0" border="0">
 <tr>
  <td>
   
  <div id="display_body">
  <div id="real_body">
  <table class="topbkg" width="100%" cellspacing="0" cellpadding="0" border="0">
   <tr>
    <td><a href="{U_INDEX}?mod=default"><img src="{TEMPLATE_PATH}images/logo.jpg" border="0" alt="{SITE_DESC}" title="{SITE_DESC}" width="300" height="110" /></a></td>
    <td align="center" valign="middle" width="100%">&nbsp;</td>
   </tr>
  </table>
  
  <table width="100%" class="topnav" border="0" cellspacing="0" cellpadding="0">
   <tr>
    <td align="center">
    <span class="gensmall">{SITE_DESC}&nbsp;-&nbsp;<span id="clock"></span>&nbsp;-&nbsp;<a href="{U_INDEX}?mod=default" style="color:black">{L_GO_TO_RECEPTION}</a></span>
    
    <script type="text/javascript">
    <!--
    function clock()
    {
     Stamp = new Date();
     document.getElementById("clock").innerHTML = (Stamp.getHours() < 10 ? "0" + Stamp.getHours() : Stamp.getHours()) + ":" + (Stamp.getMinutes() < 10 ? "0" + Stamp.getMinutes() : Stamp.getMinutes() ) + ":" + (Stamp.getSeconds() < 10 ? "0" + Stamp.getSeconds() : Stamp.getSeconds() );
     setTimeout("clock();",1000);
    }
    clock();
    //-->
    </script>

    </td>
   </tr>
  </table>

  <table width="100%" cellspacing="1" cellpadding="10" border="0" align="center">
 <tr>
<td align="center">

<div class="nav" align="left">{NAVIGATION}</div>