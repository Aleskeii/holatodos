<div class="logincontainer{if $linkableProviders} with-social{/if}">

  <div style="text-align: center;">
    {include file="$template/includes/pageheader.tpl" title=$LANG.login desc="{$LANG.restrictedpage}"}
  </div>

  {include file="$template/includes/flashmessage.tpl"}

  <div class="providerLinkingFeedback"></div>

  <div class="row wdes-block">
    <div class="col-sm-{if $linkableProviders}7{else}12{/if}">

      <form method="post" action="{$systemurl}dologin.php" class="login-form" role="form">
        <div class="form-group">
          <label class="wdes-label" for="inputEmail">{$LANG.clientareaemail}</label>
          <input type="email" name="username" class="form-control wdes-input-form" id="inputEmail" placeholder="{$LANG.enteremail}" autofocus>
        </div>

        <div class="form-group">
          <label class="wdes-label" for="inputPassword">{$LANG.clientareapassword}</label>
          <input type="password" name="password" class="form-control wdes-input-form" id="inputPassword" placeholder="{$LANG.clientareapassword}" autocomplete="off">
        </div>

        <div class="checkbox">
          <label>
            <input type="checkbox" name="rememberme" /> {$LANG.loginrememberme}
          </label>
        </div>
        {if $captcha->isEnabled()}
        <div class="text-center margin-bottom">
          {include file="$template/includes/captcha.tpl"}
        </div>
        {/if}
        <div align="center">
          <input id="login" type="submit" class="wdes-submit{$captcha->getButtonClass($captchaForm)}" value="{$LANG.loginbutton}" /> <a href="{routePath('password-reset-begin')}" class="wdes-2nd-btn">{$LANG.forgotpw}</a>
        </div>
        <a class="wdes-new-account" href="{$WEB_ROOT}/register.php"><span class="fal fa-user-plus"></span> {$LANG.orderForm.createAccount}</a>
      </form>

    </div>
    <div class="col-sm-5{if !$linkableProviders} hidden{/if}">
      {include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}
    </div>
  </div>
</div>