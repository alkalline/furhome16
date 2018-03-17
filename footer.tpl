{if !isset($content_only) || !$content_only}
					</div><!-- #center_column -->
					{if isset($right_column_size) && !empty($right_column_size)}
						<div id="right_column" class="col-xs-12 col-sm-{$right_column_size|intval} column">{$HOOK_RIGHT_COLUMN}</div>
					{/if}
					</div><!-- .row -->
				<hr>
				<div class="row">
					<div class="col-xs-12 col-sm-3">
						<img src="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}/img/cms/global_assets/bespoke-service.jpg" class="img-responsive center-block grayscale" data-pin-nopin="true" /><h3 class="text-center">{if $lang_iso=='el'}Κατά Παραγγελία{else}Bespoke services{/if}</h3>
						<p>&nbsp;{if $lang_iso=='el'}Αποκτήστε ένα μοναδικό χαλί, ραμμένο στα μέτρα που θέλετε. Ράβουμε κάθε χαλί κατά παραγγελία και μπορούμε να τροποποιήσουμε όλα τα χαρακτηριστικά του για να ταιριάζουν στις ανάγκες σας.{else}You will get a one-of-a-kind rug, made just for you. We craft each rug upon order and we can customize any and all features on request to fit your exact needs.{/if}</p>
					</div>
					<div class="col-xs-12 col-sm-3">
						<img src="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}/img/cms/global_assets/quality-assurance.jpg" class="img-responsive center-block grayscale" data-pin-nopin="true" /><h3 class="text-center">{if $lang_iso=='el'}Εγγυημένη Ποιότητα{else}Guaranteed quality{/if}</h3>
						<p>&nbsp;{if $lang_iso=='el'}Κάθε χαλί μας περνάει από επιθεώρηση για να είμαστε σίγουροι ότι σας δίνουμε την καλύτερη ποιότητα. Παρέχουμε <a href="//www.furhome.gr/shop/el/content/warranty-8">εγγύηση κατασκευαστή</a> επειδή ξέρουμε ότι παράγουμε κορυφαία προϊόντα.{else}Every rug that we ship has passed from inspection to make sure that you will get the highest quality possible. We offer manufacturer's <a href="//www.furhome.gr/shop/en/content/warranty-8">warranty</a> because we know we create top products.{/if}</p>
					</div>
					<div class="col-xs-12 col-sm-3">
						<img src="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}/img/cms/global_assets/eco-friendly-leather.jpg" class="img-responsive center-block grayscale" data-pin-nopin="true" /><h3 class="text-center">{if $lang_iso=='el'}100% Φυσικά Υλικά{else}100% Natural Materials{/if}</h3>
						<p>&nbsp;{if $lang_iso=='el'}Τα προϊόντα μας κατασκευάζονται από αληθινή γούνα & γνήσιο δέρμα και είναι πραγματικά <a href="//www.furhome.gr/blog/eco-friendly-decoration-using-cowhide/" target="_blank">οικολογικά</a>, υποαλλεργικά και βιοδιασπώμενα.{else}Our products are made from real fur & genuine leather and are truly <a href="//www.furhome.gr/blog/eco-friendly-decoration-using-cowhide/" target="_blank">eco-friendly</a>, hypoallergenic and biodegradable.{/if}</p>
					</div>
					<div class="col-xs-12 col-sm-3">
						<img src="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}/img/cms/global_assets/free-worldwide-shipping.jpg" class="img-responsive center-block grayscale" data-pin-nopin="true" /><h3 class="text-center">{if $lang_iso=='el'}Δωρεάν Μεταφορικά{else}Free shipping on all orders{/if}</h3>
						<p>&nbsp;{if $lang_iso=='el'}Σωστά διαβάσατε! Πληρώνουμε εμείς τα έξοδα αποστολής, ώστε να έχετε ένα χαλί FUR HOME στο σπίτι ή το γραφείο σας όπου κι αν μένετε.<br>&nbsp;Σημείωση: παραδίδουμε στον μεταφορέα εντός 1-3 εβδομάδων.{else}That's right! We have eliminated the shipping costs so you can have a FUR HOME rug for your house or office no matter where you are located.<br>&nbsp;Please note: we deliver to the carrier within 1-3 weeks.{/if}</p>
					</div>
				</div><!-- #columns -->
			</div><!-- .columns-container -->
			{if isset($HOOK_FOOTER)}
				<!-- Footer -->
				<div class="footer-container">
					<footer id="footer" class="container">
						<div class="row">
							<img src="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}/img/cms/global_assets/logo-footer.png" class="img-responsive center-block" alt="FUR HOME Logo engraved"  data-pin-nopin="true" />
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
{*					<div class="row">{$HOOK_FOOTER}</div>*}
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
