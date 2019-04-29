<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Trail Tweets</title>
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


</head>

<body>
        <nav class="navbar" style="background-color: rgba(233, 147, 147, 0.7)">
            <div class="tm-navbar-bg">
                <a class="navbar-brand text-uppercase" href="#" style="font-size: 3.5rem; color: black;font-weight:400"><i class="fa fa-gears tm-brand-icon"></i>Trail Tweets</a>
                <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                    &#9776;
                </button>
                <div class="collapse navbar-toggleable-md text-xs-center text-uppercase tm-navbar" id="tmNavbar">
                    <ul class="nav navbar-nav">
                        <li class="nav-item active selected">
                            <a class="nav-link" href="<?= BASE_URL ?>/home/" style="font-weight: bold">Back<span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="found-container">
          <div class="img-block">
              <div class="img-block-header">
                  <h2 class="tm-text-title tm-gallery-title tm-white img-block-text"><span class="tm-white">Found Tweets</span></h2>
              </div>
              <div class="img-block-body2">
              <?php foreach($tweets as $myTweet): ?>

                  <div class="grid-item">
                      <figure class="effect-bubba">
                          <img src="<?= BASE_URL ?>/public/img/<?= $myTweet->image_link?>" alt="Image" class="img-fluid tm-img">
                          <figcaption>
                              <a href="<?= BASE_URL ?>/viewtweet/<?= $myTweet->tweet_id?>"><p class="tm-figure-description"><?= $myTweet->tweet_text?></p></a>

                          </figcaption>
                      </figure>
                      <p style="color: black; font-weight: bold;">Retweets: <?= $myTweet->retweets?> </p>
                      <p style="color: black; font-weight: bold; text-align: right; position: relative; margin-top: 21px; bottom: 44px; width:100%;">Favorites: <?= $myTweet->likes?> </p>
                  </div>

              <?php endforeach; ?>
              </div>
          </div>
        </div>

<!-- Preloader, https://ihatetomatoes.net/create-custom-preloading-screen/ -->
    <div id="loader-wrapper">

      <div id="loader"></div>
      <div class="loader-section section-left"></div>
      <div class="loader-section section-right"></div>

    </div>

<!-- load JS files -->
    <script src="<?= BASE_URL ?>/public/js/jquery-1.11.3.min.js"></script>         <!-- jQuery (https://jquery.com/download/) -->
    <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script> <!-- Tether for Bootstrap (http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h) -->
    <script src="<?= BASE_URL ?>/public/js/bootstrap.min.js"></script>             <!-- Bootstrap js (v4-alpha.getbootstrap.com/) -->
    <script src="<?= BASE_URL ?>/public/js/hero-slider-main.js"></script>          <!-- Hero slider (https://codyhouse.co/gem/hero-slider/) -->
    <script src="<?= BASE_URL ?>/public/js/jquery.magnific-popup.min.js"></script> <!-- Magnific popup (http://dimsemenov.com/plugins/magnific-popup/) -->
    <script src="<?= BASE_URL ?>/public/js/index.js"></script>
  </body>
</html>
