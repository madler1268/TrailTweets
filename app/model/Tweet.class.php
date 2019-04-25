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
  public static function getProfile($tweet_id) {
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
    $q = "SELECT TweetID FROM `".self::DB_TABLE."`";
    $result = $db->query($q);

    $profiles = array();
    if($result->num_rows != 0) {
      while($row = $result->fetch_assoc()) {
        $profiles[] = self::getTweet($row['TweetID']);
      }
    }
    return $profiles;
  }

  // return all Family Members in an array
  public static function getProfiles() {
    $db = Db::instance();
    $q = "SELECT profile_id FROM `".self::DB_TABLE."`";
    $result = $db->query($q);

    $profiles = array();
    if($result->num_rows != 0) {
      while($row = $result->fetch_assoc()) {
        $profiles[] = self::getProfile($row['profile_id']);
      }
    }
    return $profiles;
  }



  //Inserts the family member into the database
  public function insert() {
    if($this->topic_id != 0)
      return null;

    $db = Db::instance(); // connect to db
    $q = sprintf("INSERT INTO profiles (`firstname`, `lastname`, `username`, `password`, `photo`, `number_posts`)
    VALUES (%s, %s, %s, %s, %s, %d);",
      $db->escape($this->firstname),
      $db->escape($this->lastname),
      $db->escape($this->username),
      $db->escape($this->password),
      $db->escape($this->photo),
      $db->escape($this->number_posts)
      );

    $db->query($q); // execute query
    return $db->getInsertID();
  }

  //Updates specified data in the database
  public function update() {
    if($this->profile_id == 0)
      return null; // can't update something without an ID

    $db = Db::instance(); // connect to db
    $q = sprintf("UPDATE `profiles` SET
    `firstname` =   $db->escape($this->firstname),
    `lastname`  =   $db->escape($this->lastname),
    `username` =   $db->escape($this->username),
    `password` =   $db->escape($this->password),
    `photo`     =   $db->escape($this->photo),
    `number_posts`     = $db->escape($this->number_posts)
    WHERE `profile_id`     = $db->escape($this->profile_id);");

    $db->query($q); // execute query
    return $db->profile_id; // return this object's ID
  }

}
