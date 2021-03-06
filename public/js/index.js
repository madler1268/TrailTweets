jQuery(document).ready(function($){

	function adjustHeightOfPage(pageNo) {

	    var offset = 80;
	    var pageContentHeight = 0;

	    var pageType = $('div[data-page-no="' + pageNo + '"]').data("page-type");

	    if( pageType != undefined && pageType == "gallery") {
	        pageContentHeight = $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .tm-img-gallery-container").height();
	    }
	    else {
	        pageContentHeight = $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .js-tm-page-content").height() + 20;
	    }

	    if($(window).width() >= 992) { offset = 120; }
	    else if($(window).width() < 480) { offset = 40; }

	    // Get the page height
	    var totalPageHeight = $('.cd-slider-nav').height()
	                            + pageContentHeight + offset
	                            + $('.tm-footer').height();

	    // Adjust layout based on page height and window height
	    if(totalPageHeight > $(window).height())
	    {
	        $('.cd-hero-slider').addClass('small-screen');
	        $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", totalPageHeight + "px");
	    }
	    else
	    {
	        $('.cd-hero-slider').removeClass('small-screen');
	        $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", "100%");
	    }
	}

	/*
	    Everything is loaded including images.
	*/
	$(window).load(function(){

	    adjustHeightOfPage(1); // Adjust page height

	    /* Gallery One pop up
	    -----------------------------------------*/
	    // $('.gallery-one').magnificPopup({
	    //     delegate: 'a', // child items selector, by clicking on it popup will open
	    //     type: 'image',
	    //     gallery:{enabled:true}
	    // });

		/* Gallery Two pop up
	    -----------------------------------------*/
		$('.gallery-two').magnificPopup({
	        delegate: 'a',
	        type: 'image',
	        gallery:{enabled:true}
	    });

	    /* Gallery Three pop up
	    -----------------------------------------*/
	    $('.gallery-three').magnificPopup({
	        delegate: 'a',
	        type: 'image',
	        gallery:{enabled:true}
	    });

	    /* Collapse menu after click
	    -----------------------------------------*/
	    $('#tmNavbar a').click(function(){
	        $('#tmNavbar').collapse('hide');

	        adjustHeightOfPage($(this).data("no")); // Adjust page height
	    });

	    /* Browser resized
	    -----------------------------------------*/
	    $( window ).resize(function() {
	        var currentPageNo = $(".cd-hero-slider li.selected .js-tm-page-content").data("page-no");

	        // wait 3 seconds
	        setTimeout(function() {
	            adjustHeightOfPage( currentPageNo );
	        }, 1000);

	    });

	    // Remove preloader (https://ihatetomatoes.net/create-custom-preloading-screen/)
	    $('body').addClass('loaded');


	    $(".img-block-text").click(function(){
	        $(this.parentElement.parentElement.lastElementChild).toggle({start:
	        function(){
	        	var imgBoxHeight = $(this.parentElement.parentElement.lastElementChild).height();
	        	var galHeight = $("tm-img-gallery-container").height();
	        	if($(this).is(':visible')) {
	        		$("tm-img-gallery-container").height(galHeight - imgBoxHeight);
	        	} else {
	        		$("tm-img-gallery-container").height(galHeight + imgBoxHeight);
	        	}
	        	adjustHeightOfPage(1);
	        }});
	    });
	});

	/* Google map
	------------------------------------------------*/
	var map = '';
	var center;

	function initialize() {
	    var mapOptions = {
	        zoom: 14,
	        center: new google.maps.LatLng(37.769725, -122.462154),
	        scrollwheel: false
	    };

	    map = new google.maps.Map(document.getElementById('google-map'),  mapOptions);

	    google.maps.event.addDomListener(map, 'idle', function() {
	      calculateCenter();
	    });

	    google.maps.event.addDomListener(window, 'resize', function() {
	      map.setCenter(center);
	    });
	}

	function calculateCenter() {
	    center = map.getCenter();
	}

	function loadGoogleMap(){
	    var script = document.createElement('script');
	    script.type = 'text/javascript';
	    script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' + 'callback=initialize';
	    document.body.appendChild(script);
	}

	// DOM is ready
	$(function() {
		loadGoogleMap(); // Google Map
		$('#submitButton').click(function() {
			$('.secondPic').remove();
			$('.thirdPic').remove();
			$('.fourthPic').remove();
			$('.seventhPic').remove();
		})

		$('#drop').change(function() {
			if ($(this).val() == 'recent') {
				$('.secondPic').insertAfter('.fourthPic');
				$('.fourthPic').insertAfter('.sixthPic');
				$('.seventhPic').insertAfter('.firstPic');
				$('.eleventhPic').insertAfter('.secondPic');
				$('.ninthPic').insertAfter('.thirdPic');
			}
			if ($(this).val() == 'top') {
				$('.fourthPic').insertAfter('.secondPic');
				$('.sixthPic').insertAfter('.fourthPic');
				$('.firstPic').insertAfter('.eleventhPic');
				$('.secondPic').insertAfter('.eleventhPic');
				$('.thirdPic').insertAfter('.ninthPic');
			}
			if ($(this).val() == 'oldest') {
				$('.fifthPic').insertAfter('.thirdPic');
				$('.seventhPic').insertAfter('.fifthPic');
				$('.secondPic').insertAfter('.firstPic');
				$('.thirdPic').insertAfter('.ninthPic');
				$('.fourthPic').insertAfter('.tenthPic');
			}
		}); // Google Map
	});
});
