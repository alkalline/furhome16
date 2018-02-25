<!-- Block Newsletter module-->
<div id="newsletter_block_left" class="block col-xs-12">
	<h4>{l s='Newsletter' mod='blocknewsletter'}</h4>
	<div class="block_content">
{*
*		<form action="//furhome.us14.list-manage.com/subscribe/post?u=4ff8addfa0b39b0e08c2f5891&amp;id=29d9921f39" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
*		 <div class="form-group{if isset($msg) && $msg } {if $nw_error}form-error{else}form-ok{/if}{/if}" >
*			<input class="inputNew form-control grey newsletter-input email" id="newsletter-input" type="email" name="EMAIL" size="18" value=""  placeholder="email" required />
*      <button type="submit" name="subscribe" id="mc-embedded-subscribe" class="btn btn-default button button-small">
*       <span>{l s='Ok' mod='blocknewsletter'}</span>
*      </button>
*			 <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
*			<div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_4ff8addfa0b39b0e08c2f5891_29d9921f39" tabindex="-1" value=""></div>
*			<input type="hidden" name="action" value="0" />
*			</div>
*		</form>
*}
		<form action="{$link->getPageLink('index', null, null, null, false, null, true)|escape:'html':'UTF-8'}" method="post">
			<div class="form-group{if isset($msg) && $msg } {if $nw_error}form-error{else}form-ok{/if}{/if}" >
				<p>{if $lang_iso=='el'}Εγγραφείτε στην mailing list μας. Ενημερωθείτε πρώτοι για τις προσφορές μας και κερδίστε ένα εκπτωτικό κουπόνι 10% για την πρώτη σας αγορά.{elseif $lang_iso=='ru'}Присоединиться к нашему списку рассылки. Будьте первым, кто узнает о наших предложениях и получите скидку 10%.{else}Join our mailing list. Be the first to know of our offers and get a 10% discount coupon.{/if}</p>
				<input class="inputNew form-control grey newsletter-input" id="newsletter-input" type="text" name="email" size="18" value="{if isset($msg) && $msg}{$msg}{elseif isset($value) && $value}{$value}{else}{l s='Enter your e-mail' mod='blocknewsletter'}{/if}" />
          <button type="submit" name="submitNewsletter" class="btn btn-default button button-small">
              <span>{l s='Ok' mod='blocknewsletter'}</span>
          </button>
				<input type="hidden" name="action" value="0" />
			</div>
		</form>
	</div>
    {hook h="displayBlockNewsletterBottom" from='blocknewsletter'}
</div>
<!-- /Block Newsletter module-->
{strip}
{if isset($msg) && $msg}
{addJsDef msg_newsl=$msg|@addcslashes:'\''}
{/if}
{if isset($nw_error)}
{addJsDef nw_error=$nw_error}
{/if}
{addJsDefL name=placeholder_blocknewsletter}{l s='Enter your e-mail' mod='blocknewsletter' js=1}{/addJsDefL}
{if isset($msg) && $msg}
	{addJsDefL name=alert_blocknewsletter}{l s='Newsletter : %1$s' sprintf=$msg js=1 mod="blocknewsletter"}{/addJsDefL}
{/if}
{/strip}
