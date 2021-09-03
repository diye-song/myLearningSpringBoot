package com.example.myTwitter.repository;

import com.example.myTwitter.model.Tweet;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TweetRepository extends JpaRepository<Tweet, String> {

}
