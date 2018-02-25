{if !isset($content_only) || !$content_only}
					</div><!-- #center_column -->
					{if isset($right_column_size) && !empty($right_column_size)}
						<div id="right_column" class="col-xs-12 col-sm-{$right_column_size|intval} column">{$HOOK_RIGHT_COLUMN}</div>
					{/if}
					</div><!-- .row -->
				</div><!-- #columns -->
			</div><!-- .columns-container -->
			{if isset($HOOK_FOOTER)}
				<!-- Footer -->
				<div class="footer-container">
					<footer id="footer" class="container">
						<div class="row">
							<img src="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}/img/cms/global_assets/logo-footer.png" class="img-responsive center-block" alt="FUR HOME Logo engraved" />
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-6 col-md-3">
								{hook h='displayFooter' mod='blockcategories'}
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3 col-md-push-6">
								{hook h='displayFooter' mod='blockmyaccountfooter'}
							</div>
							<div class="col-xs-12 col-sm-12 col-md-6 col-md-pull-3" id="cms_footer_block">
								{hook h='displayFooter' mod='blockcms'}
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 col-sm-6 col-md-3 footer-block">
								{hook h='displayFooter' mod='blocknewsletter'}
								{hook h='displayFooter' mod='blocksocial'}
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3 col-md-push-6">
								{hook h='displayFooter' mod='blockcontactinfos'}
							</div>
							<div class="col-xs-12 col-sm-12 col-md-6 col-md-pull-3 footer-block" id="footer_map">
								<h4>{if $lang_iso=='el'}Που θα μας βρείτε:{else}Find us on the map:{/if}</h4>
								<a href="https://goo.gl/maps/GQ839M3fdPJ2" target="_blank" rel="nofollow"><img src="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}/img/cms/global_assets/find-us-on-map-min.jpg" data-pin-nopin="true" class="img-responsive center-block" alt="Find FUR HOME on the map"></a>
							</div>
						</div>
{*
*						<div class="row">{$HOOK_FOOTER}</div>
*						<div class="row">
*							<div class="col-xs-12">
*								<span class="pull-left" id="footer_cc_img"><img src="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}/img/cc-logos.png" data-pin-nopin="true" alt="Credit Card logos"/></span>
*								<span class="pull-left">
*									<p id="footer_copytext">&copy; 2018 FUR HOME<br>
*								</span>
*							</div>
*						</div>
*}
						<div class="row" id="c-notice">
							<p><span class="pull-left">&copy; 2018 FUR HOME</span>
								<span class="pull-right"><i class="icon-cc-paypal fa-2x" aria-hidden="true"></i> <i class="icon-cc-visa fa-2x" aria-hidden="true"></i> <i class="icon-cc-mastercard fa-2x" aria-hidden="true"></i></span></p>
						</div>
					</footer>
					<div id="floating-buttons">
						{hook h='displayFooter' mod='scrolltop'}
						<a href="//www.furhome.gr/gift-voucher.php" class="btn" id="btn-float-offer" onclick="ga('send', 'event', 'button', 'click', 'offers');"><i class="icon-gift" aria-hidden="true"></i></a>  <a href="//www.furhome.gr/shop/en/contact-us" class="btn" id="btn-float-contact"><i class="icon-envelope" aria-hidden="true"></i></a>
					</div>
				</div><!-- #footer -->
				<div class="unvisible">
					{hook h='displayFooter' mod='statsdata'}
					{hook h='displayFooter' mod='themeconfigurator'}
				</div>
			{/if}
		</div><!-- #page -->
{/if}
{include file="$tpl_dir./global.tpl"}
	<script async defer data-pin-hover="true" data-pin-tall="true" data-pin-lang="en" data-pin-save="true" src="//assets.pinterest.com/js/pinit.js"></script>
	<script async src='https://www.google-analytics.com/analytics.js'></script>
	</body>
</html>
