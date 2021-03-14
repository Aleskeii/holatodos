{if $sent}
    {include file="$template/includes/alert.tpl" type="success" msg=$LANG.contactsent textcenter=true}
{/if}

{if $errormessage}
    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
{/if}

{if !$sent}
    <form method="post" action="contact.php" class="form-horizontal wdes-block" role="form">
        <input type="hidden" name="action" value="send" />

            <div class="form-group">
                <label for="inputName" class="col-sm-3 control-label wdes-label">{$LANG.supportticketsclientname}</label>
                <div class="col-sm-6">
                    <input type="text" name="name" value="{$name}" class="form-control wdes-input-form" id="inputName" />
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail" class="col-sm-3 control-label wdes-label">{$LANG.supportticketsclientemail}</label>
                <div class="col-sm-6">
                    <input type="email" name="email" value="{$email}" class="form-control wdes-input-form" id="inputEmail" />
                </div>
            </div>
            <div class="form-group">
                <label for="inputSubject" class="col-sm-3 control-label wdes-label">{$LANG.supportticketsticketsubject}</label>
                <div class="col-sm-6">
                    <input type="subject" name="subject" value="{$subject}" class="form-control wdes-input-form" id="inputSubject" />
                </div>
            </div>
            <div class="form-group">
                <label for="inputMessage" class="col-sm-3 control-label wdes-label">{$LANG.contactmessage}</label>
                <div class="col-sm-6">
                    <textarea name="message" rows="6" class="form-control wdes-input-form wdes-textarea-form" id="inputMessage">{$message}</textarea>
                </div>
            </div>

            {if $captcha}
                <div class="text-center margin-bottom">
                    {include file="$template/includes/captcha.tpl"}
                </div>
            {/if}

            <div class="form-group">
                <div class="text-center">
                    <button type="submit" class="wdes-submit{$captcha->getButtonClass($captchaForm)}">{$LANG.contactsend}</button>
                </div>
            </div>

    </form>

{/if}
