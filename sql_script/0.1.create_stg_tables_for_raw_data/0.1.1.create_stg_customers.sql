------------------------------------------
-- Create customers' table with safe rerun
------------------------------------------

IF OBJECT_ID('stg_fraudulent_transactions.dbo.customers', 'U') IS NULL
BEGIN
    CREATE TABLE [stg_fraudulent_transactions].[dbo].[customers]
    (
        [CustomerID] NVARCHAR(50) NOT NULL,
        [Name] NVARCHAR(50) NOT NULL,
        [Country] NVARCHAR(50) NOT NULL,
        [AccountStatus] NVARCHAR(50) NOT NULL,
        [DateCreated] DATETIME2(7) NOT NULL DEFAULT SYSDATETIME(),
        [DateModified] DATETIME2(7) NOT NULL DEFAULT SYSDATETIME()
    );
END;
GO

