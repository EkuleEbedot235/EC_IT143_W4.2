
USE Simpsons;
GO

-- EC_IT143_W4.2_Simpsons_s6_de.sql
-- Step 6: Load the Table from the View
-- Community: Simpsons
-- Author: David Ebedot

-- 1. Reload data
TRUNCATE TABLE dbo.t_Simpsons_Transactions_Per_Category;

INSERT INTO dbo.t_Simpsons_Transactions_Per_Category
    (Category, Total_Transactions)
SELECT
    Category,
    Total_Transactions
FROM dbo.v_Simpsons_Transactions_Per_Category;

-- 2. Review results
SELECT *
FROM dbo.t_Simpsons_Transactions_Per_Category
ORDER BY Category_ID;
GO
