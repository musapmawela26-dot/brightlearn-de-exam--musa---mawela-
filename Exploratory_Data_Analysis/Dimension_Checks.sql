--1.dim_category
SELECT DISTINCT [category]
FROM stg_brightlearn.dbo.brightmart; 

--2.dim_customer
SELECT DISTINCT [customer_first_name]
      ,[customer_last_name]
      ,[customer_email]
      ,[customer_phone]
      ,[customer_loyalty_tier]
      ,[customer_since]
FROM stg_brightlearn.dbo.brightmart;

--3.dim_date
SELECT DISTINCT [transaction_date]
FROM stg_brightlearn.dbo.brightmart;

--4.dim_location
SELECT DISTINCT [customer_city]
      ,[customer_province]
      ,[store_city]
      ,[store_province]
      ,[store_region]
FROM stg_brightlearn.dbo.brightmart;

--5.dim_payment
SELECT DISTINCT [payment_method]
FROM stg_brightlearn.dbo.brightmart; 

--6.dim_product
SELECT DISTINCT [product_name]
      ,[sub_category]
      ,[sku]
      ,[stock_on_hand]
      ,[reorder_threshold]
FROM stg_brightlearn.dbo.brightmart;

--7.dim_store
SELECT DISTINCT [store_name]
      ,[store_manager]
      ,[cashier_name]
      ,[supplier]
FROM stg_brightlearn.dbo.brightmart;

--8.fact_sales
SELECT DISTINCT [transaction_amount]
      ,[transaction_discount]
      ,[unit_price]
      ,[cost_price]
      ,[qty]
      ,[line_amount]
FROM stg_brightlearn.dbo.brightmart; 