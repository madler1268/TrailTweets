<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Trail Tweets</title>

    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">
    <link rel="stylesheet" href="<?= BASE_URL ?>/public/css/font-awesome-4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?= BASE_URL ?>/public/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= BASE_URL ?>/public/css/hero-slider-style.css">
    <link rel="stylesheet" href="<?= BASE_URL ?>/public/css/magnific-popup.css">
    <link rel="stylesheet" href="<?= BASE_URL ?>/public/css/tooplate-style.css">

          <style>
              .button {
                background-color: #4CAF50; /* Green */
                border: none;
                color: white;
                padding: 16px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
                cursor: pointer;
              }

              .button2 {
                background-color: white;
                color: black;
                border: 2px solid #008CBA;
              }

              .button2:hover {
                background-color: #008CBA;
                color: white;
              }

              .left_details {
                float: left;
                margin: 50px 50px 0 50px;
                width: 20%; 
              }

              .center_details {
                float: left;
                width: 60%;
                margin: 50px 0 0 0;
              }

              .right_details {
                margin-left: 80px;
                padding-right: 25px;
                margin-right: 25px;
                width: 400px;
                float: right;
                /* width: 32%; */
              }

              .comment p {
                word-break: break-all;
              }
          </style>
</head>
    <body>

        <!-- Content -->
        <div class="cd-hero" style="background-color:rgba(237, 84, 76, 0.62)">

            <!-- Navigation -->
            <div class="tm-navbar-bg" style="background-color: rgba(255, 255, 255, 0.7)">
              <a class="navbar-brand text-uppercase" style="font-size: 3.5rem; color: black;font-weight:400" href="<?= BASE_URL ?>/home/"><i class="fa fa-gears tm-brand-icon"></i>Trail Tweets</a>
                <div class="collapse navbar-toggleable-md text-xs-center text-uppercase tm-navbar" id="tmNavbar">
                    <ul class="nav navbar-nav">
                        <li class="nav-item active selected">
                            <a class="nav-link" href="<?= BASE_URL ?>/home/" style="font-weight: bold">Back<span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                </div>
            </div>
            <ul class="cd-hero-slider">

                <!-- Page 1 Gallery One -->
                <li class="selected">
                    <div class="cd-full-width" style="display:inline-block; vertical-align:center; background-color:rgba(233, 147, 147, 0.7)">
                          <div class="left_details">
                            <h1 >
                              Photo Details
                            </h1>
                            <p class="comment"><b>Original Poster</b>: <?= $tweet->account_name?></p>
                            <p class="comment"><b>Retweets</b>: <?= $tweet->retweets?></p>
                            <p class="comment"><b>Likes</b>: <?= $tweet->likes?></p>
                            <p class="comment"><b>Date</b>: <?= $tweet->date?></p>
                            <p class="comment"><b>Location</b>: <?= $tweet->location?></p>
                          </div>
                          <div class="center_details">
                              <img src="<?= BASE_URL ?>/public/img/<?= $tweet->image_link?>" alt="Italian Trulli" style="display: block; margin-left: auto; margin-right: auto; max-height: 90vh"></img>
                              <h1 style="text-align:center;">
                                <?= $tweet->tweet_text?>
                                </h1>
                          </div>
                        </div>
                    </div>
                </li>
    </body>
</html>
