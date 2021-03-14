<img class="domain-bg" src="{$WEB_ROOT}/templates/{$template}/img/theme-dark-domain-bg.png" alt="domain">
<section id="home-banner">
  <div class="container text-center">
    {if $registerdomainenabled || $transferdomainenabled}
      <h2>{$LANG.homebegin}</h2>
      <form method="post" action="domainchecker.php" id="frmDomainHomepage">
        <input type="hidden" name="transfer" />
        <div class="row">
          <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
            <div class="input-group input-group-lg">
              <input type="text" class="form-control" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.required'}" />
              <span class="input-group-btn">
                {if $registerdomainenabled}
                  <input type="submit" class="btn search{$captcha->getButtonClass($captchaForm)}" value="{$LANG.search}" id="btnDomainSearch" /> {/if} {if $transferdomainenabled}
                <input type="submit" id="btnTransfer" class="btn transfer{$captcha->getButtonClass($captchaForm)}" value="{$LANG.domainstransfer}" /> {/if}
              </span>
            </div>
          </div>
        </div>
        {include file="$template/includes/captcha.tpl"}
      </form>
    {else}
      <h2>{$LANG.doToday}</h2>
    {/if}
  </div>
</section>

<div class="home-shortcuts">
  <div class="row">
    <div class="col-sm-12 col-md-12">
      <ul>
        {if $registerdomainenabled || $transferdomainenabled}
        <li>
          <a id="btnBuyADomain" href="domainchecker.php">
            <i class="fal fa-globe"></i>
            <p>
              {$LANG.buyadomain}
              <span>&raquo;</span>
            </p>
          </a>
        </li>
        {/if}
        <li>
          <a id="btnOrderHosting" href="cart.php">
            <i class="fal fa-hdd"></i>
            <p>
              {$LANG.orderhosting}
              <span>&raquo;</span>
            </p>
          </a>
        </li>
        <li>
          <a id="btnMakePayment" href="clientarea.php">
            <i class="fal fa-credit-card"></i>
            <p>
              {$LANG.makepayment}
              <span>&raquo;</span>
            </p>
          </a>
        </li>
        <li>
          <a id="btnGetSupport" href="submitticket.php">
            <i class="fal fa-envelope"></i>
            <p>
              {$LANG.getsupport}
              <span>&raquo;</span>
            </p>
          </a>
        </li>
      </ul>
    </div>
  </div>
</div>

{if $twitterusername || $announcements}
<div class="wdes-announcement-hp">
  {* Announcements *}
  {if $announcements}
  <div class="row">
    {foreach $announcements as $announcement}
    {if $announcement@index < 1} <div class="col-lg-12 announcement-single">
      <h3>
        <span class="label label-default">
          {$carbon->translatePassedToFormat($announcement.rawDate, 'M jS')}
        </span>
        <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}">{$announcement.title}</a>
      </h3>

      <blockquote>
        <p>
          {if $announcement.text|strip_tags|strlen < 350} {$announcement.text} {else} {$announcement.summary} {/if} </p>
      </blockquote>

      {if $announcementsFbRecommend}
      <script>
        (function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) {
            return;
          }
          js = d.createElement(s);
          js.id = id;
          js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
      </script>
      <div class="fb-like hidden-sm hidden-xs" data-colorscheme="dark" data-layout="button" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
      <div class="fb-like hidden-lg hidden-md" data-colorscheme="dark" data-layout="button" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
      {/if}
  </div>
  {/if}
  {/foreach}
</div>
{elseif $twitterusername}
{* Tweets *}
<div id="twitterFeedOutput">
  <p class="text-center">
    <img src="{$BASE_PATH_IMG}/loading.gif" />
  </p>
</div>
<script type="text/javascript" src="{assetPath file='twitter.js'}"></script>
{/if}
</div>
{/if}