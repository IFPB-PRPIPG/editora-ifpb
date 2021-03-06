{**
 * templates/common/headerHead.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2000-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site header <head> tag and contents.
 *}
<head>
	<meta http-equiv="Content-Type" content="text/html; charset={$defaultCharset|escape}" />
	<title>{$pageTitleTranslated|strip_tags}</title>
	<meta name="description" content="{$metaSearchDescription|escape}" />
	<meta name="keywords" content="{$metaSearchKeywords|escape}" />
	<meta name="generator" content="{$applicationName} {$currentVersionString|escape}" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="Cache-Control"
  	content="no-cache, no-store, must-revalidate" />
  <meta http-equiv="Pragma" content="no-cache" />
  <meta http-equiv="Expires" content="0" />


	{$metaCustomHeaders}
	{if $displayFavicon}<link rel="icon" href="{$faviconDir}/{$displayFavicon.uploadName|escape:"url"}" type="{$displayFavicon.mimeType|escape}" />{/if}

		  <!-- Inclusão Bootstrap.js -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<!-- Base Jquery -->
	{if $allowCDN}
		<script src="http://www.google.com/jsapi"></script>
		<script>{literal}
			// Provide a local fallback if the CDN cannot be reached
			if (typeof google == 'undefined') {
				document.write(unescape("%3Cscript src='{/literal}{$baseUrl}{literal}/lib/pkp/js/lib/jquery/jquery.min.js' type='text/javascript'%3E%3C/script%3E"));
				document.write(unescape("%3Cscript src='{/literal}{$baseUrl}{literal}/lib/pkp/js/lib/jquery/plugins/jqueryUi.min.js' type='text/javascript'%3E%3C/script%3E"));
			} else {
				google.load("jquery", "{/literal}{$smarty.const.CDN_JQUERY_VERSION}{literal}");
				google.load("jqueryui", "{/literal}{$smarty.const.CDN_JQUERY_UI_VERSION}{literal}");
			}
		{/literal}</script>
	{else}
		<script src="{$baseUrl}/lib/pkp/js/lib/jquery/jquery.min.js"></script>
		<script src="{$baseUrl}/lib/pkp/js/lib/jquery/plugins/jqueryUi.min.js"></script>
	{/if}

	<!-- UI elements (menus, forms, etc) -->
	<script src="{$baseUrl}/lib/pkp/js/lib/superfish/hoverIntent.js"></script>
	<script src="{$baseUrl}/lib/pkp/js/lib/superfish/superfish.js"></script>

	{include file="common/validate.tpl"}
	{include file="common/plupload.tpl"}

	{foreach from=$stylesheets item=styleSheetList}{* For all priority sets STYLE_PRIORITY_... *}
		{foreach from=$styleSheetList item=cssUrl}{* For all stylesheet URLs within this priority set *}
			<link rel="stylesheet" href="{$cssUrl}" type="text/css" />
		{/foreach}
	{/foreach}

  <!-- Constants for JavaScript -->
	{include file="common/jsConstants.tpl"}

	<!-- Default global locale keys for JavaScript -->
	{include file="common/jsLocaleKeys.tpl" }

  <!-- Compiled scripts -->
  {if $useMinifiedJavaScript}
    <script src="{$baseUrl}/js/pkp.min.js"></script>
  {else}
    {include file="common/minifiedScripts.tpl"}
  {/if}


  <!-- icones -->
  <link rel="stylesheet" href="{$baseUrl}/img/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="{$baseUrl}/styles/style.css" type="text/css">
	<link rel="stylesheet" href="{$baseUrl}/styles/ajustes.css" type="text/css">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">


	<!-- Constants for JavaScript -->
	{include file="common/jsConstants.tpl"}

	<!-- Default global locale keys for JavaScript -->
	{include file="common/jsLocaleKeys.tpl" }

	{$deprecatedJavascript}

	{$deprecatedThemeStyles}

  {$additionalHeadData}

	<meta property="creator.productor" content="http://estruturaorganizacional.dados.gov.br/id/unidade-organizacional/NUMERO">
</head>
