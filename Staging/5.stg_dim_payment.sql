--5.dim_payment
IF OBJECT_ID('stg_brightlearn.dbo.stg_dim_payment', 'U') IS NULL
BEGIN
     Create Table [stg_brightlearn].[dbo].[stg_dim_payment](
                  [Payment_ID] INT IDENTITY (1,1) PRIMARY KEY,
                  [Payment_Method] [nvarchar] (20) NOT NULL,
                  [Create_Date] DATETIME NOT NULL DEFAULT GETDATE()
                  );
END;
INSERT INTO [stg_brightlearn].[dbo].[stg_dim_payment](
            Payment_Method
            )
SELECT DISTINCT
            Payment_Method
FROM [stg_brightlearn].[dbo].[brightmart];

--validate the insert
SELECT *
FROM [stg_brightlearn].[dbo].[stg_dim_payment];
    