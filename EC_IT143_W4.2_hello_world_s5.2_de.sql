
USE EC_IT143_DA;
GO

-- Step 5.2: Refine the Table Architecture

DROP TABLE IF EXISTS dbo.t_hello_world;
GO

CREATE TABLE dbo.t_hello_world
(
    ID INT IDENTITY(1,1) NOT NULL,
    my_message VARCHAR(100) NOT NULL,
    current_date_time DATETIME2 NOT NULL,

    CONSTRAINT PK_hello_world
        PRIMARY KEY (ID)
);
GO

