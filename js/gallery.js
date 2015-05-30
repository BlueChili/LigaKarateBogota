var gallery = function(){
	$('.icon-right-dir').click(function(){
		var currentImg = $('current-img');
		var nextImg = currentImg.next();

		if(nextImg.length == 0){
			nextImg = $('.gal-img').first();
		}

		currentImg.fadeOut(600).removeClass('current-img');
		nextImg.fadeIn(600).addClass('current-img');
	});

	$('.icon-left-dir').click(function(){
		var currentImg = $('current-img');
		var prevImg = currentImg.prev();

		if(prevImg.length == 0){
			prevImg = $('.gal-img').last();
		}

		currentImg.fadeOut(600).removeClass('current-img');
		prevImg.fadeIn(600).addClass('current-img');
	});
};

$(document).ready(gallery);