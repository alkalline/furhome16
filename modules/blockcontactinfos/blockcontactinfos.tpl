<!-- MODULE Block contact infos -->
<section id="block_contact_infos" class="footer-block col-xs-12">
	<div>
    <h4>{l s='Factory & Showroom' mod='blockcontactinfos'}</h4>
    <ul class="toggle-footer">
      {if $blockcontactinfos_company != ''}
      	<li>
					<h3>{$blockcontactinfos_company|escape:'html':'UTF-8'}</h3><p><i class="icon-map-marker"></i>{if $blockcontactinfos_address != ''}{$blockcontactinfos_address|escape:'html':'UTF-8'}{/if}</p>
      	</li>
      {/if}
      {if $blockcontactinfos_phone != ''}
      	<li>
      		<p><i class="icon-phone"></i>{$blockcontactinfos_phone|escape:'html':'UTF-8'}</p>
      	</li>
      {/if}
			<li>
				<p><i class="fab fa-viber"></i> +30 6944 654 658</a></p>
			</li>
      {if $blockcontactinfos_email != ''}
      	<li>
      		<p><i class="icon-envelope-alt"></i>&nbsp;{mailto address=$blockcontactinfos_email|escape:'html':'UTF-8' encode="hex"}</p>
      	</li>
      {/if}
    </ul>
  </div>
</section>
<!-- /MODULE Block contact infos -->
