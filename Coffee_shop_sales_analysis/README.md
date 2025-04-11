# Customer Loyalty Membership & Geographic Sales Analysis

## Overview
The business stakeholder wants to understand how customer loyalty (via the Loyalty Card program) correlates with purchasing behavior and sales performance across different geographic regions. Additionally, he wants insight into which product combinations (coffee type, roast type, and size) are driving profitability in key markets.
The objective is to analyze the relationship between loyalty card membership, geographic sales trends, and product profitability to identify opportunities for increasing customer retention and optimizing product offerings in high-potential regions

## Business Questions
1.	How does loyalty card membership influence sales volume, average order value, and product preferences?
2.	Which geographic regions generate the highest revenue and profit?
3.	What are the most profitable product combinations by region?
4.	Do loyalty cardholders prefer specific product attributes (e.g., premium roasts or larger sizes)?

## Data Description
![image alt](https://github.com/KelvinOwusu07/Data-Analyst-Portfolio/blob/cabb09f3246902d7445279d3e30c767440d9391b/Coffee_shop_sales_analysis/visuals/Untitled%20-%20Power%20BI%20Desktop%2007_04_2025%204_03_22%20pm.png)

**Data Dictionary**

-**Orders Table**
| Column | Data Type | Description | Notes |
|--------|-----------|-------------|-------|
| `Order_ID` | String | Unique identifier for each order | Primary key |
| `Order_Date` | Date | Date when order was placed | Format: YYYY-MM-DD |
| `Customer_ID` | String | Unique identifier for customer | Foreign key to Customers table |
| `Product_ID` | String | Unique identifier for product | Foreign key to Products table |
| `Quantity` | Integer | Number of units ordered | |
| `Country` | String | Customer's country | Derived from Customers table |
| `Sales` | Decimal | Total order value (Quantity × Unit_Price) | Calculated field |

-**Customers Table**
| Column | Data Type | Description | Notes |
|--------|-----------|-------------|-------|
| `Customer_ID` | String | Unique identifier for customer | Primary key |
| `Loyalty_Card` | Boolean | Whether customer has loyalty card | Values: TRUE/FALSE |

-**Products Table**
| Column | Data Type | Description | Notes |
|--------|-----------|-------------|-------|
| `Product_ID` | String | Unique identifier for product | Primary key |
| `Coffee_Type` | String | Type of coffee bean | Values: Arabica, Robusta, Liberica, Excelsa |
| `Roast_Type` | String | Coffee roast level | Values: Light, Medium, Dark |
| `Size` | String | Package size | Values: 0.2kg, 0.5kg, 1kg, 2.5kg |
| `Unit_Price` | Decimal | Price per unit in local currency | |
| `Profit` | Decimal | Profit per unit in local currency | |

## Tools and Technologies
- **Data Cleaning and Analysis**: Microsoft excel

- **Documentation**: Microsoft Word

## Key Steps
1. **Data Preparation**: Sheets were combined using Customer_ID and Product_ID as keys.![click here for more details...](scripts/data_preparation/README.md)
1. **Data Cleaning**: Format Standardization and checked for Duplicates.![click here for more details...](scripts/data_cleaning/README.md)
2. **Data Analysis**: Created Pivot Tables.![click here for more details...](scripts/data_analysis/README.md)

3. **Documentation**: Summarized findings and provided actionable recommendations.

## Findings
- **Influence of Loyalty Card Membership on Sales Volume, Average Order Value, and Product Preferences**

**Results:**

![image alt](https://github.com/KelvinOwusu07/Data-Analyst-Portfolio/blob/ec734c51ee4a3a6796fb6d00607af560f1cf35a1/Coffee_shop_sales_analysis/visuals/Customer%20Loyalty%20%26%20Geographic%20Sales%20Analysis%20-%20Word%2007_04_2025%202_59_04%20pm.png)


**Insights:**

Loyalty Cardholders:
They drive slightly fewer sales but have a lower average order value (AOV). Prefer Excelsa and Robusta coffee types slightly more than non-cardholders.

Non-Cardholders:
They drive more sales and have a higher average order value (AOV). Prefer Arabica and Liberica coffee types slightly more than loyalty cardholders.

Product Preferences:
Excelsa and Liberica have the highest AOVs across both groups, indicating they are premium products. Robusta has the lowest AOV, suggesting it’s a more affordable option


- **Geographic Regions Generating the Highest Revenue and Profit**

**Results:**

![image alt](https://github.com/KelvinOwusu07/Data-Analyst-Portfolio/blob/6f0705d5b2a223a0a9652ec6140e1fef2ae7b057/Coffee_shop_sales_analysis/visuals/Customer%20Loyalty%20%26%20Geographic%20Sales%20Analysis%20-%20Word%2007_04_2025%202_45_47%20pm.png)

**Insights:**

United States generates the highest revenue by far, contributing 79% of total revenue. Maintains a profit margin of ~10%, consistent with other regions.

Ireland is the second-highest revenue generator, contributing 15% of total revenue and has a profit margin of ~10%, similar to other regions.

United Kingdom generates the least revenue, contributing only 6% of total revenue and has a slightly higher profit margin (10.2%), but its overall revenue and profit are much lower compared to the other regions.


- **Most Profitable Product Combinations by Region**

**Results:**

![image alt](https://github.com/KelvinOwusu07/Data-Analyst-Portfolio/blob/281d2e3ca2275ca0d08e0baf45ee63fe8122e6ab/Coffee_shop_sales_analysis/visuals/Customer%20Loyalty%20%26%20Geographic%20Sales%20Analysis%20-%20Word%2007_04_2025%203_23_19%20pm.png)


**Insights:**

Ireland:
Liberica (Dark, 2.5kg) is the top performer, followed by Arabica (Medium, 2.5kg). Larger sizes (2.5kg) tend to drive higher profitability.

United Kingdom:
Excelsa (Dark, 2.5kg) and Liberica (Light, 2.5kg) are the top performers. The UK market shows a preference for larger sizes (2.5kg) and premium roasts (Dark and Light).

United States:
Liberica (Dark, 2.5kg) and Arabica (Medium, 2.5kg) are the top performers. The US market shows a strong preference for larger sizes (2.5kg) and premium roasts (Dark and Medium).


- **Specific Product Attributes Prefered By Loyalty Cardholders**

**Results:**

![image alt](https://github.com/KelvinOwusu07/Data-Analyst-Portfolio/blob/f4f533beea2b7447e7874e2d4eb3d548bf10d1fb/Coffee_shop_sales_analysis/visuals/Customer%20Loyalty%20%26%20Geographic%20Sales%20Analysis%20-%20Word%2007_04_2025%203_30_23%20pm.png)


**Insights:**

Loyalty Cardholders:
Prefer Excelsa and Arabica coffee types. Favor Dark roasts over Light and Medium. Purchase smaller sizes (0.2kg) more frequently.

Non-Cardholders:
Prefer Arabica and Liberica coffee types. Favor Light and Medium roasts over Dark. Purchase larger sizes (0.5kg, 1kg, and 2.5kg) more frequently.
  
## Visualisation
![Power BI Dashboard](visuals/coffee_sales_dashboard.gif)

https://github.com/KelvinOwusu07/Data-Analyst-Portfolio/blob/d3eba777b201a8fb454f54d5e0e926dc71638c42/Coffee_shop_sales_analysis/visuals/coffee_sales_dashboard.gif

[CLICK HERE TO INTERACT WITH THE DASHBOARD](https://app.fabric.microsoft.com/view?r=eyJrIjoiMDhjZDI3NjktYWM5Yy00ODVjLTk0NzctMjJkNDQxY2I0ZTMyIiwidCI6ImUwMmQxZTM1LWZmYjYtNGY0My1hZWVhLWFjNzlhZTBmM2M1ZSJ9)

## Recommendations 
**1. Loyalty Cardholders**

Offer discounts or promotions on premium products (e.g., Excelsa, Liberica) and larger sizes to increase AOV. Highlight Dark roast options in marketing campaigns.

**2. Non-Cardholders**

Launch targeted campaigns to encourage loyalty program sign-ups, emphasizing benefits like discounts on larger sizes and premium roasts. Focus on promoting Arabica and Liberica coffee types.

**3. Geographic Strategies**

Invest in marketing and product offerings in the United States, given its dominant revenue contribution. Explore opportunities to grow revenue in the United Kingdom, potentially by introducing new product combinations or promotions.

**4.Product Optimization**

Focus on promoting larger sizes (2.5kg) and premium roasts across all regions. Consider introducing new product bundles or discounts to drive sales of less popular combinations (e.g., Robusta).
