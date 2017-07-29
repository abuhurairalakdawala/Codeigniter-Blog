<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div class="list-group pmd-z-depth pmd-card-list">
				<div class="list-group-item">
					Searching : <strong>*<?=xss_safe($this->input->get('query'))?>*</strong>
				</div>
				<?php if(count($blogs) == 0): ?>
					<div class="list-group-item">
						<h3 class="text-center">No Results Found!</h3>
					</div>
				<?php endif; ?>
				<?php foreach ($blogs as $key => $blog): ?>
					<div class="list-group-item">
						<h3 class="list-group-item-heading"><a href="<?=base_url('blog/item/'.$blog->id)?>"><?=xss_safe($blog->blog_title)?></a></h3>
						<p class="list-group-item-text"><?=strip_blog_list(substr($blog->blog_content, 0, 500))?></p>
					</div>
				<?php endforeach; ?>
			    </a>
			</div>
		</div>
	</div>
</div>
