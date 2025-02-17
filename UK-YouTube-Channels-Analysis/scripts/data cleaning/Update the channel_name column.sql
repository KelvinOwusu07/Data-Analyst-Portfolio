/* Objective: Remove everything after the @ symbol (including the @ itself) in the channel_name column.
Tools Used: SQL Server.
Functions Used:
•	CHARINDEX: Locates the position of the @ symbol in the channel_name string.
•	LEFT: Extracts the portion of the string before the @ symbol.
• WHERE CHARINDEX('@', channel_name) > 0:Ensures the update is applied only to rows where the @ symbol exists.

SQL Script                                                                                                        */                      

-- Update the channel_name column to remove everything after the @ symbol
UPDATE dbo.youtube_data
SET channel_name = LEFT(channel_name, CHARINDEX('@', channel_name) - 1)
WHERE CHARINDEX('@', channel_name) > 0;



Impact
/*•	Improved consistency in the channel_name column, making it easier to analyze and visualize data.
  •	Removed irrelevant text, ensuring accurate identification and grouping of channels.        
