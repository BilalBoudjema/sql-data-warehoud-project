CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
	-- START OF PROCESS
	PRINT '============================================================';
	PRINT 'STARTING BRONZE LAYER LOAD';
	PRINT '============================================================';

	-- CRM TABLES
	PRINT '';
	PRINT '------------------------------------------------------------';
	PRINT 'SECTION: LOADING CRM TABLES';
	PRINT '------------------------------------------------------------';

	PRINT '';
	PRINT 'TABLE: bronze.crm_cust_info';
	PRINT '------------------------------------------------------------';
	PRINT 'Truncating existing data...';
	TRUNCATE TABLE bronze.crm_cust_info;
	PRINT 'Table truncated.';
	PRINT 'Loading new data...';
	BULK INSERT bronze.crm_cust_info
	FROM 'C:\Users\Bilal\Desktop\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);
	PRINT 'Data inserted.';

	PRINT '';
	PRINT 'TABLE: bronze.crm_prd_info';
	PRINT '------------------------------------------------------------';
	PRINT 'Truncating existing data...';
	TRUNCATE TABLE bronze.crm_prd_info;
	PRINT 'Table truncated.';
	PRINT 'Loading new data...';
	BULK INSERT bronze.crm_prd_info
	FROM 'C:\Users\Bilal\Desktop\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);
	PRINT 'Data inserted.';

	PRINT '';
	PRINT 'TABLE: bronze.crm_sales_details';
	PRINT '------------------------------------------------------------';
	PRINT 'Truncating existing data...';
	TRUNCATE TABLE bronze.crm_sales_details;
	PRINT 'Table truncated.';
	PRINT 'Loading new data...';
	BULK INSERT bronze.crm_sales_details
	FROM 'C:\Users\Bilal\Desktop\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);
	PRINT 'Data inserted.';

	-- ERP TABLES
	PRINT '';
	PRINT '------------------------------------------------------------';
	PRINT 'SECTION: LOADING ERP TABLES';
	PRINT '------------------------------------------------------------';

	PRINT '';
	PRINT 'TABLE: bronze.erp_cust_az12';
	PRINT '------------------------------------------------------------';
	PRINT 'Truncating existing data...';
	TRUNCATE TABLE bronze.erp_cust_az12;
	PRINT 'Table truncated.';
	PRINT 'Loading new data...';
	BULK INSERT bronze.erp_cust_az12
	FROM 'C:\Users\Bilal\Desktop\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);
	PRINT 'Data inserted.';

	PRINT '';
	PRINT 'TABLE: bronze.erp_loc_a101';
	PRINT '------------------------------------------------------------';
	PRINT 'Truncating existing data...';
	TRUNCATE TABLE bronze.erp_loc_a101;
	PRINT 'Table truncated.';
	PRINT 'Loading new data...';
	BULK INSERT bronze.erp_loc_a101
	FROM 'C:\Users\Bilal\Desktop\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);
	PRINT 'Data inserted.';

	PRINT '';
	PRINT 'TABLE: bronze.erp_px_cat_g1v2';
	PRINT '------------------------------------------------------------';
	PRINT 'Truncating existing data...';
	TRUNCATE TABLE bronze.erp_px_cat_g1v2;
	PRINT 'Table truncated.';
	PRINT 'Loading new data...';
	BULK INSERT bronze.erp_px_cat_g1v2
	FROM 'C:\Users\Bilal\Desktop\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);
	PRINT 'Data inserted.';

	-- END OF PROCESS
	PRINT '';
	PRINT '============================================================';
	PRINT 'BRONZE LAYER LOAD COMPLETED SUCCESSFULLY';
	PRINT '============================================================';
END;

	-- To execute procedure

EXEC bronze.load_bronze;
