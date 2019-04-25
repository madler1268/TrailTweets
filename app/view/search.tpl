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
    <!-- Custom style sheet -->
    <link rel="stylesheet" href="<?= BASE_URL ?>/public/css/index.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
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
                                <a class="nav-link" href="<?= BASE_URL ?>/home" data-no="1">Back<span class="sr-only">(current)</span></a>
                            </li>

                        </ul>
                    </div>
                </div>

            </nav>
        </div>
<!-- <body>
  <div class="cd-full-width">
      <div class="container-fluid js-tm-page-content" data-page-no="2" data-page-type="gallery">
        <select id="drop" style="position: relative; left: 70%; top: 23px;">
          <option value="" selected disabled hidden>Sort By</option>
          <option value="recent">Most Recent</option>
          <option value="oldest">Oldest</option>
          <option value="top"> Top Searches</option>
        </select>
          <div class="tm-img-gallery-container">
              <div class="tm-img-gallery gallery-two">


                  <div class="tm-img-gallery-info-container">
                      <h2 class="tm-text-title tm-gallery-title"><span class="tm-white">Hottest Searches</span></h2>
                      <p class="tm-text"><span class="tm-white">View tweets based on tags and popularity!</span>
                      </p>
                      <h3 class="tm-text-title tm-gallery-title"><span class="tm-white"><b>Search by tag:</b></span></h3>
                      <input type="text" style="width: 60%;"/>
                      <input type="submit" id="submitButton" style="position: relative; left: 10%; bottom: 10%;"/>
                  </div>



                  <div class="grid-item firstPic">
                      <figure class="effect-bubba">
                          <img src="<?= BASE_URL ?>/public/img/tm-img-12-tn.jpg" alt="Image" class="img-fluid tm-img">
                          <figcaption>
                              <h2 class="tm-figure-title">Sparrow</h2>
                              <p class="tm-figure-description">Saw this sparrow outside the hiking trail!</p>
                              <p class="tm-figure-description">Retweets: 329</p>
                              <p class="tm-figure-description" style="position: relative; bottom: 30px;">Favorites: 753</p>
                              <a href="<?= BASE_URL ?>/public/img/tm-img-12.jpg">View more</a>
                          </figcaption>
                      </figure>
                  </div>
                  <div class="grid-item secondPic">
                      <figure class="effect-bubba">
                          <img src="<?= BASE_URL ?>/public/img/tm-img-11-tn.jpg" alt="Image" class="img-fluid tm-img">
                          <figcaption>
                              <h2 class="tm-figure-title">Moss</h2>
                              <p class="tm-figure-description">Can't believe moss would grow here!</p>
                              <p class="tm-figure-description">Retweets: 743</p>
                              <p class="tm-figure-description" style="position: relative; bottom: 30px;">Favorites: 431</p>
                              <a href="<?= BASE_URL ?>/public/img/tm-img-11.jpg">View more</a>
                          </figcaption>
                      </figure>
                  </div>
                  <div class="grid-item thirdPic">
                      <figure class="effect-bubba">
                          <img src="<?= BASE_URL ?>/public/img/tm-img-10-tn.jpg" alt="Image" class="img-fluid tm-img">
                          <figcaption>
                              <h2 class="tm-figure-title">Leaves</h2>
                              <p class="tm-figure-description">Can't believe the leaves are aleady changing colors</p>
                              <p class="tm-figure-description">Retweets: 763</p>
                              <p class="tm-figure-description" style="position: relative; bottom: 30px;">Favorites: 642</p>
                              <a href="<?= BASE_URL ?>/public/img/tm-img-10.jpg">View more</a>
                          </figcaption>
                      </figure>
                  </div>
                  <div class="grid-item fourthPic">
                      <figure class="effect-bubba">
                          <img src="<?= BASE_URL ?>/public/img/tm-img-09-tn.jpg" alt="Image" class="img-fluid tm-img">
                          <figcaption>
                              <h2 class="tm-figure-title">Surfing</h2>
                              <p class="tm-figure-description">I wish I could surf suring this hike</p>
                              <p class="tm-figure-description">Retweets: 753</p>
                              <p class="tm-figure-description" style="position: relative; bottom: 30px;">Favorites: 624</p>
                              <a href="<?= BASE_URL ?>/public/img/tm-img-09.jpg">View more</a>
                          </figcaption>
                      </figure>
                  </div>
                  <div class="grid-item fifthPic">
                      <figure class="effect-bubba">
                          <img src="<?= BASE_URL ?>/public/img/tm-img-08-tn.jpg" alt="Image" class="img-fluid tm-img">
                          <figcaption>
                              <h2 class="tm-figure-title">Jelly Fish</h2>
                              <p class="tm-figure-description">Ow, I feel like I got stung by a jelly fish near this bush</p>
                              <p class="tm-figure-description">Retweets: 642</p>
                              <p class="tm-figure-description" style="position: relative; bottom: 30px;">Favorites: 763</p>
                              <a href="<?= BASE_URL ?>/public/img/tm-img-08.jpg">View more</a>
                          </figcaption>
                      </figure>
                  </div>
                  <div class="grid-item sixthPic">
                      <figure class="effect-bubba">
                          <img src="<?= BASE_URL ?>/public/img/tm-img-07-tn.jpg" alt="Image" class="img-fluid tm-img">
                          <figcaption>
                              <h2 class="tm-figure-title">Fox</h2>
                              <p class="tm-figure-description">I thought I saw a fox nearby</p>
                              <p class="tm-figure-description">Retweets: 421</p>
                              <p class="tm-figure-description" style="position: relative; bottom: 30px;">Favorites: 219</p>
                              <a href="<?= BASE_URL ?>/public/img/tm-img-07.jpg">View more</a>
                          </figcaption>
                      </figure>
                  </div>
                  <div class="grid-item seventhPic">
                      <figure class="effect-bubba">
                          <img src="<?= BASE_URL ?>/public/img/tm-img-06-tn.jpg" alt="Image" class="img-fluid tm-img">
                          <figcaption>
                              <h2 class="tm-figure-title">View</h2>
                              <p class="tm-figure-description">This view is gorgeous!</p>
                              <p class="tm-figure-description">Retweets: 431</p>
                              <p class="tm-figure-description" style="position: relative; bottom: 30px;">Favorites: 429</p>
                              <a href="<?= BASE_URL ?>/public/img/tm-img-06.jpg">View more</a>
                          </figcaption>
                      </figure>
                  </div>
                  <div class="grid-item eighthPic">
                      <figure class="effect-bubba">
                          <img src="<?= BASE_URL ?>/public/img/tm-img-05-tn.jpg" alt="Image" class="img-fluid tm-img">
                          <figcaption>
                              <h2 class="tm-figure-title">Flower</h2>
                              <p class="tm-figure-description">These flowers have beautiful white leaves</p>
                              <p class="tm-figure-description">Retweets: 419</p>
                              <p class="tm-figure-description" style="position: relative; bottom: 30px;">Favorites: 759</p>
                              <a href="<?= BASE_URL ?>/public/img/tm-img-05.jpg">View more</a>
                          </figcaption>
                      </figure>
                  </div>
                  <div class="grid-item ninthPic">
                      <figure class="effect-bubba">
                          <img src="<?= BASE_URL ?>/public/img/tm-img-04-tn.jpg" alt="Image" class="img-fluid tm-img">
                          <figcaption>
                              <h2 class="tm-figure-title">Rest</h2>
                              <p class="tm-figure-description">This rest spot looks very cozy</p>
                              <p class="tm-figure-description">Retweets: 421</p>
                              <p class="tm-figure-description" style="position: relative; bottom: 30px;">Favorites: 653</p>
                              <a href="<?= BASE_URL ?>/public/img/tm-img-04.jpg">View more</a>
                          </figcaption>
                      </figure>
                  </div>
                  <div class="grid-item tenthPic">
                      <figure class="effect-bubba">
                          <img src="<?= BASE_URL ?>/public/img/tm-img-03-tn.jpg" alt="Image" class="img-fluid tm-img">
                          <figcaption>
                              <h2 class="tm-figure-title">Dog</h2>
                              <p class="tm-figure-description">My dog is having a blast during this hike!</p>
                              <p class="tm-figure-description">Retweets: 321</p>
                              <p class="tm-figure-description" style="position: relative; bottom: 30px;">Favorites: 735</p>
                              <a href="<?= BASE_URL ?>/public/img/tm-img-03.jpg">View more</a>
                          </figcaption>
                      </figure>
                  </div>
                  <div class="grid-item eleventhPic">
                      <figure class="effect-bubba">
                          <img src="<?= BASE_URL ?>/public/img/tm-img-02-tn.jpg" alt="Image" class="img-fluid tm-img">
                          <figcaption>
                              <h2 class="tm-figure-title">Sunset</h2>
                              <p class="tm-figure-description">The sunset over this cliff is amazing!</p>
                              <p class="tm-figure-description">Retweets: 532</p>
                              <p class="tm-figure-description" style="position: relative; bottom: 30px;">Favorites: 529</p>
                              <a href="<?= BASE_URL ?>/public/img/tm-img-02.jpg">View more</a>
                          </figcaption>
                      </figure>
                  </div>
                  <div class="grid-item twelvePic">
                      <figure class="effect-bubba">
                          <img src="<?= BASE_URL ?>/public/img/tm-img-01-tn.jpg" alt="Image" class="img-fluid tm-img">
                          <figcaption>
                              <h2 class="tm-figure-title">Drink</h2>
                              <p class="tm-figure-description">I wish I had a cold drink at the top of this view!</p>
                              <p class="tm-figure-description">Retweets: 981</p>
                              <p class="tm-figure-description" style="position: relative; bottom: 30px;">Favorites: 432</p>
                              <a href="<?= BASE_URL ?>/public/img/tm-img-01.jpg">View more</a>
                          </figcaption>
                      </figure>
                  </div>
              </div>
          </div>
      </div>
  </div> -->
</body>
<footer class="tm-footer">

    <div class="tm-social-icons-container text-xs-center">
        <a href="#" class="tm-social-link"><i class="fa fa-facebook"></i></a>
        <a href="#" class="tm-social-link"><i class="fa fa-google-plus"></i></a>
        <a href="#" class="tm-social-link"><i class="fa fa-twitter"></i></a>
        <a href="#" class="tm-social-link"><i class="fa fa-behance"></i></a>
        <a href="#" class="tm-social-link"><i class="fa fa-linkedin"></i></a>
    </div>

    <p class="tm-copyright-text">Copyright &copy; 2019 Tweet Trails</p>

</footer>
</html>
