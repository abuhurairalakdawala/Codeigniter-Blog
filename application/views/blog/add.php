<div class="container">
  <div class="row">
    <div class="col-sm-12">
    <div class="pmd-card">
      <?=form_open_multipart(base_url('blog/save'), 'class="pmd-card-body" id="new-blog-form"')?>
          <h2 class="pmd-card-title-text">Add Blog</h2>
          <hr>
          <?=$this->session->flashdata('blogAddOk')?>
          <div class="form-group">
            <label for="blog-title" class="control-label">Blog Title</label>
            <input type="text" name="blog-title" id="blog-title" class="form-control" required>
            <div class="alert alert-danger title-err form-alert" role="alert"></div>
          </div>
          <div class="form-group">
            <label for="blog-banner" class="control-label">Blog Banner</label>
            <input type="file" id="blog-banner" name="file" accept=".jpg,.png,.jpeg">
            <div class="alert alert-danger file-err form-alert" role="alert"></div>
          </div>
          <div class="form-group">
            <label for="editor" class="control-label">Blog Content</label>
            <textarea name="editor" id="editor"></textarea>
            <div class="alert alert-danger editor-err form-alert" role="alert"></div>
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