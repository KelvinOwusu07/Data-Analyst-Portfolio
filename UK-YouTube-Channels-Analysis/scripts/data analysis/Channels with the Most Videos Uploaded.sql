/*2. Top 3 Channels with the Most Videos Uploaded
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
