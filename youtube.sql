CREATE TABLE videos (
	video_id varchar PRIMARY KEY,
	title varchar,
	channel_title varchar,
	category_id int,
	views int,
	likes int,
	dislikes int,
	comment_total int
);

CREATE TABLE youtube_category_table(
    Category_id INT,
    Channel_id VARCHAR,
    Category_Title VARCHAR
);

SELECT * FROM youtube_category_table;
SELECT * FROM videos;

SELECT videos.video_id, 
		videos.title, 
		videos.channel_title, 
		videos.category_id, 
		youtube_category_table.category_title, 
		videos.views, 
		videos.likes, 
		videos.dislikes, 
		videos.comment_total
FROM videos
INNER JOIN youtube_category_table
ON videos.category_id = youtube_category_table.category_id;
