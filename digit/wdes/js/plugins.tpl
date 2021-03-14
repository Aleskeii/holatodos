<script>
  $(document).ready(function() {
    $('strong:contains("Dev")').closest('div').css('display', 'none');
    $('h3:contains("{$LANG.store.recommendedForYou}")').css('display', 'none');
    {if $loggedin}
      /* Menu */
      // Home
      $('.wdes-custom-nav .panel > a:contains("{$LANG.clientareanavhome}")').first().addClass('fal fa-home menu-icon-new');
      // Services
      $('.wdes-custom-nav .panel > a:contains("{$LANG.navservices}")').first().addClass('fal fa-cube menu-icon-new');
      // Domains
      $('.wdes-custom-nav .panel > a:contains("{$LANG.navdomains}")').first().addClass('fal fa-globe menu-icon-new');
      // Market Connect
      $('.wdes-custom-nav .panel > a:contains("{$LANG.navWebsiteSecurity}")').first().addClass('fal fa-lock menu-icon-new');
      // Billing
      $('.wdes-custom-nav .panel > a:contains("{$LANG.navbilling}")').first().addClass('fal fa-credit-card menu-icon-new');
      // Support
      $('.wdes-custom-nav .panel > a:contains("{$LANG.navsupport}")').first().addClass('fal fa-life-ring menu-icon-new');
      // Open Ticket
      $('.wdes-custom-nav .panel > a:contains("{$LANG.navopenticket}")').first().addClass('fal fa-tag menu-icon-new');
      // Affiliate
      $('.wdes-custom-nav .panel > a:contains("{$LANG.affiliatestitle}")').first().addClass('fal fal fa-money-bill menu-icon-new');
    {else}
      // Home
      $('.wdes-custom-nav .panel > a:contains("{$LANG.clientareanavhome}")').first().addClass('fal fa-home menu-icon-new');
      // Store
      $('.wdes-custom-nav .panel > a:contains("{$LANG.navStore}")').first().addClass('fal fa-shopping-cart menu-icon-new');
      // Announcements
      $('.wdes-custom-nav .panel > a:contains("{$LANG.announcementstitle}")').first().addClass('fal fa-flag menu-icon-new');
      // Knowledgebase
      $('.wdes-custom-nav .panel > a:contains("{$LANG.knowledgebasetitle}")').first().addClass('fal fa-book menu-icon-new');
      // Network Status
      $('.wdes-custom-nav .panel > a:contains("{$LANG.networkstatustitle}")').first().addClass('fal fa-chart-pie menu-icon-new');
      // Affiliate
      $('.wdes-custom-nav .panel > a:contains("{$LANG.affiliatestitle}")').first().addClass('fal fa-money-bill menu-icon-new');
      // Contact Us
      $('.wdes-custom-nav .panel > a:contains("{$LANG.contactus}")').first().addClass('fal fa-envelope menu-icon-new');
    {/if}
  });
  (function($) {
    'use strict';
    $(window).on('load', function() {
      $('.wdes-loading').fadeOut();
      $('html,body').css('overflow', 'auto');
    });
    $('.wdes-announcement-hp iframe').on("load", function() {
      alert('hi1');
    });
  })(jQuery);
</script>