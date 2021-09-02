package com.example.myTwitter.model;

import java.sql.Date;

public class Tweet {

    private String user_id;
    private String tweet_message;
    private Date tweet_on;

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getTweet_message() {
        return tweet_message;
    }

    public void setTweet_message(String tweet_message) {
        this.tweet_message = tweet_message;
    }

    public Date getTweet_on() {
        return tweet_on;
    }

    public void setTweet_on(Date tweet_on) {
        this.tweet_on = tweet_on;
    }
}
