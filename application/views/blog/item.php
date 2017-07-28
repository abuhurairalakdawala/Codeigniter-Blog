<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div class="pmd-card">
				<div class="pmd-card-body">
					<h1><?=xss_safe($blog->blog_title)?></h1>
					<p class="blog-attribute"><i class="material-icons sm-dark pmd-sm">query_builder</i> Dated : <?=date('d/m/Y h:iA', strtotime($blog->created_at))?></p>
					<hr>
					<img class="img-responsive" src="<?=base_url('assets/images/blogs/'.$blog->blog_banner)?>">
					<?=strip_blog_item($blog->blog_content)?>
				</div>
			</div>
		</div>
	</div>
</div>