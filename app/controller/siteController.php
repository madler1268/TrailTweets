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

            case 'loginProcess':
                if (isset($_POST['login'])) {
                    $user = $_POST['user'];
                    $pass = $_POST['pass'];
                    $this->loginProcess($user, $pass);
                } else if (isset($_POST['signup'])) {
                    $this->signup();
                }
                break;
            case 'home':
    				    $this->home();
                break;
            case 'search':
        				$this->search();
                break;
            case 'stats':
                $this->stats();
                break;
            case 'team':
                $this->team();
                break;
            case 'contact':
                $this->contact();
                break;
            case 'logout':
                $this->logout();
                break;
            case 'topic':
                $this->topic();
                break;
        }
    }
//Runs the login process to gain access to the website
    public function loginProcess($un, $pw)
    {
      $correctUser = 'tony';
      $correctPass = 'gui';
      $db = Db::instance();
      $q = "SELECT * FROM profiles WHERE username='$un' and password='$pw'";
      $result = $db->query($q);

      $row = $result->fetch_assoc(); // get results as associative array
      $profile = new Profile();
      $profile->profile_id   = $row['profile_id'];
      $profile->firstname    = $row['firstname'];

      // If result matched $username and $password, table row must be 1 row
      if($result->num_rows != 0) {
        $_SESSION['username'] = $profile->firstname;
        $_SESSION['profile_id'] = $profile->profile_id;
        header('Location: '.BASE_URL); exit();
      } else {
        header('Location: '.BASE_URL);
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

    public function signupProcess() {
		$firstname 	 = $_POST['firstname']; // required
		$lastname 	 = $_POST['lastname'];  // required
		$username  	 = $_POST['username'];  // required
		$password  	 = $_POST['password'];  // required
		$photo       = $_POST['photo'];

		if( empty($firstname) || empty($lastname) || empty($username) || empty($password) ) {
			header('Location: '.BASE_URL); exit();
		}

		$profile = new Profile();
		$profile->firstname    = $firstname;
		$profile->lastname     = $lastname;
		$profile->username    	= $username;
		$profile->password    	= $password;
		$profile->photo        = $photo;
    $profile->number_posts        = 0;

		$profile_id = $profile->save(0);
    if ($profile_id == null)
    {
      header('Location: '.BASE_URL); exit();
    }
		header('Location: '.BASE_URL.'/login/'); exit();
	 }

    //Brings the user to the home page
    public function before_signin()
    {
        $pageTitle = 'Home - Login';
        // include_once SYSTEM_PATH . '/view/header.tpl';
        include_once SYSTEM_PATH . '/view/login.tpl';
        // include_once SYSTEM_PATH . '/view/footer.tpl';
    }

    public function home()
    {
        $pageTitle = 'Home - TrailTweets';
        // include_once SYSTEM_PATH . '/view/header.tpl';
        include_once SYSTEM_PATH . '/view/index.tpl';
        // include_once SYSTEM_PATH . '/view/footer.tpl';
    }

    public function search()
    {
        $pageTitle = 'Search - TrailTweets';
        // include_once SYSTEM_PATH . '/view/header.tpl';
        include_once SYSTEM_PATH . '/view/search.tpl';
        // include_once SYSTEM_PATH . '/view/footer.tpl';
    }


}
