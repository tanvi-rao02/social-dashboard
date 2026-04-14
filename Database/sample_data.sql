-- Insert users
INSERT INTO users (user_id, username, platform, followers)
VALUES
  (1, 'janedoe',     'Instagram', 24800),
  (2, 'techbrand',   'YouTube',   18900),
  (3, 'mktgpro',     'Twitter',   13400),
  (4, 'lifestyle_k', 'Instagram', 9800);

-- Insert posts
INSERT INTO posts (post_id, user_id, title, content, platform, posted_at)
VALUES
  (1, 1, 'Summer launch recap',   'Big event!',       'Instagram', '2024-04-01'),
  (2, 2, 'New product teaser',     'Watch this!',      'YouTube',   '2024-04-02'),
  (3, 3, 'Weekly poll results',    'You voted!',       'Twitter',   '2024-04-03'),
  (4, 1, 'Behind the scenes reel', 'Fun times!',       'Instagram', '2024-04-04'),
  (5, 2, 'Tutorial: getting started','Step by step',    'YouTube',   '2024-04-05'),
  (6, 4, 'Morning routine 2024',   'My daily habits', 'Instagram', '2024-04-06'),
  (7, 3, 'Hot take: AI in marketing','Unpopular opinion','Twitter', '2024-04-07'),
  (8, 2, 'Unboxing the new release', 'First look!',     'YouTube',   '2024-04-08');

-- Insert engagement (likes, comments, shares per post)
INSERT INTO engagement (eng_id, post_id, likes, comments, shares)
VALUES
  (1, 1, 12400, 892, 452),
  (2, 2, 9100,  634, 301),
  (3, 3, 7800,  412, 218),
  (4, 4, 6200,  308, 167),
  (5, 5, 4900,  201, 98),
  (6, 6, 4100,  188, 74),
  (7, 7, 3700,  421, 312),
  (8, 8, 3200,  145, 62);

-- Insert hashtags
INSERT INTO hashtags (tag_id, tag_name)
VALUES
  (1, '#SummerLaunch'),
  (2, '#TechTrends'),
  (3, '#Marketing'),
  (4, '#DigitalLife'),
  (5, '#ContentWins');

-- Link posts to hashtags
INSERT INTO post_hashtags (post_id, tag_id)
VALUES
  (1,1),(1,3),
  (2,2),(2,4),
  (3,3),(3,5),
  (4,1),(4,4),
  (5,2),(6,4),
  (7,3),(8,2);
  