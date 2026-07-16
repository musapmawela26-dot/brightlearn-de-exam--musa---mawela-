--3.dim_date
IF OBJECT_ID('stg_brightlearn.dbo.stg_dim_date', 'U') IS NULL
BEGIN
     Create Table [stg_brightlearn].[dbo].[stg_dim_date](
                  [Date_ID] INT IDENTITY (1,1) PRIMARY KEY,
                  [Transaction_Date] date NOT NULL,
                  Year INT NOT NULL,
                  Month INT NOT NULL,
                  Day INT NOT NULL,
                  [Create_Date] DATETIME NOT NULL DEFAULT GETDATE()
                  );
END;
INSERT INTO [stg_brightlearn].[dbo].[stg_dim_date](
            Transaction_Date,
            Year,
            Month,
            Day
            )
SELECT DISTINCT
            Transaction_Date,
            Year(Transaction_Date),
            Month(Transaction_Date),
            Day(Transaction_Date)
FROM [stg_brightlearn].[dbo].[brightmart];

--validate the insert 
SELECT *
FROM [stg_brightlearn].[dbo].[stg_dim_date];


             