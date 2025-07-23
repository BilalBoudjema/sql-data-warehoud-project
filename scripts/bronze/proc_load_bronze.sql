CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
	DECLARE @start_time DATETIME, @end_time DATETIME, @start_time_batch DATETIME, @end_time_batch DATETIME;
	BEGIN TRY

		-- CALCULATING THE START TIME OF BATCH
		SET @start_time_batch = GETDATE();
		-- START OF PROCESS
		PRINT '============================================================';
		PRINT 'STARTING BRONZE LAYER LOAD';
		PRINT '============================================================';

		-- CRM TABLES
		PRINT '';
		PRINT '------------------------------------------------------------';
		PRINT 'SECTION: LOADING CRM TABLES';
		PRINT '------------------------------------------------------------';

		-- bronze.crm_cust_info
		SET @start_time = GETDATE();
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
		SET @end_time = GETDATE();
		PRINT 'Data inserted.';
		PRINT 'Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '--------------';

		-- bronze.crm_prd_info
		SET @start_time = GETDATE();
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
		SET @end_time = GETDATE();
		PRINT 'Data inserted.';
		PRINT 'Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '--------------';

		-- bronze.crm_sales_details
		SET @start_time = GETDATE();
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
		SET @end_time = GETDATE();
		PRINT 'Data inserted.';
		PRINT 'Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '--------------';

		-- ERP TABLES
		PRINT '';
		PRINT '------------------------------------------------------------';
		PRINT 'SECTION: LOADING ERP TABLES';
		PRINT '------------------------------------------------------------';

		-- bronze.erp_cust_az12
		SET @start_time = GETDATE();
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
		SET @end_time = GETDATE();
		PRINT 'Data inserted.';
		PRINT 'Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '--------------';

		-- bronze.erp_loc_a101
		SET @start_time = GETDATE();
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
		SET @end_time = GETDATE();
		PRINT 'Data inserted.';
		PRINT 'Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '--------------';

		-- bronze.erp_px_cat_g1v2
		SET @start_time = GETDATE();
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
		SET @end_time = GETDATE();
		PRINT 'Data inserted.';
		PRINT 'Load Duration: ' + CAST(DATEDIFF(SECOND, @start_time, @end_time) AS NVARCHAR) + ' seconds';
		PRINT '--------------';


		-- GEETING END TIME LOAD BATCH 
		SET @end_time_batch = GETDATE();

		PRINT '';
		PRINT '============================================================';
		PRINT 'LOADING BRONZE LAYER IS COMPLETED SUCCESSFULLY';
		PRINT 'TOTAL LOAD DURATION: ' + CAST(DATEDIFF(SECOND, @start_time_batch, @end_time_batch) AS NVARCHAR) + ' seconds';
		PRINT '============================================================';


		-- END OF PROCESS
		PRINT '';
		PRINT '============================================================';
		PRINT 'BRONZE LAYER LOAD COMPLETED SUCCESSFULLY';
		PRINT '============================================================';

	END TRY
	BEGIN CATCH
		PRINT '============================================================';
		PRINT 'ERROR OCCURED DURING LOADING BRONZE LAYER';
		PRINT 'ERROR MESSAGE: ' + ERROR_MESSAGE();
		PRINT 'ERROR NUMBER: ' + CAST(ERROR_NUMBER() AS NVARCHAR);
		PRINT 'ERROR STATE: ' + CAST(ERROR_STATE() AS NVARCHAR);
		PRINT '============================================================';
	END CATCH
END


exec bronze.load_bronze;
