/*5. Top 3 Channels with the Highest Views per Subscriber Ratio
Objective: Identify the top 3 channels with the highest ratio of views to subscribers. */

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
