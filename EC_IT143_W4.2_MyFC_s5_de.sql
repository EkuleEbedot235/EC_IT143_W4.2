
USE MyFC;
GO

DROP TABLE IF EXISTS dbo.t_MyFC_Players_Per_Team;
GO

CREATE TABLE dbo.t_MyFC_Players_Per_Team
(
    Team VARCHAR(10) NOT NULL,
    Total_Players INT NOT NULL
        CONSTRAINT DF_MyFC_Total_Players DEFAULT (0),

    CONSTRAINT PK_MyFC_Players_Per_Team
        PRIMARY KEY CLUSTERED (Team)
);
GO
