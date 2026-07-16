--1.dim_category
IF OBJECT_ID('[stg_brightlearn].[dbo].[stg_dim_category]', 'U') IS NULL
BEGIN
     Create Table [stg_brightlearn].[dbo].[stg_dim_category](
                  [Category_ID] INT IDENTITY (1,1) PRIMARY KEY,
                  [Category] [nvarchar] (100) NULL,
                  [Create_Date] DATETIME NOT NULL DEFAULT GETDATE()
                  );
END;
INSERT INTO [stg_brightlearn].[dbo].[stg_dim_category](
            Category
            )
SELECT DISTINCT
            Category    
FROM [stg_brightlearn].[dbo].[brightmart];
;
--validate the insert
SELECT *
FROM [stg_brightlearn].[dbo].[stg_dim_category];

