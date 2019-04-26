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
                margin-right: 50px;
                margin-left: 50px;
                /* width: 32%; */
              }

              .center_details {
                float: left;
                /* width: 36%; */
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
        <div class="cd-hero">

            <!-- Navigation -->
            <div class="cd-slider-nav">
                <nav class="navbar">
                    <div class="tm-navbar-bg">

                        <a class="navbar-brand text-uppercase" href="<?= BASE_URL ?>/home/"><i class="fa fa-gears tm-brand-icon"></i>Trail Tweets</a>

                        <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        <div class="collapse navbar-toggleable-md text-xs-center text-uppercase tm-navbar" id="tmNavbar">
                            <ul class="nav navbar-nav">
                                <li class="nav-item active selected">
                                    <a class="nav-link" href="#0" data-no="1">Photo Details<span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                  <form action="<?= BASE_URL ?>/home/" class="inline" id="backform">
                                    <a class="nav-link" href="<?= BASE_URL ?>/home/" >
                                      <button type="submit" form="backform" class="button button2" value="Submit">Back</button>
                                     </a>
                                  </form>
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
                        <div  data-page-no="1" data-page-type="gallery">
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
                              <img src="<?= BASE_URL ?>/public/img/<?= $tweet->image_link?>" alt="Italian Trulli" style="display: block; margin-left: auto; margin-right: auto;"></img>
                              <br>
                              </br>
                              <h1 style="text-align:center;">
                                <?= $tweet->tweet_text?>
                                </h1>
                                <br>
                                </br>

                          </div>
                          <div class="right_details">
                            </div>
                        </div>
                    </div>
                </li>

                <!-- Page 2 Gallery Two -->
                <li>
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content" data-page-no="2" data-page-type="gallery">

                        </div>
                    </div>
                </li>



    </body>
</html>
