--6.dim_product
IF OBJECT_ID('stg_brightlearn.dbo.stg_dim_product', 'U') IS NULL
BEGIN
     Create Table [stg_brightlearn].[dbo].[stg_dim_product](
                  [Product_ID] INT IDENTITY (1,1) PRIMARY KEY,
                  [Product_Name] [nvarchar] (100) NOT NULL,
                  [Sku] [nvarchar] (50) NOT NULL,
                  [Sub_Category] [nvarchar] (100) NOT NULL,
                  [Reorder_Threshold] tinyint NOT NULL,
                  [Stock_On_Hand] tinyint NOT NULL,
                  [Create_Date] DATETIME NOT NULL DEFAULT GETDATE()
                  );
END;
INSERT INTO [stg_brightlearn].[dbo].[stg_dim_product](
            Product_Name,
            Sku,
            Sub_Category,
            Reorder_Threshold,
            Stock_On_Hand
            )
SELECT DISTINCT
            Product_Name,
            Sku,
            Sub_Category,
            Reorder_Threshold,
            Stock_On_Hand
FROM [stg_brightlearn].[dbo].[brightmart];

--validate the insert
SELECT * 
FROM [stg_brightlearn].[dbo].[stg_dim_product];
            
                 