<div class="wdes-block">
    {if $twittertweet}
        <div class="pull-right">
            <a href="https://twitter.com/share" class="twitter-share-button" data-count="vertical" data-via="{$twitterusername}">Tweet</a><script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
        </div>
    {/if}

    <div class="inner-announce-text">{$text}</div>

    <p>
        <strong>{$timestamp|date_format:"%A, %B %e, %Y"}</strong>
    </p>

    {if $facebookrecommend}
        <div class="fb-wdes-bg">
            {literal}
            <div id="fb-root">
            </div>
            <script>(function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {return;}
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));</script>
            {/literal}
            <div class="fb-like" data-href="{fqdnRoutePath('announcement-view', $id, $urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend">
            </div>
        </div>
    {/if}

    {if $facebookcomments}
        <div class="fb-wdes-bg">
            {literal}
            <div id="fb-root">
            </div>
            <script>(function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {return;}
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));</script>
            {/literal}
            <fb:comments href="{fqdnRoutePath('announcement-view', $id, $urlfriendlytitle)}" num_posts="5" width="500"></fb:comments>
        </div>
    {/if}
    <br>
    <p>
        <a href="{routePath('announcement-index')}" class="wdes-2nd-btn">{$LANG.clientareabacklink}</a>
    </p>
</div>