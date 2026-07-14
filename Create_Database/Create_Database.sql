--create database if not exists stg_brightlearn--

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name ='stg_brightlearn')
BEGIN 
     CREATE DATABASE stg_brightlearn
END;

--create database if not exists clean_brightlearn--

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name ='clean_brightlearn')
BEGIN 
     CREATE DATABASE clean_brightlearn
END;

--create database if not exists dwh_brightlearn--

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name ='dwh_brightlearn')
BEGIN 
     CREATE DATABASE dwh_brightlearn
END;