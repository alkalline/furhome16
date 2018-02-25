{*
* 2007-2016 PrestaShop
* NOTICE OF LICENSE
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{if $block == 1}
	<!-- Block CMS module -->
	{foreach from=$cms_titles key=cms_key item=cms_title}
		<section id="informations_block_left_{$cms_key}" class="block informations_block_left">
			<p class="title_block">
				<a href="{$cms_title.category_link|escape:'html':'UTF-8'}">
					{if !empty($cms_title.name)}{$cms_title.name}{else}{$cms_title.category_name}{/if}
				</a>
			</p>
			<div class="block_content list-block">
				<ul>
					{foreach from=$cms_title.categories item=cms_page}
						{if isset($cms_page.link)}
							<li class="bullet">
								<a href="{$cms_page.link|escape:'html':'UTF-8'}" title="{$cms_page.name|escape:'html':'UTF-8'}">
									{$cms_page.name|escape:'html':'UTF-8'}
								</a>
							</li>
						{/if}
					{/foreach}
					{foreach from=$cms_title.cms item=cms_page}
						{if isset($cms_page.link)}
							<li>
								<a href="{$cms_page.link|escape:'html':'UTF-8'}" title="{$cms_page.meta_title|escape:'html':'UTF-8'}">
									{$cms_page.meta_title|escape:'html':'UTF-8'}
								</a>
							</li>
						{/if}
					{/foreach}
					{if $cms_title.display_store}
						<li>
							<a href="{$link->getPageLink('stores')|escape:'html':'UTF-8'}" title="{l s='Our stores' mod='blockcms'}">
								{l s='Our stores' mod='blockcms'}
							</a>
						</li>
					{/if}
				</ul>
			</div>
		</section>
	{/foreach}
	<!-- /Block CMS module -->
{else}
	<!-- Block CMS module footer -->
	<section class="footer-block col-xs-12 col-sm-6" id="block_various_links_footer">
		<h4>{l s='Information' mod='blockcms'}</h4>
		<ul class="toggle-footer">
			{if isset($show_price_drop) && $show_price_drop && !$PS_CATALOG_MODE}
				<li class="item">
					<a href="{$link->getPageLink('prices-drop')|escape:'html':'UTF-8'}" title="{l s='Specials' mod='blockcms'}">
						{l s='Specials' mod='blockcms'}
					</a>
				</li>
			{/if}
			{if isset($show_new_products) && $show_new_products}
			<li class="item">
				<a href="{$link->getPageLink('new-products')|escape:'html':'UTF-8'}" title="{l s='New products' mod='blockcms'}">
					{l s='New products' mod='blockcms'}
				</a>
			</li>
			{/if}
			{if isset($show_best_sales) && $show_best_sales && !$PS_CATALOG_MODE}
				<li class="item">
					<a href="{$link->getPageLink('best-sales')|escape:'html':'UTF-8'}" title="{l s='Top sellers' mod='blockcms'}">
						{l s='Top sellers' mod='blockcms'}
					</a>
				</li>
			{/if}
			{if isset($display_stores_footer) && $display_stores_footer}
				<li class="item">
					<a href="{$link->getPageLink('stores')|escape:'html':'UTF-8'}" title="{l s='Our stores' mod='blockcms'}">
						{l s='Our stores' mod='blockcms'}
					</a>
				</li>
			{/if}
			<!--{foreach from=$cmslinks item=cmslink}
				{if $cmslink.meta_title != ''}
					<li class="item">
						<a href="{$cmslink.link|escape:'html':'UTF-8'}" title="{$cmslink.meta_title|escape:'html':'UTF-8'}">
							{$cmslink.meta_title|escape:'html':'UTF-8'}
						</a>
					</li>
				{/if}
			{/foreach}-->
			<!-- INFORMATION CATEGORY -->
			<li class="item">
				<a href="{$link->getCMSLink('4', 'fur-home')|escape:'html'}" title="{l s='About us' mod='blockcms'}">
					{if $lang_iso=='el'}Σχετικά με την FUR HOME{elseif $lang_iso=='ru'}О нас FUR HOME{else}About FUR HOME{/if}
					{*{l s='About us' mod='blockcms'}*}
				</a>
			</li>
			<li class="item">
				<a href="{$link->getCMSLink('9', 'resellers-area')|escape:'html'}" title="{l s='Resellers area' mod='blockcms'}">
					<strong>{if $lang_iso=='el'}Χονδρική & Μεταπωλητές{elseif $lang_iso=='ru'}Оптовики{else}Wholesales & Affiliates{/if}</strong>
					{*{l s='Wholesales & Affiliates' mod='blockcms'}*}
				</a>
			</li>
			<li class="item">
				<a href="{$link->getCMSLink('10', 'product-care')|escape:'html'}" title="{l s='Product care' mod='blockcms'}">
					{if $lang_iso=='el'}Περιποίηση Προϊόντων{elseif $lang_iso=='ru'}Уход за изделиями{else}Product care{/if}
					{*{l s='Product care' mod='blockcms'}*}
				</a>
			</li>
			<li class="item">
				<a href="{$link->getCMSLink('11', 'frequently-asked-questions')|escape:'html'}" title="{l s='Frequently Asked Questions' mod='blockcms'}">
					{if $lang_iso=='el'}Συχνές Ερωτήσεις{elseif $lang_iso=='ru'}Часто задаваемые вопросы{else}Frequently Asked Questions{/if}
					{*{l s='Frequently Asked Questions' mod='blockcms'}*}
				</a>
			</li>
			<li class="item">
				<a href="//www.furhome.gr/blog" title="Blog" target="_blank">Blog</a>
			</li>
			{if isset($show_contact) && $show_contact}
			<li class="item">
				<a href="{$link->getPageLink($contact_url, true)|escape:'html':'UTF-8'}" title="{l s='Contact us' mod='blockcms'}">
					{l s='Contact us' mod='blockcms'}
				</a>
			</li>
			{/if}
			{if isset($show_sitemap) && $show_sitemap}
			<li>
				<a href="{$link->getPageLink('sitemap')|escape:'html':'UTF-8'}" title="{l s='Sitemap' mod='blockcms'}">
					{l s='Sitemap' mod='blockcms'}
				</a>
			</li>
			{/if}
		</ul>
		<!--{$footer_text}-->
	</section>
	<section class="footer-block col-xs-12 col-sm-6" id="block_various_links_footer">
		<h4>{if $lang_iso=='el'}Υποστήριξη{elseif $lang_iso=='ru'}помощь{else}Support{/if}</h4>
		{*<h4>{l s='Support' mod='blockcms'}</h4>*}
		<ul class="toggle-footer">
<!--			{foreach from=$cmslinks item=cmslink}
				{if $cmslink.meta_title != ''}
					<li class="item">
						<a href="{$cmslink.link|escape:'html':'UTF-8'}" title="{$cmslink.meta_title|escape:'html':'UTF-8'}">
							{$cmslink.meta_title|escape:'html':'UTF-8'}
						</a>
					</li>
				{/if}
			{/foreach}-->
			<!-- SUPPORT CATEGORY -->
			<li class="item">
				<a href="{$link->getCMSLink('6', 'how-to-order')|escape:'html'}" title="{l s='How to order' mod='blockcms'}">
					{if $lang_iso=='el'}Πως να παραγγείλετε{elseif $lang_iso=='ru'}Как сделать заказ{else}How to order{/if}
					{*{l s='How to order' mod='blockcms'}*}
				</a>
			</li>
			<li class="item">
				<a href="{$link->getCMSLink('5', 'secure-payment')|escape:'html'}" title="{l s='Secure payment' mod='blockcms'}">
					{if $lang_iso=='el'}Ασφαλείς Συναλλαγές{elseif $lang_iso=='ru'}Безопасная оплата{else}Secure payment{/if}
					{*{l s='Secure payment' mod='blockcms'}*}
				</a>
			</li>
			<li class="item">
				<a href="{$link->getCMSLink('8', 'warranty')|escape:'html'}" title="{l s='Warranty' mod='blockcms'}">
					{if $lang_iso=='el'}Εγγύηση{elseif $lang_iso=='ru'}Гарантия{else}Warranty{/if}
					{*{l s='Warranty' mod='blockcms'}*}
				</a>
			</li>
			<li class="item">
				<a href="{$link->getCMSLink('1', 'delivery')|escape:'html'}" title="{l s='Delivery' mod='blockcms'}">
					{if $lang_iso=='el'}Αποστολές{elseif $lang_iso=='ru'}Доставки{else}Delivery{/if}
					{*{l s='Delivery' mod='blockcms'}*}
				</a>
			</li>
			<li class="item">
				<a href="{$link->getCMSLink('3', 'terms-and-conditions-of-use')|escape:'html'}" title="{l s='Terms and conditions' mod='blockcms'}">
					{if $lang_iso=='el'}Όροι Χρήσης{elseif $lang_iso=='ru'}Правила и условия использования{else}Terms and conditions{/if}
					{*{l s='Terms and conditions' mod='blockcms'}*}
				</a>
			</li>
		</ul>
	</section>
	{if $display_poweredby}
	<section class="bottom-footer col-xs-12">
		<div>
			{l s='[1] %3$s %2$s - Ecommerce software by %1$s [/1]' mod='blockcms' sprintf=['PrestaShop™', 'Y'|date, '©'] tags=['<a class="_blank" href="http://www.prestashop.com">'] nocache}
		</div>
	</section>
	{/if}
	<!-- /Block CMS module footer -->
{/if}
