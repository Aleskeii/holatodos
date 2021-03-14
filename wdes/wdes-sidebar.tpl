<div class="wdes-sidebar">
  <section id="main-menu">
    <nav id="nav" class="wdes-nav-side navbar navbar-default navbar-main" role="navigation">
      <!-- Brand and toggle get grouped for better mobile display -->
      <!-- Logo -->
      <a href="{$WEB_ROOT}/index.php" class="logo-mob">
          <img src="{$WEB_ROOT}/templates/{$template}/img/theme-dark-logo.png" alt="{$companyname}">
      </a>
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#primary-nav">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="primary-nav">
        <!-- Account Details -->
        <div class="account-details">
          <!-- Img -->
          {if $loggedin}
            <img class="gravatar wdes-profile-pic" src="{gravatar email=$clientsdetails.email rating="PG" }" alt="Avatar" title="Avatar for {$loggedinuser.firstname}" width="100" height="100">
          {/if}
          <!-- Account -->
          <div class="wdes-user-area-nav">
            {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}
          </div>
        </div>
        <!-- Shortcuts -->
        <ul class="shortcuts">
          <!-- Cart -->
          <li data-toggle="tooltip" data-placement="bottom" title="Shopping Cart" class="primary-action">
            <a href="{$WEB_ROOT}/cart.php?a=view">
              <i class="fal fa-shopping-cart"></i>
            </a>
          </li>
          {if $loggedin}
          <!-- Notifications -->
          <li data-toggle="tooltip" data-placement="bottom" title="Notifications" class="wdes-notifications">
            <a data-toggle="popover" id="accountNotifications" data-placement="bottom">
              <i class="fal fa-bell"></i>
              {if count($clientAlerts) > 0}
              <span class="wdes-notification-alert">{lang key='notificationsnew'}</span>{/if}
            </a>
            <div id="accountNotificationsContent" class="hidden">
              <ul class="client-alerts">
                {foreach $clientAlerts as $alert}
                <li>
                  <a href="{$alert->getLink()}">
                    <i class="fal fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                    <div class="message">{$alert->getMessage()}</div>
                  </a>
                </li>
                {foreachelse}
                <li class="none">
                  {$LANG.notificationsnone}
                </li>
                {/foreach}
              </ul>
            </div>
          </li>
          <li data-toggle="tooltip" data-placement="bottom" title="Logout" class="primary-action">
            <a href="{$WEB_ROOT}/logout.php">
              <i class="fal fa-arrow-right"></i>
            </a>
          </li>
          {/if}
          <!-- Vistors -->
          {if not $loggedin}
          <li data-toggle="tooltip" data-placement="bottom" title="{$LANG.login}">
              <a href="{$WEB_ROOT}/clientarea.php"><span class="fal fa-user"></span></a>
          </li>
          {if $condlinks.allowClientRegistration}
          <li data-toggle="tooltip" data-placement="bottom" title="{$LANG.register}">
              <a href="{$WEB_ROOT}/register.php"><span class="fal fa-user-plus"></span></a>
          </li>
          {/if} {/if}
          {if $adminMasqueradingAsClient || $adminLoggedIn}
          <li data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}">
            <a href="{$WEB_ROOT}/logout.php?returntoadmin=1">
              <i class="fal fa-sign-out-alt"></i>
            </a>
          </li>
          {/if}
        </ul>
        <div class="wdes-custom-nav panel-group" id="wdesaccordion" role="tablist" aria-multiselectable="true">
          {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
        </div>
        <!-- LiveChat -->
        <div class="align-center">
          <a class="wdes-livechat" href="#"><span class="fas fa-comment-dots"></span> Live Chat</a>
        </div>
      </div>
      <!-- /.navbar-collapse -->
    </nav>
  </section>
</div>