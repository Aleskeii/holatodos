<div class="wdes-block">
    <form role="form" method="post" action="{routePath('knowledgebase-search')}">
        <div class="input-group input-group-lg kb-search">
            <input type="text" id="inputKnowledgebaseSearch" name="search" class="form-control" placeholder="{$LANG.clientHomeSearchKb}" />
            <span class="input-group-btn">
                <input type="submit" id="btnKnowledgebaseSearch" class="wdes-search-sub btn btn-primary btn-input-padded-responsive" value="{$LANG.search}" />
            </span>
        </div>
    </form>

    <div class="block-knb">
        <h2>{$LANG.knowledgebasecategories}</h2>
        {if $kbcats}
            <div class="row">
                {foreach from=$kbcats name=kbcats item=kbcat}
                    <div class="col-sm-4 wdes-knb-block">
                        <a href="{routePath('knowledgebase-category-view', {$kbcat.id}, {$kbcat.urlfriendlyname})}">
                            <i class="fal fa-folder-open"></i>
                            {$kbcat.name} ({$kbcat.numarticles})
                        </a>
                        <p>{$kbcat.description}</p>
                    </div>
                    {if $smarty.foreach.kbcats.iteration mod 3 == 0}
                        </div><div class="row">
                    {/if}
                {/foreach}
            </div>
        {else}
            {include file="$template/includes/alert.tpl" type="info" msg=$LANG.knowledgebasenoarticles textcenter=true}
        {/if}
    </div>

    <div class="block-knb">
        {if $kbmostviews}

            <h2>{$LANG.knowledgebasepopular}</h2>

            <div class="kbarticles">
                {foreach from=$kbmostviews item=kbarticle}
                    <div class="wdes-knb-block custom-o-p">
                        <a href="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}">
                            <span class="glyphicon glyphicon-file"></span>&nbsp;{$kbarticle.title}
                        </a>
                        <p>{$kbarticle.article|truncate:100:"..."}</p>
                    </div>
                {/foreach}
            </div>

        {/if}
    </div>
</div>