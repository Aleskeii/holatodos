
                </div><!-- /.main-content -->

            <div class="clearfix"></div>
        </div>
    </div>
</section>
 
</div>  </div>

<section id="footer">
    <div class="container">
        <a href="#" class="back-to-top"><i class="fal fa-chevron-up"></i></a>
        <p>{lang key="copyrightFooterNotice" year=$date_year company=$companyname}</p>
    </div>
</section>

<div id="fullpage-overlay" class="hidden">
    <div class="outer-wrapper">
        <div class="inner-wrapper">
            <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg">
            <br>
            <span class="msg"></span>
        </div>
    </div>
</div>

<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">{$LANG.close}</span>
                </button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body panel-body">
                {$LANG.loading}
            </div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader">
                    <i class="fal fa-circle-notch fa-spin"></i> {$LANG.loading}
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    {$LANG.close}
                </button>
                <button type="button" class="btn btn-primary modal-submit">
                    {$LANG.submit}
                </button>
            </div>
        </div>
    </div>
</div>

{include file="$template/includes/generate-password.tpl"}
{include file="$template/wdes/js/plugins.tpl"}
{$footeroutput}
<script src="{$WEB_ROOT}/templates/{$template}/wdes/js/customizer.js?v={$versionHash}"></script>
</body>
</html>
