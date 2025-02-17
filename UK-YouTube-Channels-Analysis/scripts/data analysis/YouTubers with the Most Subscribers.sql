/*1. Top 10 YouTubers with the Most Subscribers
Objective: Identify the top 10 channels with the highest number of subscribers. */

SELECT TOP 10
    channel_name,
    total_subscribers
FROM dbo.youtube_data
ORDER BY total_subscribers DESC;

/*Explanation:
•	The query selects the channel_name and total_subscribers columns.
•	It orders the results in descending order by total_subscribers to rank channels from highest to lowest.
•	The TOP 10 clause limits the output to the top 10 channels.
