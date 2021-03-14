<div class="wdes-block">
    <div class="kb-article-title knb-article">
        <a href="#" class="btn btn-link btn-print" onclick="window.print();return false"><i class="fal fa-print"></i></a>
        <h2>{$kbarticle.title}</h2>
    </div>

    <br>
    {if $kbarticle.voted}
        {include file="$template/includes/alert.tpl" type="success alert-bordered-left" msg="{lang key="knowledgebaseArticleRatingThanks"}" textcenter=true}
    {/if}

    <div class="kb-article-content knb-article">
        {$kbarticle.text}
    </div>

    <ul class="kb-article-details">
        {if $kbarticle.tags }
            <li><i class="fal fa-tag"></i> {$kbarticle.tags}</li>
        {/if}
        <li><i class="fal fa-star"></i> {$kbarticle.useful} {$LANG.knowledgebaseratingtext}</li>
    </ul>
    <div class="clearfix"></div>

    <div class="kb-rate-article hidden-print">
        <form action="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}" method="post">
            <input type="hidden" name="useful" value="vote">
            {if $kbarticle.voted}{$LANG.knowledgebaserating}{else}{$LANG.knowledgebasehelpful}{/if}
            {if $kbarticle.voted}
                {$kbarticle.useful} {$LANG.knowledgebaseratingtext} ({$kbarticle.votes} {$LANG.knowledgebasevotes})
            {else}
                <button type="submit" name="vote" value="yes" class="btn btn-lg btn-link"><i class="fal fa-thumbs-up"></i> {$LANG.knowledgebaseyes}</button>
                <button type="submit" name="vote" value="no" class="btn btn-lg btn-link"><i class="fal fa-thumbs-down"></i> {$LANG.knowledgebaseno}</button>
            {/if}
        </form>
    </div>

    <div class="block-knb">
        {if $kbarticles}
            <div class="kb-also-read">
                <h3>Related Articles</h3>
                <div class="kbarticles">
                    {foreach key=num item=kbarticle from=$kbarticles}
                    <div class="wdes-knb-block custom-o-p">
                        <a href="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}">
                            <i class="glyphicon glyphicon-file"></i> {$kbarticle.title}
                        </a>
                        <p>{$kbarticle.article|truncate:100:"..."}</p>
                    </div>
                    {/foreach}
                </div>
            </div>
        {/if}
    </div>
</div>