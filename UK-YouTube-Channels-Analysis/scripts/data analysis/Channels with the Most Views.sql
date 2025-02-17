/*3. Top 3 Channels with the Most Views
Objective: Identify the top 3 channels with the highest total views.*/
                                                                                                  

SELECT TOP 3
 channel_name,
    total_views
FROM dbo.youtube_data
ORDER BY total_views DESC;

/*Explanation:
•	The query selects the channel_name and total_views columns.
•	It orders the results in descending order by total_views to rank channels from highest to lowest.
•	The TOP 3 clause limits the output to the top 3 channels.
