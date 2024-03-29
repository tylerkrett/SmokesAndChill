<?php if (count($languages) > 1) { ?>
<div class="box-language">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
  <div class="btn-group toggle-wrap">
	<span class="toggle">
	<?php foreach ($languages as $language) { ?>
	<?php if ($language['code'] == $code) { ?>
	<?php echo $language['name']; ?>
	<?php } ?>
	<?php } ?>
	<span class="hidden-xs hidden-sm hidden-md hidden"><?php echo $text_language; ?></span> </span>
	<ul class="toggle_cont pull-right">
	  <?php foreach ($languages as $language) { ?>
	  <li><a href="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></a></li>
	  <?php } ?>
	</ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>
