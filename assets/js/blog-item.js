$(document).ready(function(){
	$('.comment-form').submit(function(e){
		e.preventDefault()
		t=$(this)
		$.ajax({
			type:'post',
			url:t.attr('action'),
			data:t.serialize(),
			dataType:'json',
			success:function(r){
				if(r.error){
					$('#simple-dialog p').text(r.error)
					$('#simple-dialog').modal('show')
				} else {
					window.location.href = '#display-comments'
					location.reload()
				}
			}
		})
	})
})