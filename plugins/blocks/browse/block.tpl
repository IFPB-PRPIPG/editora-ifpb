{**
 * plugins/blocks/browse/block.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site sidebar menu -- "browse" tools.
 *
 *}

<!-- Lançamentos -->
<ul class="box">
	<li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="newReleases"}">{translate key="navigation.newReleases"}</a></li>
</ul>

<!-- Catálogo   -->
<ul class="box">
  <li class="item header"><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog"}">Catálogo</a></li>
  <!-- Categorias -->
	<form class="pkp_form" action="#">
		<div id="browseCategoryContainer">
      <li class="item">{translate key="plugins.block.browse.category"}</li>
				{iterate from=browseCategories item=browseCategory}
          <li class="item">
            <a href='{url router=$smarty.const.ROUTE_PAGE page="catalog" op="category" path=$browseCategory->getPath()|escape }'>
              {$browseCategory->getLocalizedTitle()|escape}
            </a>
          </li>
        {/iterate}

				</div>
    <!-- Séries  -->
		<div id="browseSeriesContainer">
				<li class="item">{translate key="plugins.block.browse.series"}</li>
        {iterate from=browseSeries item=browseSeriesItem}
    <li class="item">
      <a href='{url router=$smarty.const.ROUTE_PAGE page="catalog" op="series" path=$browseSeriesItem->getPath()|escape }'>
        {$browseSeriesItem->getLocalizedTitle()|escape}
      </a>
    </li>
    {/iterate}

		</div>
	</form>
</ul>

<!-- Noticias -->
<ul class="box">
    <li class="item"><a href="#">Notícias</a></li>
</ul>

<!-- Usuário -->
{if $isUserLoggedIn}
  <ul class="box">
    <li class="item header">Usuário</li>
    {if array_intersect(array(ROLE_ID_MANAGER, ROLE_ID_SUB_EDITOR, ROLE_ID_ASSISTANT, ROLE_ID_REVIEWER, ROLE_ID_AUTHOR), $userRoles)}
      <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="dashboard"}">{translate key="navigation.dashboard"}</a></li>
    {/if}
    {if $currentPress}
      <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog"}">{translate key="navigation.catalog"}</a>
      {if array_intersect(array(ROLE_ID_MANAGER, ROLE_ID_SUB_EDITOR), $userRoles)}
        <li class="item">
          <a href="#">{translate key="navigation.management"}</a>
            <li class="item">
              <a href="{url router=$smarty.const.ROUTE_PAGE page="manageCatalog"}">{translate key="navigation.catalog"}</a>
            </li>
            {if array_intersect(array(ROLE_ID_MANAGER), $userRoles)}
            <li class="item">
              <a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="index"}">{translate key="navigation.settings"}</a>
                <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="press"}">{translate key="context.context"}</a></li>
                <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="website"}">Website</a></li>
                <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="publication"}">Fluxo de Trabalho</a></li>
                <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="distribution"}">Distribuição</a></li>
                <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="access"}">{translate key="navigation.access"}</a></li>
            </li>
            <li class="item">
              <a  href="{url router=$smarty.const.ROUTE_PAGE page="management" op="tools" path="index"}">{translate key="navigation.tools"}</a>
                <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="manager" op="importexport"}">{translate key="navigation.tools.importExport"}</a></li>
                <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="tools" path="statistics"}">{translate key="navigation.tools.statistics"}</a></li>
            </li>
            {/if}
        </li>
      {/if}{* ROLE_ID_MANAGER || ROLE_ID_SUB_EDITOR *}
    {/if}
</ul>
{/if}{* $isUserLoggedIn *}

<!-- Sobre -->
  <ul class="box">
    <li class="item header">Sobre</li>
    <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="contact"}">{translate key="about.contact"}</a></li>
    <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="description"}">{translate key="about.description"}</a></li>
    <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="sponsorship"}">Patrocínio da editora</a></li>
    <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="editorialTeam"}">{translate key="about.editorialTeam"}</a></li>
    <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="editorialPolicies"}">{translate key="about.editorialPolicies"}</a></li>
    <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="submissions"}">{translate key="about.submissions"}</a></li>
</ul>
