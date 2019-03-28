
----------------------------------
-- grant for HHS_HR_RW_ROLE
----------------------------------
GRANT EXECUTE ON HHS_HR.SP_UPDATE_CMS_REQUEST_TABLE TO HHS_HR_RW_ROLE;
GRANT EXECUTE ON HHS_HR.SP_UPDATE_INTG_DATA TO HHS_HR_RW_ROLE;
GRANT EXECUTE ON HHS_HR.SP_TRUNC_CMS_REQUEST_TABLE TO HHS_HR_RW_ROLE;
GRANT EXECUTE ON HHS_HR.SP_CMS_REQUEST_STG2FNL TO HHS_HR_RW_ROLE;

----------------------------------
-- grant for HHS_HR_DEV_ROLE
----------------------------------
GRANT EXECUTE ON HHS_HR.SP_UPDATE_CMS_REQUEST_TABLE TO HHS_HR_DEV_ROLE;
GRANT EXECUTE ON HHS_HR.SP_UPDATE_INTG_DATA TO HHS_HR_DEV_ROLE;
GRANT EXECUTE ON HHS_HR.SP_TRUNC_CMS_REQUEST_TABLE TO HHS_HR_DEV_ROLE;
GRANT EXECUTE ON HHS_HR.SP_CMS_REQUEST_STG2FNL TO HHS_HR_DEV_ROLE;