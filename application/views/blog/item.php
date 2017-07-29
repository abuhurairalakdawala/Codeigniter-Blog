<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div class="pmd-card">
				<div class="pmd-card-body">
					<h1><?=xss_safe($blog->blog_title)?></h1>
					<p class="blog-attribute"><i class="material-icons">query_builder</i> Dated : <?=date('d/m/Y h:iA', strtotime($blog->created_at))?></p>
					<hr>
					<img class="img-responsive" src="<?=base_url('assets/images/blogs/'.$blog->blog_banner)?>"><br>
					<?=strip_blog_item($blog->blog_content)?>
					<hr>
					<?=form_open('blog/add_comment/'.$blog->id,'class="comment-form"')?>
						<div class="form-group">
							<textarea class="form-control" name="comment_text" placeholder="Enter Comments..."></textarea>
						</div>
						<div class="form-group">
            				<button class="btn pmd-ripple-effect btn-primary submit-btn" type="submit">Submit</button>
						</div>
					<?=form_close()?>
					<div id="display-comments">
						<?php if(count($comments) > 0): ?>
						<ul class="list-group pmd-z-depth pmd-list pmd-card-list">
							<?php foreach ($comments as $comment): ?>
							    <li class="list-group-item">
							        <h3 class="list-group-item-heading">@<?=$comment->username?></h3>
							        <span class="list-group-item-text"><?=xss_safe($comment->comments)?></span>
							    </li>
							<?php endforeach; ?>
						</ul>
						<?php endif; ?>
					</div>
				</div>
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
