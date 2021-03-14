<ol class="breadcrumb {if $templatefile eq 'clientregister'}wdes-register-breadcrumb{/if}">
    {foreach $breadcrumb as $item}
        <li{if $item@last} id="active-link" class="active"{/if}>
            {if !$item@last}<a href="{$item.link}">{/if}
            {$item.label}
            {if !$item@last}</a>{/if}
        </li>
    {/foreach}
</ol>