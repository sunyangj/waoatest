prompt Importing table sys_profile_option...
set feedback off
set define off
insert into sys_profile_option (ID, SYS_APPLICATION_ID, PROFILE_OPTION_CODE, PROFILE_OPTION_NAME, DESCRIPTION, YN_MULTI_VALUE, USER_CHANGEABLE_FLAG, USER_VISIBLE_FLAG, SITE_ENABLED_FLAG, APP_ENABLED_FLAG, ROLE_ENABLED_FLAG, USER_ENABLED_FLAG, DEPT_ENABLED_FLAG, SQL_VALIDATION, VALID_FLAG, SYSTEM_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, USAGE_MODIFIER)
values ('8a58bcf36912c62d016912f1a7c605b0', '1', 'PLATFORM_V6_GETSENDTYPE', '流程任务是否获取sendType', null, 'Y', null, null, 'Y', 'N', 'N', 'N', 'N', null, null, null, to_date('22-02-2019 10:03:40', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('22-02-2019 10:03:40', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, '0');

prompt Done.
