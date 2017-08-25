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
					<footer id="footer"  class="container">
						<div class="row">{$HOOK_FOOTER}</div>
						<div class="row">
							<div class="col-xs-12">
								<span class="pull-left" id="footer_cc_img"><img src="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}/img/cc-logos.png" data-pin-nopin="true" alt="Credit Card logos"/></span>
								<span class="pull-left">
									<p id="footer_copytext">&copy; 2017 FUR HOME<br>
								</span>
							</div>
						</div>
					</footer>
				</div><!-- #footer -->
			{/if}
		</div><!-- #page -->
{/if}
{include file="$tpl_dir./global.tpl"}
	<script async defer data-pin-hover="true" data-pin-tall="true" data-pin-lang="en" data-pin-save="true" src="//assets.pinterest.com/js/pinit.js"></script>
	<script async src='https://www.google-analytics.com/analytics.js'></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('[data-toggle="popover"]').popover();
		});
	</script>
	</body>
</html>
