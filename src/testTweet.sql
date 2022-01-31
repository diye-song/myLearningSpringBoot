Drop table tweet;

Create table tweet (
tweet_id int(10) not null auto_increment,
user_id int(10) not null,
tweet_massage varchar(255),
tweeted_on datetime default CURRENT_TIMESTAMP,
primary key(tweet_id, user_id)
); 


Insert into tweet (user_id, tweet_massage) Values 
(100, ‘karaage’),
(200, ‘sushi’),
(100, ‘ramen’),
(100, ‘soba’);