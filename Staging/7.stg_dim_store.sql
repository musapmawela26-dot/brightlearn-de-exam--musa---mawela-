--7.dim_store
IF OBJECT_ID('stg_brightlearn.dbo.stg_dim_store', 'U') IS NULL
BEGIN
     Create Table [stg_brightlearn].[dbo].[stg_dim_store](
                  [Store_ID] INT IDENTITY (1,1) PRIMARY KEY,
                  [Store_Name] [nvarchar] (50) NOT NULL,
                  [Store_Manager] [nvarchar] (50) NOT NULL,
                  [Cashier_Name] [nvarchar] (50) NOT NULL,
                  [Supplier] [nvarchar] (100) NOT NULL,
                  [Create_Date] DATETIME NOT NULL DEFAULT GETDATE()
                  );
END;
INSERT INTO [stg_brightlearn].[dbo].[stg_dim_store](
            Store_Name,
            Store_Manager,
            Cashier_Name,
            Supplier
            )
SELECT DISTINCT
            Store_Name,
            Store_Manager,
            Cashier_Name,
            Supplier
FROM [stg_brightlearn].[dbo].[brightmart];

--validate the insert
SELECT *
FROM [stg_brightlearn].[dbo].[stg_dim_store];
