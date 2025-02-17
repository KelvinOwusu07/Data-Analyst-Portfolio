/*1. Top 10 YouTubers with the Most Subscribers
Objective: Identify the top 10 channels with the highest number of subscribers.

SQL Query:                                                                                                               */

SELECT TOP 10
    channel_name,
    total_subscribers
FROM dbo.youtube_data
ORDER BY total_subscribers DESC;

/*Explanation:
•	The query selects the channel_name and total_subscribers columns.
•	It orders the results in descending order by total_subscribers to rank channels from highest to lowest.
•	The TOP 10 clause limits the output to the top 10 channels.

2. Top 3 Channels with the Most Videos Uploaded
Objective: Identify the top 3 channels with the highest number of videos uploaded.

SQL Query:                                                                                                                   */

SELECT TOP 3
    channel_name,
    total_videos
FROM dbo.youtube_data
ORDER BY total_videos DESC;

/*Explanation:
•	The query selects the channel_name and total_videos columns.
•	It orders the results in descending order by total_videos to rank channels from highest to lowest.
•	The TOP 3 clause limits the output to the top 3 channels.

3. Top 3 Channels with the Most Views
Objective: Identify the top 3 channels with the highest total views.

SQL Query:                                                                                                                          */

SELECT TOP 3
 channel_name,
    total_views
FROM dbo.youtube_data
ORDER BY total_views DESC;

/*Explanation:
•	The query selects the channel_name and total_views columns.
•	It orders the results in descending order by total_views to rank channels from highest to lowest.
•	The TOP 3 clause limits the output to the top 3 channels.

4. Top 3 Channels with the Highest Average Views per Video
Objective: Identify the top 3 channels with the highest average views per video.

SQL Query:                                                                                                                   */

SELECT TOP 3
    channel_name,
    total_views / total_videos AS avg_views_per_video
FROM dbo.youtube_data
WHERE total_videos > 0 -- Ensure no division by zero
ORDER BY avg_views_per_video DESC;

/*Explanation:
•	The query calculates the average views per video as total_views / total_videos.
•	It filters out channels with total_videos = 0 to avoid division by zero errors.
•	The results are ordered in descending order by avg_views_per_video.
•	The TOP 3 clause limits the output to the top 3 channels.


5. Top 3 Channels with the Highest Views per Subscriber Ratio
Objective: Identify the top 3 channels with the highest ratio of views to subscribers.

SQL Query:                                                                                                               */

SELECT TOP 3
    channel_name,
    total_views / total_subscribers AS views_per_subscriber_ratio
FROM dbo.youtube_data
WHERE total_subscribers > 0 -- Ensure no division by zero
ORDER BY views_per_subscriber_ratio DESC;

/*Explanation:
•	The query calculates the views per subscriber ratio as total_views / total_subscribers.
•	It filters out channels with total_subscribers = 0 to avoid division by zero errors.
•	The results are ordered in descending order by views_per_subscriber_ratio.
•	The TOP 3 clause limits the output to the top 3 channels.

6. Top 3 Channels with the Highest Subscriber Engagement Rate per Video Uploaded
Objective: Identify the top 3 channels with the highest engagement rate, using views per video as a proxy for engagement.

SQL Query:                                                                                                                */

SELECT TOP 3
    channel_name,
    total_subscribers / total_videos AS engagement_rate
FROM dbo.youtube_data
WHERE total_videos > 0 -- Ensure no division by zero
ORDER BY engagement_rate DESC;

/*Explanation:
•	Since engagement data (e.g., likes, comments) was unavailable, subsricbers per video were used as a proxy for engagement rate.
•	The query calculates the engagement rate as total_subscribers / total_videos.
•	It filters out channels with total_videos = 0 to avoid division by zero errors.
•	The results are ordered in descending order by engagement_rate.
•	The TOP 3 clause limits the output to the top 3 channels.                                           */
