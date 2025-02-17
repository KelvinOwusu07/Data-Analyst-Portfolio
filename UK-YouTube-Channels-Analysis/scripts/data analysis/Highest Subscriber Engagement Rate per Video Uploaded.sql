/*6. Top 3 Channels with the Highest Subscriber Engagement Rate per Video Uploaded
Objective: Identify the top 3 channels with the highest engagement rate, using views per video as a proxy for engagement. */

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
•	The TOP 3 clause limits the output to the top 3 channels.           
