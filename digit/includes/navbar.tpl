{foreach $navbar as $item}
    {if $item->hasChildren()}
        <div class="panel" menuItemName="{$item->getName()}">
            <a role="button" data-toggle="collapse" data-parent="#wdesaccordion" href="#{$item->getId()}" aria-expanded="false" aria-controls="{$item->getId()}">
                {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
                {$item->getLabel()}
                {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
                {if $item->hasChildren()}<span class="fal fa-angle-down"></span>{/if}
            </a>
            <div id="{$item->getId()}" class="wdes-collapse-bg panel-collapse collapse" role="tabpanel">
                <ul>
                    {foreach $item->getChildren() as $childItem}
                        <li menuItemName="{$childItem->getName()}"{if $childItem->getClass()} class="{$childItem->getClass()}"{/if} id="{$childItem->getId()}">
                            <a href="{$childItem->getUri()}"{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if}>
                                {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
                                {$childItem->getLabel()}
                                {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                            </a>
                        </li>
                    {/foreach}
                </ul>
            </div>
        </div>
    {else}
        <div class="panel" menuItemName="{$item->getName()}">
            <a href="{$item->getUri()}"{if $item->getAttribute('target')} target="{$item->getAttribute('target')}"{/if}>
                {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{/if}
                {$item->getLabel()}
                {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
                {if $item->hasChildren()}<span class="fal fa-angle-down"></span>{/if}
            </a>
        </div>
    {/if}
{/foreach}
