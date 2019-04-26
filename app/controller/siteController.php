<?php

include_once '../global.php';

// get the identifier for the page we want to load
$action = $_GET['action'];

// instantiate a SiteController and route it
$sc = new SiteController();
$sc->route($action);

class SiteController
{
    // route us to the appropriate class method for this action
    public function route($action)
    {
        switch ($action) {
            case 'before_signin':
                $this->before_signin();
                break;
            case 'home':
    				    $this->home();
                break;
            case 'search':
              if (isset($_POST['Search'])) {
                    $tag = $_POST['tag'];
                    $searchtype = $_POST['sortby'];
                    $this->search($tag, $searchtype);
                }
                break;
            case 'stats':
                $this->stats();
                break;
            case 'team':
                $this->team();
                break;
            case 'viewtweet':
                $TweetID = $_GET['TweetID'];
                $this->view($TweetID);
                break;
        }
    }

    //Runs the signup process to gain access to the website
    public function signup()
    {
        $pageTitle = 'Home';
        include_once SYSTEM_PATH . '/view/header.tpl';
        include_once SYSTEM_PATH . '/view/signup.tpl';
        include_once SYSTEM_PATH . '/view/footer.tpl';
    }

    //Brings the user to the home page
    public function before_signin()
    {
        $pageTitle = 'Home - Login';
        include_once SYSTEM_PATH . '/view/login.tpl';
    }

    public function home()
    {
        $pageTitle = 'Home - TrailTweets';
        include_once SYSTEM_PATH . '/view/index.tpl';
    }

    public function search($tag, $searchtype)
    {
        $pageTitle = 'Search - TrailTweets';
        $tweets = Tweet::getTweets($tag, $searchtype);
        include_once SYSTEM_PATH . '/view/search.tpl';
    }

    public function view($TweetID)
    {
        $pageTitle = 'Tweet Details';
        $tweet= Tweet::getTweet($TweetID);
        include_once SYSTEM_PATH . '/view/photoview_one.tpl';
    }

}
