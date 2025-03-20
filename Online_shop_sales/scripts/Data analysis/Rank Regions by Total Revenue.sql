-- Rank Regions by Total Revenue
WITH Region_Sales AS (
    SELECT 
        "Region",
        ROUND(SUM("Total Revenue"), 2) AS Total_Revenue
    FROM 
        Online_Sales_Data
    GROUP BY 
        "Region"
)
SELECT 
    "Region",
    Total_Revenue,
    RANK() OVER (ORDER BY Total_Revenue DESC) AS Sales_Rank
FROM 
    Region_Sales
ORDER BY 
    Sales_Rank;
    
 /*   Explanation:
Region_Sales CTE:
Calculates the total revenue for each region using SUM("Total Revenue").
Groups the results by Region.

RANK() Function:
Assigns a rank to each region based on the Total_Revenue in descending order (highest revenue gets rank 1).

ORDER BY Sales_Rank:
Ensures the results are ordered by rank, showing the top-performing regions first.
