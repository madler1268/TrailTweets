<?php

class Tweet {

  const DB_TABLE = 'tweets'; // database table name
  // database fields for this table
  public $tweet_id = 0;
  public $account_name = '';
  public $username = '';
  public $tweet_text = '';
  public $image_link = '';
  public $likes = 0;
  public $retweets = 0;
  public $date = '';
  public $location = '';
  public $tag = '';


  // return a profile object by ID
  public static function getTweet($tweet_id) {
      $db = Db::instance(); // create db connection
      // build query
      $q = sprintf("SELECT * FROM `%s` WHERE `TweetID` = %d;",
        self::DB_TABLE,
        $tweet_id
        );
      $result = $db->query($q); // execute query
      if($result->num_rows == 0) {
        return null;
      } else {
        $row = $result->fetch_assoc(); // get results as associative array

        $tweet = new Tweet(); // instantiate
        $tweet->tweet_id     = $row['TweetID'];
        $tweet->account_name = $row['account_name'];
        $tweet->username     = $row['username'];
        $tweet->tweet_text   = $row['tweet_text'];
        $tweet->image_link   = $row['image_link'];
        $tweet->likes        = $row['likes'];
        $tweet->retweets     = $row['retweets'];
        $tweet->date         = $row['date'];
        $tweet->locaton      = $row['location'];
        $tweet->tag          = $row['tag'];

        return $tweet; // return the member
      }
  }

  // return all Family Members in an array
  public static function getTweets($tag, $searchtype) {

    $db = Db::instance();
    if($tag == 'all') {
      $q = sprintf("SELECT * FROM `%s`",
          self::DB_TABLE
          );
    } else {
      $q = sprintf("SELECT * FROM `".self::DB_TABLE."` WHERE tag = '$tag'");
    }

    $result = $db->query($q);
    $tweets = array();
    if($result->num_rows != 0) {
      while($row = $result->fetch_assoc()) {
        $tweets[] = self::getTweet($row['TweetID']);
      }
    }
    return $tweets;
  }

}
