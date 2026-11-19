
USE Simpsons;
GO

-- EC_IT143_W4.2_Simpsons_s5.2_de.sql
-- Step 5.2: Refine the Table Architecture
-- Community: Simpsons
-- Author: David Ebedot

DROP TABLE IF EXISTS dbo.t_Simpsons_Transactions_Per_Category;
GO

CREATE TABLE dbo.t_Simpsons_Transactions_Per_Category
(
    Category_ID INT IDENTITY(1,1) NOT NULL,
    Category VARCHAR(150) NULL,

    Total_Transactions INT NOT NULL
        CONSTRAINT DF_Simpsons_Total_Transactions DEFAULT (0),

    CONSTRAINT PK_Simpsons_Transactions_Per_Category
        PRIMARY KEY CLUSTERED (Category_ID)
);
GO
