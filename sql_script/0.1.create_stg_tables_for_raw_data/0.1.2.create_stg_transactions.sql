---------------------------------------------
-- Create transactions' table with safe rerun
---------------------------------------------

IF OBJECT_ID('stg_fraudulent_transactions.dbo.transactions', 'U') IS NULL
BEGIN
    CREATE TABLE [stg_fraudulent_transactions].[dbo].[transactions]
    (
        [TransactionID] NVARCHAR(50) NOT NULL,
        [CustomerID] NVARCHAR(50) NOT NULL,
        [Amount] INT NOT NULL,
        [TransactionDate] DATETIME2(7) NOT NULL,
        [Location] NVARCHAR(50) NOT NULL,
        [DateCreated] DATETIME2(7) NOT NULL DEFAULT SYSDATETIME(),
        [DateModified] DATETIME2(7) NOT NULL DEFAULT SYSDATETIME()
    );
END;
GO