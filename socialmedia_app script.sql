
--  CREATE DATABASE socialmedia_app;
-- Create TABLE users( 
-- user_id INT NOT NULL auto_increment Primary Key,
	-- user_name VARCHAR(255),
	-- first_name VARCHAR(45),
	-- last_name VARCHAR(45),
	-- email VARCHAR(45) NOT NULL,
	-- passwords VARCHAR(45) NOT NULL
-- );
-- Create TABLE posts (
-- post_id INT NOT NULL auto_increment Primary Key,
	-- user_id INT,
	-- post_date datetime,
    -- user_post TEXT (1000),
   -- FOREIGN KEY (user_id) REFERENCES users(user_id) 
-- );
CREATE TABLE Comments (
comment_id INT NOT NULL auto_increment primary key ,
comment_date datetime,
comment_content TEXT (1000) NOT NULL,
user_id INT,
post_id INT,

FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (post_id) REFERENCES posts(post_id)
);

