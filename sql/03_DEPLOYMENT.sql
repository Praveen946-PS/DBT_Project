-- ============================================================================
-- CDW_TEST: DBT PROJECT DEPLOYMENT
-- Purpose: Deploy and execute dbt project from workspace
-- Author: MURALI
-- Created: 2026-05-02
-- ============================================================================

-- GRANT (if needed)
GRANT CREATE DBT PROJECT ON SCHEMA CDW_DEV_TEST.PUBLIC TO ROLE SYSADMIN;

-- DEPLOY DBT PROJECT
CREATE DBT PROJECT CDW_DEV_TEST.PUBLIC.DBT_020526
  FROM 'snow://workspace/CDW_DEV.PUBLIC.CDW/versions/live/DBT_020526';

-- EXECUTE DBT PROJECT
EXECUTE DBT PROJECT CDW_DEV_TEST.PUBLIC.DBT_020526 ARGS = 'run';

-- VERIFY DEPLOYMENT
SHOW DBT PROJECTS IN CDW_DEV_TEST.PUBLIC;
DESCRIBE DBT PROJECT CDW_DEV_TEST.PUBLIC.DBT_020526;