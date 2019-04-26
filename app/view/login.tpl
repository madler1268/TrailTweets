<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Tweet Trails</title>
<!--

Template 2086 Multi Color

http://www.tooplate.com/view/2086-multi-color

-->
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="<?= BASE_URL ?>/public/css/font-awesome-4.5.0/css/font-awesome.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?= BASE_URL ?>/public/css/bootstrap.min.css">
    <!-- Bootstrap style -->
    <link rel="stylesheet" href="<?= BASE_URL ?>/public/css/hero-slider-style.css">
    <!-- Hero slider style (https://codyhouse.co/gem/hero-slider/) -->
    <link rel="stylesheet" href="<?= BASE_URL ?>/public/css/magnific-popup.css">
    <!-- Magnific popup style (http://dimsemenov.com/plugins/magnific-popup/) -->
    <link rel="stylesheet" href="<?= BASE_URL ?>/public/css/tooplate-style.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
          <style>
            body {font-family: Arial, Helvetica, sans-serif;}


            input[type=text], input[type=password] {
              width: 100%;
              padding: 12px 20px;
              margin: 8px 0;
              display: inline-block;
              border: 1px solid #ccc;
              box-sizing: border-box;
            }

            button {
              background-color: #4CAF50;
              color: white;
              padding: 14px 20px;
              margin: 8px 0;
              border: none;
              cursor: pointer;
              width: 100%;
            }

            button:hover {
              opacity: 0.8;
            }

            .cancelbtn {
              width: auto;
              padding: 10px 18px;
              background-color: #f44336;
            }

            .imgcontainer {
              text-align: center;
              margin: 24px 0 12px 0;
            }

            img.avatar {
              width: 40%;
              border-radius: 50%;
            }

            .container {
              padding: 16px;
            }

            span.psw {
              float: right;
              padding-top: 16px;
            }

            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 300px) {
              span.psw {
                 display: block;
                 float: none;
              }
              .cancelbtn {
                 width: 100%;
              }
            }
            </style>
</head>

    <body>

        <!-- Content -->
        <div class="cd-hero">

            <!-- Navigation -->
            <div class="cd-slider-nav">
                <nav class="navbar">
                    <div class="tm-navbar-bg">

                        <a class="navbar-brand text-uppercase" href="#"><i class="fa fa-gears tm-brand-icon"></i>Tweet Trails</a>

                        <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        <div class="collapse navbar-toggleable-md text-xs-center text-uppercase tm-navbar" id="tmNavbar">
                            <ul class="nav navbar-nav">
                                <li class="nav-item active selected">
                                    <a class="nav-link" href="#0" data-no="1">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="2">Login </a>
                                </li>

                            </ul>
                        </div>
                    </div>

                </nav>
            </div>
            <ul class="cd-hero-slider">

                <!-- Page 1 Gallery One -->
                <li class="selected">
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content" data-page-no="1" data-page-type="gallery">
                          <div>
                              <img src="<?= BASE_URL ?>/public/img/apptrail.JPG" alt="Italian Trulli" style="display: block; margin-left: auto; margin-right: auto; width: 25%; height: 50%"></img>
                              <br>
                              </br>
                              <h1 style="text-align:center;">
                                Welcome to Trail Tweets
                                </h1>
                                <br>
                                </br>
                              <p style="text-align:center; padding-left: 300px; padding-right: 300px;">
                                This website was created to allow users to share photos and tweets from the Appalachian Trail. You can find places to visit, things you may need to pack, and how to prepare for the hike itself!
                                </p>
                          </div>
                        </div>
                    </div>
                </li>

                <!-- Page 2 Gallery Two -->
                <li>
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content" data-page-no="2" data-page-type="gallery">
                          <h2 style="text-align:center;">Login Form</h2>
                            <form action="<?= BASE_URL ?>/home" class="inline">

                              <div class="container">
                                <label for="uname"><b>Username</b></label>
                                <input type="text" placeholder="Enter Username" name="uname" required>

                                <label for="psw"><b>Password</b></label>
                                <input type="password" placeholder="Enter Password" name="psw" required>

                                <button type="submit">Login</button>
                                <label>
                                  <input type="checkbox" checked="checked" name="remember"> Remember me
                                </label>
                              </div>

                              <div class="container" style="background-color:#d44457">
                                <button type="button" class="cancelbtn">Cancel</button>
                                <span class="psw">Forgot <a href="#">password?</a></span>
                              </div>
                            </form>
                        </div>
                    </div>
                </li>
                <!-- load JS files -->
                <script src="<?= BASE_URL ?>/public/js/jquery-1.11.3.min.js"></script>         <!-- jQuery (https://jquery.com/download/) -->
                <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script> <!-- Tether for Bootstrap (http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h) -->
                <script src="<?= BASE_URL ?>/public/js/bootstrap.min.js"></script>             <!-- Bootstrap js (v4-alpha.getbootstrap.com/) -->
                <script src="<?= BASE_URL ?>/public/js/hero-slider-main.js"></script>          <!-- Hero slider (https://codyhouse.co/gem/hero-slider/) -->
                <script src="<?= BASE_URL ?>/public/js/jquery.magnific-popup.min.js"></script> <!-- Magnific popup (http://dimsemenov.com/plugins/magnific-popup/) -->

                <script>

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
                        $('.gallery-one').magnificPopup({
                            delegate: 'a', // child items selector, by clicking on it popup will open
                            type: 'image',
                            gallery:{enabled:true}
                        });

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
                    });

                </script>
    </body>
</html>
