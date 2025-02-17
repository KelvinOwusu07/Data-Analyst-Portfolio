/* Objective: Remove everything after the @ symbol (including the @ itself) in the channel_name column.
Tools Used: SQL Server.
Functions Used:
•	CHARINDEX: Locates the position of the @ symbol in the channel_name string.
•	LEFT: Extracts the portion of the string before the @ symbol.
• WHERE CHARINDEX('@', channel_name) > 0:Ensures the update is applied only to rows where the @ symbol exists.

SQL Script                                                                                                                              */

-- Update the channel_name column to remove everything after the @ symbol
UPDATE dbo.youtube_data
SET channel_name = LEFT(channel_name, CHARINDEX('@', channel_name) - 1)
WHERE CHARINDEX('@', channel_name) > 0;

Impact
/*•	Improved consistency in the channel_name column, making it easier to analyze and visualize data.
  •	Removed irrelevant text, ensuring accurate identification and grouping of channels.                                                  */

/*Objective: Identify rows with duplicate values in the channel_name, total_subscribers, total_views, and total_videos columns.
  Tools Used: SQL Server.
Functions Used:
•	ROW_NUMBER(): Assigns a unique sequential integer to rows within a partition of the dataset.
•	PARTITION BY: Defines the columns used to group rows for duplicate detection.
•	CTE (Common Table Expression): Creates a temporary result set for easier querying.


SQL Script                                                                                                                                */

  -- Identify duplicates using ROW_NUMBER()
WITH CTE AS (
    SELECT
        channel_name,
        total_subscribers,
        total_views,
        total_videos,
        ROW_NUMBER() OVER (
            PARTITION BY channel_name, total_subscribers, total_views, total_videos
            ORDER BY channel_name
        ) AS row_num
    FROM dbo.youtube_data
)
SELECT *
FROM CTE
WHERE row_num > 1;

Impact
/*•	Ensures data integrity by removing duplicate rows.
  •	Prevents skewed analysis results caused by repeated records.
   NOTE: No duplicates where found.

