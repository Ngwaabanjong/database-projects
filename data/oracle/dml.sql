-- Run this on RDS Database to import from s3 
-- Dwonload all files from s3 to RDS
SELECT rdsadmin.rdsadmin_s3_tasks.download_from_s3 (
    p_bucket_name     => '<bucket_name>',
    p-_directory_name => '<path_to_file>')
  AS TASK_ID FROM DUAL;

-- Download files in a specific folder to RDS
SELECT rdsadmin.rdsadmin_s3_tasks.download_from_s3 (
    p_bucket_name          => '<bucket_name>',
    p_s3_prefix            => '<folder_name>',
    p-_directory_name      => '<path_to_file>'
    p_decompression_format => 'NONE')
  AS TASK_ID FROM DUAL;

-- Display output
SELECT text FROM table(rdsadmin.rdsadmin_s3_tasks.get_task_output(task_id => 'TASK_ID'));
SELECT text FROM table(rdsadmin.rds_file_util.read_text_file('BDUMP', 'dbtask-<task-id>.log'));

-- Oracle Queries
-- view instance status
select status from v$instance; 

-- Descript Users
DESC dba_users

-- Get all schemas
select name from v$schema;

-- Get all users
select username from dba_users;

-- Get all roles
select role from dba_roles;

-- Get all privileges
select privilege from dba_sys_privs;

-- Get all objects
select object_name from dba_objects;

-- Get all views
select view_name from dba_views;

-- Get all procedures
select procedure_name from dba_procedures;

-- Get all packages
select package_name from dba_packages;

-- Get all types
select type_name from dba_types;

-- Get all sequences
select sequence_name from dba_sequences;

-- Get all constraints
select constraint_name from dba_constraints;

-- Get all indexes
select index_name from dba_indexes;

-- Get all triggers
select trigger_name from dba_triggers;

-- Get all materialized views
select mv_name from dba_mviews;

-- Get all databases
select name from v$database;

-- Get all tables
SELECT table_name FROM user_tables;

-- Get all columns of a table
SELECT column_name FROM user_tab_columns WHERE table_name = 'TABLE_NAME';


-- Get all rows of a table
SELECT * FROM TABLE_NAME;

-- Get all rows of a table with a specific column
SELECT COLUMN_NAME FROM TABLE_NAME;

-- Get all rows of a table with a specific column and a specific value
SELECT COLUMN_NAME FROM TABLE_NAME WHERE COLUMN_NAME = 'VALUE';


