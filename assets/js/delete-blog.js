$(document).ready(function(){
	$('.delete-blog').click(function(e){
		e.preventDefault()
		if(!confirm('Are you sure, you want to delete this blog ?')){
			return false;
		}
		t=$(this)
		$.ajax({
			url:ROOTURL+'blog/delete/'+t.data('id'),
			type:'get',
			dataType:'json',
			success:function(r){
				if(r.error){
					$('#simple-dialog p').text(r.error)
					$('#simple-dialog').modal('show')
				} else if(r.success) {
					alert('Blog Deleted Successfully!')
					location.reload()
				}
			}
		})
	})
})