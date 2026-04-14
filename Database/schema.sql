CREATE TABLE users (
  user_id INTEGER PRIMARY KEY,
  username TEXT NOT NULL,
  platform TEXT,
  followers INTEGER DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE posts (
  post_id INTEGER PRIMARY KEY,
  user_id INTEGER,
  title TEXT,
  content TEXT,
  platform TEXT,
  posted_at DATETIME,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE engagement (
  eng_id INTEGER PRIMARY KEY,
  post_id INTEGER,
  likes INTEGER DEFAULT 0,
  comments INTEGER DEFAULT 0,
  shares INTEGER DEFAULT 0,
  FOREIGN KEY (post_id) REFERENCES posts(post_id)
);

CREATE TABLE hashtags (
  tag_id INTEGER PRIMARY KEY,
  tag_name TEXT UNIQUE NOT NULL
);

CREATE TABLE post_hashtags (
  post_id INTEGER,
  tag_id INTEGER,
  PRIMARY KEY (post_id, tag_id)
);
