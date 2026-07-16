--4.dim_location
IF OBJECT_ID('stg_brightlearn.dbo.stg_dim_location', 'U') IS NULL
BEGIN
     Create Table [stg_brightlearn].[dbo].[stg_dim_location](
                  [Location_ID] INT IDENTITY (1,1) PRIMARY KEY,
                  [Customer_City] [nvarchar] (100) NOT NULL,
                  [Customer_Province] [nvarchar] (100) NOT NULL,
                  [Store_City] [nvarchar] (100) NOT NULL,
                  [Store_Province] [nvarchar] (100) NOT NULL,
                  [Store_Region] [nvarchar] (20) NOT NULL,
                  [Create_Date] DATETIME NOT NULL DEFAULT GETDATE()
                  );
END;
INSERT INTO [stg_brightlearn].[dbo].[stg_dim_location](
            Customer_City,
            Customer_Province,
            Store_City,
            Store_Province,
            Store_Region
            )
SELECT DISTINCT
            COALESCE([Customer_City], 'Unknown'),
            COALESCE([Customer_Province], 'Unknown'),
            Store_City,
            Store_Province,
            Store_Region
FROM [stg_brightlearn].[dbo].[brightmart];

--validate the insert
SELECT *
FROM [stg_brightlearn].[dbo].[stg_dim_location];

