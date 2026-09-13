----------------------------------------------------
--Creating two databases for Fraudulent Transactions
----------------------------------------------------

IF DB_ID('stg_fraudulent_transactions') IS NULL
BEGIN
    CREATE DATABASE [stg_fraudulent_transactions]
END;


IF DB_ID('dwh_fraudulent_transactions') IS NULL
BEGIN
    CREATE DATABASE [dwh_fraudulent_transactions]
END;
