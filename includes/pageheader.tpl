<div class="header-lined {if $templatefile eq 'clientregister'}wdes-register-title-page{/if}">
    {if $showbreadcrumb}{include file="$template/includes/breadcrumb.tpl"}{/if}
    {if $title}<h1><span>{$title}</span>{/if}{if $desc} <small class="wdes-desc-alternate">{$desc}</small></h1>{/if}
</div>