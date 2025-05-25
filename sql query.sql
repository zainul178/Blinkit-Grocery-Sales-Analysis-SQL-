-- To see the table
select * from blinkit_data



-- Total sales
SELECT CAST(SUM(Total_Sales) / 1000000.0 
AS DECIMAL(10,2)) 
AS Total_Sales_Million
FROM blinkit_data;


-- Count of Unique Items in the Dataset
SELECT COUNT(DISTINCT Item_Identifier) AS Unique_Items
FROM blinkit_data;



-- Average Sales
SELECT CAST(AVG(Total_Sales)
AS INT)
AS Avg_Sales
FROM blinkit_data;



-- Number of Items Sold
SELECT COUNT(*) 
AS No_of_Orders
FROM blinkit_data;



-- Average Rating
SELECT CAST(AVG(Rating)
AS DECIMAL(10,1))
AS Avg_Rating
FROM blinkit_data;



-- Total Sales by Fat Content
SELECT Item_Fat_Content, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Item_Fat_Content;



-- Total Sales by Item Type
SELECT Item_Type, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC;


-- Average rating of products by outlet type
SELECT Outlet_Type, ROUND(AVG(Rating), 2) AS Average_Rating
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Average_Rating DESC;




-- Fat Content by Outlet for Total Sales
SELECT Outlet_Location_Type, 
       ISNULL([Low Fat], 0) AS Low_Fat, 
       ISNULL([Regular], 0) AS Regular
FROM 
(
    SELECT Outlet_Location_Type, Item_Fat_Content, 
           CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
    FROM blinkit_data
    GROUP BY Outlet_Location_Type, Item_Fat_Content
) AS SourceTable
PIVOT 
(
    SUM(Total_Sales) 
    FOR Item_Fat_Content IN ([Low Fat], [Regular])
) AS PivotTable
ORDER BY Outlet_Location_Type;



-- Total Sales by Outlet Establishment Year
SELECT Outlet_Establishment_Year, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;



-- Percentage of Sales by Outlet Size
SELECT 
    Outlet_Size, 
    CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
    CAST((SUM(Total_Sales) * 100.0 / SUM(SUM(Total_Sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;



-- Sales by Outlet Location
SELECT Outlet_Location_Type, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;


-- Top 5 outlets generating the highest total sales
SELECT TOP 5 Outlet_Identifier, ROUND(SUM(Total_Sales), 2) AS Total_Revenue
FROM blinkit_data
GROUP BY Outlet_Identifier
ORDER BY Total_Revenue DESC;




-- All Metrics by Outlet Type
SELECT Outlet_Type, 
CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
CAST(AVG(Total_Sales) AS DECIMAL(10,0)) AS Avg_Sales,
COUNT(*) AS No_Of_Items,
CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating,
CAST(AVG(Item_Visibility) AS DECIMAL(10,2)) AS Item_Visibility
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;

