
USE MyFC;
GO

CREATE OR ALTER PROCEDURE dbo.usp_MyFC_Players_Per_Team_Load
AS
BEGIN
    /*
    NAME: dbo.usp_MyFC_Players_Per_Team_Load
    PURPOSE: Load player counts for each team.
    AUTHOR: David Ebedot
    */

    -- Reload data
    TRUNCATE TABLE dbo.t_MyFC_Players_Per_Team;

    INSERT INTO dbo.t_MyFC_Players_Per_Team
        (Team, Total_Players)
    SELECT
        Team,
        Total_Players
    FROM dbo.v_MyFC_Players_Per_Team;

    -- Review results
    SELECT *
    FROM dbo.t_MyFC_Players_Per_Team
    ORDER BY Team;
END;
GO
