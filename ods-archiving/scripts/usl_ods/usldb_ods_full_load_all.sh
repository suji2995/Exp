echo "camel_messageprocessed loaded"
echo "Loading glance_daily_log"
/home/airflow/airflow-jobs/scripts/usl_ods/usldb_ods_full_load.sh glance_daily_log dbo
echo "glance_daily_log loaded"
echo "Loading glance_la_accounts"
/home/airflow/airflow-jobs/scripts/usl_ods/usldb_ods_full_load.sh glance_la_accounts dbo
echo "glance_la_accounts loaded"
echo "Loading nova_la_accounts"
/home/airflow/airflow-jobs/scripts/usl_ods/usldb_ods_full_load.sh nova_la_accounts dbo
echo "nova_la_accounts loaded"
echo "Loading onm_image_mapping"
/home/airflow/airflow-jobs/scripts/usl_ods/usldb_ods_full_load.sh onm_image_mapping dbo
echo "onm_image_mapping loaded"
echo "Loading temp_account"
/home/airflow/airflow-jobs/scripts/usl_ods/usldb_ods_full_load.sh temp_account dbo
echo "temp_account loaded"
echo "Loading tenant_account_mapping"
/home/airflow/airflow-jobs/scripts/usl_ods/usldb_ods_full_load.sh tenant_account_mapping dbo
echo "tenant_account_mapping loaded"
echo "Loading tmp_summary_attribute_value"
/home/airflow/airflow-jobs/scripts/usl_ods/usldb_ods_full_load.sh tmp_summary_attribute_value dbo
echo "tmp_summary_attribute_value loaded"
echo "Loading usage_error_handling"
/home/airflow/airflow-jobs/scripts/usl_ods/usldb_ods_full_load.sh usage_error_handling dbo
echo "usage_error_handling loaded"
echo "Loading usage_summarization_request"
/home/airflow/airflow-jobs/scripts/usl_ods/usldb_ods_full_load.sh usage_summarization_request dbo
echo "usage_summarization_request loaded"
echo "Loading usg_billing_error_handling"
/home/airflow/airflow-jobs/scripts/usl_ods/usldb_ods_full_load.sh usg_billing_error_handling dbo
echo "usg_billing_error_handling loaded"
echo "Loading usg_product_table"
/home/airflow/airflow-jobs/scripts/usl_ods/usldb_ods_full_load.sh usg_product_table dbo
echo "usg_product_table loaded"
