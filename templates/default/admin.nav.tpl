<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="{DIRECTION}">

<head>
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset={ENCODING}" />
<title>{SITE_NAME} - {PAGE_NAME}</title>
<link rel="stylesheet" href="{TEMPLATE_PATH}style.css" type="text/css" />
</head>


<body style="margin:2px">
<table width="100%" cellpadding="4" cellspacing="1" border="0" class="portaline">
<!-- BEGIN cat_nav_title -->
 <tr>
  <td class="cat">{cat_nav_title.VALUE}</td>
 </tr>
<!-- BEGIN cat_nav_option -->
 <tr>
  <td class="row1" align="center">
  <a href="{cat_nav_title.cat_nav_option.URL}" target="main" class="gensmall">{cat_nav_title.cat_nav_option.VALUE}</a>
  </td>
 </tr>
<!-- END cat_nav_option -->
<!-- END cat_nav_title -->
</table>
</body>

</html>