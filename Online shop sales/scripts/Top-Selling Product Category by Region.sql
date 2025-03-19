-- Top-Selling Product Category by Region
WITH Region_Product_Sales AS (
    SELECT 
        "Region",
        "Product Category",
        ROUND(SUM("Total Revenue"), 2) AS Category_Revenue
    FROM 
        Online_Sales_Data
    GROUP BY 
        "Region", "Product Category"
),
Ranked_Products AS (
    SELECT 
        "Region",
        "Product Category",
        Category_Revenue,
        RANK() OVER (PARTITION BY "Region" ORDER BY Category_Revenue DESC) AS Rank
    FROM 
        Region_Product_Sales
)
SELECT 
    "Region",
    "Product Category",
    Category_Revenue
FROM 
    Ranked_Products
WHERE 
    Rank = 1; -- Top-selling product category for each region
