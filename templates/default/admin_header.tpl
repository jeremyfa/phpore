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
<script type="text/javascript">
<!--
parent.document.title = document.title;
//-->
</script>
</head>


<body>
<span id="top"></span>

<table class="bodyline" width="100%" cellspacing="0" cellpadding="0" border="0">
 <tr>
  <td>
  <table width="100%" cellspacing="1" cellpadding="10" border="0" align="center">
 <tr>
<td align="center">

<div class="nav" align="left">{NAVIGATION}</div>