$(function(){
	window.addEventListener('message', function(event) {
		
		if (event.data.action != null && event.data.action == "loadLevel"){
			$('#level').html(event.data.nivel);
			$('#level-progress').width(event.data.key + '%');
		}
		
	});

});

