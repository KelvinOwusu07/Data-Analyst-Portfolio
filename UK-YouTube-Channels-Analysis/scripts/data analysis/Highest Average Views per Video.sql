/*Top 3 Channels with the Highest Average Views per Video
Objective: Identify the top 3 channels with the highest average views per video. */

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
