<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="{$charset}" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>

  {include file="$template/includes/head.tpl"} {$headoutput}

</head>

<body class="body" data-phone-cc-input="{$phoneNumberInputStyle}">

  {$headeroutput}

  <!-- Loading -->
  <div class="wdes-loading">
    <div class="wdes-loader wdes-loader-icon">
      <div class="line line1"></div>
      <div class="line line2"></div>
      <div class="line line3"></div>
    </div>
  </div>

  <div class="wdes-wrapper">

    {if ($templatefile ne 'login') && ($templatefile ne 'clientregister')}
    <!-- Wdes SideBar -->
    {include file="$template/wdes/wdes-sidebar.tpl"}
    <!-- WHMCS Sidebar -->
    {if ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren()) && $templatefile ne 'configureproductdomain' && $templatefile ne 'configureproduct' && $templatefile ne 'viewcart'}
    <div class="whm-sidebar">
      {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar} {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
    </div>
    {/if}
    {/if}
    <!-- Wdes Content -->
    <div class="wdes-content">
      <!-- Header -->
      <section id="header">
        <div class="container">
          <ul class="top-nav">
            <!-- Search -->
            <li>
              <form class="header-search-frame" role="form" method="post" action="clientarea.php?action=kbsearch">
                <div class="home-kb-search">
                  <input type="text" name="search" class="form-control input-lg" placeholder="{$LANG.knowledgebasesearch}" autocomplete="off">
                  <i class="fal fa-search"></i>
                </div>
              </form>
            </li>
            <!-- Language -->
            {if $languagechangeenabled && count($locales) > 1}
            <li class="wdes-language-item">
              <a href="#" class="choose-language" data-toggle="popover" id="languageChooser">
                <span class="fal fa-language"></span>
              </a>
              <div id="languageChooserContent" class="hidden">
                <ul>
                  {foreach $locales as $locale}
                  <li>
                    <a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a>
                  </li>
                  {/foreach}
                </ul>
              </div>
            </li>
            {/if}
          </ul>
          <!-- Logo -->
          <a href="{$WEB_ROOT}/index.php" class="logo">
            <img src="{$WEB_ROOT}/templates/{$template}/img/theme-dark-logo.png" alt="{$companyname}">
          </a>
        </div>
      </section>
      <section class="col-md-12" id="main-body">
        {include file="$template/includes/verifyemail.tpl"}
        <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
          <div class="row">
            {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())} {if $primarySidebar->hasChildren()
            && !$skipMainBodyContainer}
            <div class="col-md-12">
              {include file="$template/includes/pageheader.tpl" showbreadcrumb=true desc=$tagline}
            </div>
            {/if} {/if}
            <!-- Container for main page display content -->
            <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-12{else}col-xs-12{/if} main-content">
              {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
              {include file="$template/includes/pageheader.tpl" showbreadcrumb=true desc=$tagline} {/if}