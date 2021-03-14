<!-- Styling -->
<link
  href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600%7CRaleway:400,700%7CMontserrat:400,600,700%7CKarla:400,500,600,700%7CPoppins:400,500,600,700"
  rel="stylesheet">
<link href="{assetPath file='all.min.css'}?v={$versionHash}" rel="stylesheet">
{if $language == 'arabic' || $language == 'hebrew' || $language == 'farsi'}
  <link href="{assetPath file='bootstrap-rtl.min.css'}?v={$versionHash}" rel="stylesheet">
{/if}
<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">
<link href="{assetPath file='theme-dark.css'}?v={$versionHash}" rel="stylesheet">
{if $language == 'arabic' || $language == 'hebrew' || $language == 'farsi'}
  <link href="{assetPath file='custom-rtl.css'}?v={$versionHash}" rel="stylesheet">
{/if}
<link href="{assetPath file='responsive.css'}?v={$versionHash}" rel="stylesheet">
<!-- Custom CSS -->
<link href="{assetPath file='wdes-custom.css'}?v={$versionHash}" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
  var csrfToken = '{$token}',
  markdownGuide = '{lang key="markdown.title"}',
  locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
  saved = '{lang key="markdown.saved"}',
  saving = '{lang key="markdown.saving"}',
  whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}",
  requiredText = '{lang key="orderForm.required"}',
  recaptchaSiteKey = "{if $captcha}{$captcha->recaptcha->getSiteKey()}{/if}";
  templateName = "{$template}"   // Wdes
</script>
<script src="{assetPath file='scripts.min.js'}?v={$versionHash}"></script>

{if $templatefile == "viewticket" && !$loggedin}
  <meta name="robots" content="noindex" />
{/if}