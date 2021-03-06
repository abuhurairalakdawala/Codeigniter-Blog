<div class="container">
  <div class="row">
    <div class="col-sm-12">
    <div class="pmd-card">
      <?=form_open_multipart(base_url('blog/save_edit/'.$blog->id), 'class="pmd-card-body" id="new-blog-form"')?>
          <h2 class="pmd-card-title-text">Edit Blog</h2>
          <hr>
          <?=$this->session->flashdata('blogAddOk')?>
          <div class="form-group">
            <label for="blog-title" class="control-label">Blog Title</label>
            <input type="text" name="blog-title" id="blog-title" class="form-control" value="<?=$blog->blog_title?>">
            <?=errorMessage('title-err')?>
          </div>
          <div class="form-group">
            <label for="blog-banner" class="control-label">Blog Banner</label>
            <input type="file" id="blog-banner" name="file" accept=".jpg,.png,.jpeg">
            <img src="<?=base_url('assets/images/blogs/'.$blog->blog_banner)?>" width="100" style="margin-top:10px" class="pmd-z-depth">
            <?=errorMessage('file-err')?>
          </div>
          <div class="form-group">
            <label for="editor" class="control-label">Blog Content</label>
            <textarea name="editor" id="editor"><?=$blog->blog_content?></textarea>
            <?=errorMessage('editor-err')?>
          </div>
          <div class="form-group">
            <div class="alert alert-danger base-err form-alert" role="alert"></div>
            <button class="btn pmd-ripple-effect btn-primary submit-btn" type="submit">Submit</button>
          </div>
      <?=form_close()?>
    </div>
    </div>
  </div>
</div>