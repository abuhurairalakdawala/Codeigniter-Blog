$(document).ready(function(){
    config = CKEDITOR.replace('editor', {
        toolbarGroups: [
          { name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
          { name: 'basicstyles', groups: [ 'basicstyles' ] },
          { name: 'paragraph', groups : [ 'list', 'blocks', 'align' ] },
          { name: 'links', groups: [ 'links' ] },
          { name: 'styles', groups: [ 'Format', 'Font', 'FontSize' ]},
        ],
        removeButtons: 'Save,NewPage,Templates,Styles'
      },
    );
    $('#new-blog-form').submit(function(e){
      e.preventDefault();
      t=$(this)
      $('.submit-btn').prop('disabled', true)
      formData = new FormData(this);
      formData.append('editor', CKEDITOR.instances.editor.getData())
      $.ajax({
        type:'post',
        url:t.attr('action'),
        data:formData,
        contentType:false,
        processData:false,
        dataType:'json',
        success:function(r){
          $('.form-alert').hide()
          if(r.success){
            location.reload()
          } else if(r.error){
            $.each(r.error, function(k,v){
              if(v!=''){
                $('.'+k).show().text(v)
              }
            })
          }
        }, complete:function(){
          $('.submit-btn').prop('disabled', false)
        }
      })
    })
})