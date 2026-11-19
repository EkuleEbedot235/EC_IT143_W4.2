
USE Simpsons;
GO

-- EC_IT143_W4.2_Simpsons_s3_de.sql
-- Step 3: Create an Ad Hoc SQL Query
-- Community: Simpsons
-- Author: David Ebedot

-- Q: How many transactions are recorded in each category?

SELECT
    Category,
    COUNT(*) AS Total_Transactions
FROM dbo.Planet_Express
GROUP BY Category
ORDER BY Category;
GO
