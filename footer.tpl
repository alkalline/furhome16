{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
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
								<span class="pull-left" id="footer_cc_img"><img src="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}/img/cc-logos.png" data-pin-nopin="true" alt="Credit Card logos"/></span><p id="footer_copytext">&copy; 2017 FUR HOME</p>
							</div>
						</div>
					</footer>
				</div><!-- #footer -->
			{/if}
		</div><!-- #page -->
{/if}
{include file="$tpl_dir./global.tpl"}
{literal}<!--<script async defer data-pin-hover="true" data-pin-round="true" data-pin-save="false" src="//assets.pinterest.com/js/pinit.js"></script>-->{/literal}
	</body>
</html>
