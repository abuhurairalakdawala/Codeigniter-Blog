<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div class="list-group pmd-z-depth pmd-card-list">
				<?php foreach ($blogs as $key => $blog): ?>
					<a href="<?=base_url('blog/item/'.$blog->id)?>" class="list-group-item">
						<h3 class="list-group-item-heading"><?=xss_safe($blog->blog_title)?></h3>
						<p class="list-group-item-text"><?=strip_blog_list(substr($blog->blog_content, 0, 500))?></p>
					</a>
				<?php endforeach; ?>
			    </a>
			</div>
		</div>
	</div>
</div>