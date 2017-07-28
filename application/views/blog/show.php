<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div class="list-group pmd-z-depth pmd-card-list">
				<?php foreach ($blogs as $key => $blog): ?>
					<div class="list-group-item">
						<h3 class="list-group-item-heading"><a href="<?=base_url('blog/item/'.$blog->id)?>"><?=xss_safe($blog->blog_title)?></a></h3>
						<p class="list-group-item-text"><?=strip_blog_list(substr($blog->blog_content, 0, 500))?></p>
						<a href="#"><b>EDIT</b></a> /
						<a href="#" data-id="<?=$blog->id?>" class="delete-blog"><b>DELETE</b></a>
					</div>
				<?php endforeach; ?>
			    </a>
			</div>
		</div>
	</div>
</div>

<div tabindex="-1" class="modal fade" id="simple-dialog" style="display: none;" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<p></p>
			</div>
		</div>
	</div>
</div>
