alter table BPM_HIST_PROCINST add REASONABLE_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_PROCINST add WARNING_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_PROCINST add IS_PARTICIPATE_KPI_ VARCHAR2(2);

alter table BPM_HIST_TASK add REASONABLE_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT1 add REASONABLE_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT2 add REASONABLE_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT3 add REASONABLE_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT4 add REASONABLE_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT5 add REASONABLE_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT6 add REASONABLE_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT7 add REASONABLE_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT8 add REASONABLE_FINISH_TIME_ TIMESTAMP(6);

alter table BPM_HIST_TASK add WARNING_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT1 add WARNING_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT2 add WARNING_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT3 add WARNING_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT4 add WARNING_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT5 add WARNING_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT6 add WARNING_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT7 add WARNING_FINISH_TIME_ TIMESTAMP(6);
alter table BPM_HIST_TASK_EXT8 add WARNING_FINISH_TIME_ TIMESTAMP(6);

CREATE OR REPLACE VIEW BPM_HIST_TASK_V AS
SELECT task."IS_READTODO_", task."MOBILE_APPROVAL_", task."FORM_URL_MOBILE_", task."FORM_CODE_", task."DBID_",task."DBVERSION_",task."EXECUTION_",task."OUTCOME_",task."ASSIGNEE_",task."PRIORITY_",task."STATE_",task."CREATE_",task."END_",task."DURATION_",task."NEXTIDX_",task."SUPERTASK_",task."TASK_ORDER_",task."OPEN_",task."TAKE_STATE_",task."PROCINST_",task."DESCR_",task."SUSPHISTSTATE_",task."TASK_TYPE_",task."TASK_B_ID_",task."TASK_TITLE_",task."TASK_SENDUSER_",task."TASK_SENDDEPT_",task."FORM_",task."PROCESS_DEF_NAME_",task."TASK_FINISHED_",task."TASK_STATE_",task."TASK_NAME_",task."HISACTINST_",task."WORKHAND_TYPE_",task."WORKHAND_USER_",task."APP_ID_",task."REASONABLE_FINISH_TIME_",task."WARNING_FINISH_TIME_",
       task."ASSIGNEE_DEPT_",(SELECT N.STATUS_ FROM BPM_CROSS_NET_INSTANCE N WHERE N.ID_ = task.procinst_) AS LOCKED_STATUS_, (SELECT S.POSITION_ID FROM SYS_USER_DEPT_POSITION S WHERE S.USER_ID = task.ASSIGNEE_ AND S.DEPT_ID = task.ASSIGNEE_DEPT_) AS ASSIGNEE_POSITION_
  FROM BPM_HIST_TASK task WHERE NOT EXISTS (SELECT 1
          FROM bpm_hist_procinst procinst
         where procinst.state_ = 'suspended'
           and task.procinst_ = procinst.dbid_) union all SELECT task1."IS_READTODO_", task1."MOBILE_APPROVAL_", task1."FORM_URL_MOBILE_", task1."FORM_CODE_", task1."DBID_",task1."DBVERSION_",task1."EXECUTION_",task1."OUTCOME_",task1."ASSIGNEE_",task1."PRIORITY_",task1."STATE_",task1."CREATE_",task1."END_",task1."DURATION_",task1."NEXTIDX_",task1."SUPERTASK_",task1."TASK_ORDER_",task1."OPEN_",task1."TAKE_STATE_",task1."PROCINST_",task1."DESCR_",task1."SUSPHISTSTATE_",task1."TASK_TYPE_",task1."TASK_B_ID_",task1."TASK_TITLE_",task1."TASK_SENDUSER_",task1."TASK_SENDDEPT_",task1."FORM_",task1."PROCESS_DEF_NAME_",task1."TASK_FINISHED_",task1."TASK_STATE_",task1."TASK_NAME_",task1."HISACTINST_",task1."WORKHAND_TYPE_",task1."WORKHAND_USER_",task1."APP_ID_",task1."REASONABLE_FINISH_TIME_",task1."WARNING_FINISH_TIME_",
       task1."ASSIGNEE_DEPT_",(SELECT N.STATUS_ FROM BPM_CROSS_NET_INSTANCE N WHERE N.ID_ = task1.procinst_) AS LOCKED_STATUS_, (SELECT S.POSITION_ID FROM SYS_USER_DEPT_POSITION S WHERE S.USER_ID = task1.ASSIGNEE_ AND S.DEPT_ID = task1.ASSIGNEE_DEPT_) AS ASSIGNEE_POSITION_
  FROM BPM_HIST_TASK_Ext1 task1 WHERE NOT EXISTS (SELECT 1
          FROM bpm_hist_procinst procinst
         where procinst.state_ = 'suspended'
           and task1.procinst_ = procinst.dbid_)  union all SELECT task3."IS_READTODO_", task3."MOBILE_APPROVAL_", task3."FORM_URL_MOBILE_", task3."FORM_CODE_", task3."DBID_",task3."DBVERSION_",task3."EXECUTION_",task3."OUTCOME_",task3."ASSIGNEE_",task3."PRIORITY_",task3."STATE_",task3."CREATE_",task3."END_",task3."DURATION_",task3."NEXTIDX_",task3."SUPERTASK_",task3."TASK_ORDER_",task3."OPEN_",task3."TAKE_STATE_",task3."PROCINST_",task3."DESCR_",task3."SUSPHISTSTATE_",task3."TASK_TYPE_",task3."TASK_B_ID_",task3."TASK_TITLE_",task3."TASK_SENDUSER_",task3."TASK_SENDDEPT_",task3."FORM_",task3."PROCESS_DEF_NAME_",task3."TASK_FINISHED_",task3."TASK_STATE_",task3."TASK_NAME_",task3."HISACTINST_",task3."WORKHAND_TYPE_",task3."WORKHAND_USER_",task3."APP_ID_",task3."REASONABLE_FINISH_TIME_",task3."WARNING_FINISH_TIME_",
       task3."ASSIGNEE_DEPT_",(SELECT N.STATUS_ FROM BPM_CROSS_NET_INSTANCE N WHERE N.ID_ = task3.procinst_) AS LOCKED_STATUS_, (SELECT S.POSITION_ID FROM SYS_USER_DEPT_POSITION S WHERE S.USER_ID = task3.ASSIGNEE_ AND S.DEPT_ID = task3.ASSIGNEE_DEPT_) AS ASSIGNEE_POSITION_
  FROM BPM_HIST_TASK_Ext3 task3
 WHERE NOT EXISTS (SELECT 1
          FROM bpm_hist_procinst procinst
         where procinst.state_ = 'suspended'
           and task3.procinst_ = procinst.dbid_)  union all SELECT task4."IS_READTODO_", task4."MOBILE_APPROVAL_", task4."FORM_URL_MOBILE_", task4."FORM_CODE_", task4."DBID_",task4."DBVERSION_",task4."EXECUTION_",task4."OUTCOME_",task4."ASSIGNEE_",task4."PRIORITY_",task4."STATE_",task4."CREATE_",task4."END_",task4."DURATION_",task4."NEXTIDX_",task4."SUPERTASK_",task4."TASK_ORDER_",task4."OPEN_",task4."TAKE_STATE_",task4."PROCINST_",task4."DESCR_",task4."SUSPHISTSTATE_",task4."TASK_TYPE_",task4."TASK_B_ID_",task4."TASK_TITLE_",task4."TASK_SENDUSER_",task4."TASK_SENDDEPT_",task4."FORM_",task4."PROCESS_DEF_NAME_",task4."TASK_FINISHED_",task4."TASK_STATE_",task4."TASK_NAME_",task4."HISACTINST_",task4."WORKHAND_TYPE_",task4."WORKHAND_USER_",task4."APP_ID_",task4."REASONABLE_FINISH_TIME_",task4."WARNING_FINISH_TIME_",
       task4."ASSIGNEE_DEPT_",(SELECT N.STATUS_ FROM BPM_CROSS_NET_INSTANCE N WHERE N.ID_ = task4.procinst_) AS LOCKED_STATUS_, (SELECT S.POSITION_ID FROM SYS_USER_DEPT_POSITION S WHERE S.USER_ID = task4.ASSIGNEE_ AND S.DEPT_ID = task4.ASSIGNEE_DEPT_) AS ASSIGNEE_POSITION_
  FROM BPM_HIST_TASK_Ext4 task4
 WHERE NOT EXISTS (SELECT 1
          FROM bpm_hist_procinst procinst
         where procinst.state_ = 'suspended'
           and task4.procinst_ = procinst.dbid_)  union all SELECT task5."IS_READTODO_", task5."MOBILE_APPROVAL_", task5."FORM_URL_MOBILE_", task5."FORM_CODE_", task5."DBID_",task5."DBVERSION_",task5."EXECUTION_",task5."OUTCOME_",task5."ASSIGNEE_",task5."PRIORITY_",task5."STATE_",task5."CREATE_",task5."END_",task5."DURATION_",task5."NEXTIDX_",task5."SUPERTASK_",task5."TASK_ORDER_",task5."OPEN_",task5."TAKE_STATE_",task5."PROCINST_",task5."DESCR_",task5."SUSPHISTSTATE_",task5."TASK_TYPE_",task5."TASK_B_ID_",task5."TASK_TITLE_",task5."TASK_SENDUSER_",task5."TASK_SENDDEPT_",task5."FORM_",task5."PROCESS_DEF_NAME_",task5."TASK_FINISHED_",task5."TASK_STATE_",task5."TASK_NAME_",task5."HISACTINST_",task5."WORKHAND_TYPE_",task5."WORKHAND_USER_",task5."APP_ID_",task5."REASONABLE_FINISH_TIME_",task5."WARNING_FINISH_TIME_",
       task5."ASSIGNEE_DEPT_",(SELECT N.STATUS_ FROM BPM_CROSS_NET_INSTANCE N WHERE N.ID_ = task5.procinst_) AS LOCKED_STATUS_, (SELECT S.POSITION_ID FROM SYS_USER_DEPT_POSITION S WHERE S.USER_ID = task5.ASSIGNEE_ AND S.DEPT_ID = task5.ASSIGNEE_DEPT_) AS ASSIGNEE_POSITION_
  FROM BPM_HIST_TASK_Ext5 task5
 WHERE NOT EXISTS (SELECT 1
          FROM bpm_hist_procinst procinst
         where procinst.state_ = 'suspended'
           and task5.procinst_ = procinst.dbid_)  union all SELECT task6."IS_READTODO_", task6."MOBILE_APPROVAL_", task6."FORM_URL_MOBILE_", task6."FORM_CODE_", task6."DBID_",task6."DBVERSION_",task6."EXECUTION_",task6."OUTCOME_",task6."ASSIGNEE_",task6."PRIORITY_",task6."STATE_",task6."CREATE_",task6."END_",task6."DURATION_",task6."NEXTIDX_",task6."SUPERTASK_",task6."TASK_ORDER_",task6."OPEN_",task6."TAKE_STATE_",task6."PROCINST_",task6."DESCR_",task6."SUSPHISTSTATE_",task6."TASK_TYPE_",task6."TASK_B_ID_",task6."TASK_TITLE_",task6."TASK_SENDUSER_",task6."TASK_SENDDEPT_",task6."FORM_",task6."PROCESS_DEF_NAME_",task6."TASK_FINISHED_",task6."TASK_STATE_",task6."TASK_NAME_",task6."HISACTINST_",task6."WORKHAND_TYPE_",task6."WORKHAND_USER_",task6."APP_ID_",task6."REASONABLE_FINISH_TIME_",task6."WARNING_FINISH_TIME_",
       task6."ASSIGNEE_DEPT_",(SELECT N.STATUS_ FROM BPM_CROSS_NET_INSTANCE N WHERE N.ID_ = task6.procinst_) AS LOCKED_STATUS_, (SELECT S.POSITION_ID FROM SYS_USER_DEPT_POSITION S WHERE S.USER_ID = task6.ASSIGNEE_ AND S.DEPT_ID = task6.ASSIGNEE_DEPT_) AS ASSIGNEE_POSITION_
  FROM BPM_HIST_TASK_Ext6 task6
 WHERE NOT EXISTS (SELECT 1
          FROM bpm_hist_procinst procinst
         where procinst.state_ = 'suspended'
           and task6.procinst_ = procinst.dbid_)  union all SELECT task7."IS_READTODO_", task7."MOBILE_APPROVAL_", task7."FORM_URL_MOBILE_", task7."FORM_CODE_", task7."DBID_",task7."DBVERSION_",task7."EXECUTION_",task7."OUTCOME_",task7."ASSIGNEE_",task7."PRIORITY_",task7."STATE_",task7."CREATE_",task7."END_",task7."DURATION_",task7."NEXTIDX_",task7."SUPERTASK_",task7."TASK_ORDER_",task7."OPEN_",task7."TAKE_STATE_",task7."PROCINST_",task7."DESCR_",task7."SUSPHISTSTATE_",task7."TASK_TYPE_",task7."TASK_B_ID_",task7."TASK_TITLE_",task7."TASK_SENDUSER_",task7."TASK_SENDDEPT_",task7."FORM_",task7."PROCESS_DEF_NAME_",task7."TASK_FINISHED_",task7."TASK_STATE_",task7."TASK_NAME_",task7."HISACTINST_",task7."WORKHAND_TYPE_",task7."WORKHAND_USER_",task7."APP_ID_",task7."REASONABLE_FINISH_TIME_",task7."WARNING_FINISH_TIME_",
       task7."ASSIGNEE_DEPT_",(SELECT N.STATUS_ FROM BPM_CROSS_NET_INSTANCE N WHERE N.ID_ = task7.procinst_) AS LOCKED_STATUS_, (SELECT S.POSITION_ID FROM SYS_USER_DEPT_POSITION S WHERE S.USER_ID = task7.ASSIGNEE_ AND S.DEPT_ID = task7.ASSIGNEE_DEPT_) AS ASSIGNEE_POSITION_
  FROM BPM_HIST_TASK_Ext7 task7
 WHERE NOT EXISTS (SELECT 1
          FROM bpm_hist_procinst procinst
         where procinst.state_ = 'suspended'
           and task7.procinst_ = procinst.dbid_)  union all SELECT task8."IS_READTODO_", task8."MOBILE_APPROVAL_", task8."FORM_URL_MOBILE_", task8."FORM_CODE_", task8."DBID_",task8."DBVERSION_",task8."EXECUTION_",task8."OUTCOME_",task8."ASSIGNEE_",task8."PRIORITY_",task8."STATE_",task8."CREATE_",task8."END_",task8."DURATION_",task8."NEXTIDX_",task8."SUPERTASK_",task8."TASK_ORDER_",task8."OPEN_",task8."TAKE_STATE_",task8."PROCINST_",task8."DESCR_",task8."SUSPHISTSTATE_",task8."TASK_TYPE_",task8."TASK_B_ID_",task8."TASK_TITLE_",task8."TASK_SENDUSER_",task8."TASK_SENDDEPT_",task8."FORM_",task8."PROCESS_DEF_NAME_",task8."TASK_FINISHED_",task8."TASK_STATE_",task8."TASK_NAME_",task8."HISACTINST_",task8."WORKHAND_TYPE_",task8."WORKHAND_USER_",task8."APP_ID_",task8."REASONABLE_FINISH_TIME_",task8."WARNING_FINISH_TIME_",
       task8."ASSIGNEE_DEPT_",(SELECT N.STATUS_ FROM BPM_CROSS_NET_INSTANCE N WHERE N.ID_ = task8.procinst_) AS LOCKED_STATUS_, (SELECT S.POSITION_ID FROM SYS_USER_DEPT_POSITION S WHERE S.USER_ID = task8.ASSIGNEE_ AND S.DEPT_ID = task8.ASSIGNEE_DEPT_) AS ASSIGNEE_POSITION_
  FROM BPM_HIST_TASK_Ext8 task8
 WHERE NOT EXISTS (SELECT 1
          FROM bpm_hist_procinst procinst
         where procinst.state_ = 'suspended'
           and task8.procinst_ = procinst.dbid_)  union all SELECT task2."IS_READTODO_", task2."MOBILE_APPROVAL_", task2."FORM_URL_MOBILE_", task2."FORM_CODE_", task2."DBID_",task2."DBVERSION_",task2."EXECUTION_",task2."OUTCOME_",task2."ASSIGNEE_",task2."PRIORITY_",task2."STATE_",task2."CREATE_",task2."END_",task2."DURATION_",task2."NEXTIDX_",task2."SUPERTASK_",task2."TASK_ORDER_",task2."OPEN_",task2."TAKE_STATE_",task2."PROCINST_",task2."DESCR_",task2."SUSPHISTSTATE_",task2."TASK_TYPE_",task2."TASK_B_ID_",task2."TASK_TITLE_",task2."TASK_SENDUSER_",task2."TASK_SENDDEPT_",task2."FORM_",task2."PROCESS_DEF_NAME_",task2."TASK_FINISHED_",task2."TASK_STATE_",task2."TASK_NAME_",task2."HISACTINST_",task2."WORKHAND_TYPE_",task2."WORKHAND_USER_",task2."APP_ID_",task2."REASONABLE_FINISH_TIME_",task2."WARNING_FINISH_TIME_",
       task2."ASSIGNEE_DEPT_",(SELECT N.STATUS_ FROM BPM_CROSS_NET_INSTANCE N WHERE N.ID_ = task2.procinst_) AS LOCKED_STATUS_, (SELECT S.POSITION_ID FROM SYS_USER_DEPT_POSITION S WHERE S.USER_ID = task2.ASSIGNEE_ AND S.DEPT_ID = task2.ASSIGNEE_DEPT_) AS ASSIGNEE_POSITION_
  FROM BPM_HIST_TASK_EXT2 task2
 WHERE NOT EXISTS (SELECT 1
          FROM bpm_hist_procinst procinst
         where procinst.state_ = 'suspended'
           and task2.procinst_ = procinst.dbid_);

alter table SYS_MENU_DIRECTORY disable all triggers;
insert into SYS_MENU_DIRECTORY (ID, APP_ID, MENU_CODE, MENU_URL, PARENT_ID, MENU_ORDER, MENU_TYPE, MENU_STATUS, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, MENU_VIEW, IS_MENU, ORG_IDENTITY, IS_SHOW, MENU_NAME, MENU_ICON, MENU_DES, OPEN_TYPE)
values ('8a58cd7862a467180162a47f228a02cd', '1', 'cc_console_data', 'platform/cc/data/unified/admin', '8a58cd575f940986015f94343b15011c', 6, '0', '1', to_date('20-04-2018 14:33:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('08-04-2018 17:03:38', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 3, null, '0', 'ORG_ROOT', '0', '$后台数据权限', null, null, '_mainframe');
insert into SYS_MENU_DIRECTORY (ID, APP_ID, MENU_CODE, MENU_URL, PARENT_ID, MENU_ORDER, MENU_TYPE, MENU_STATUS, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, MENU_VIEW, IS_MENU, ORG_IDENTITY, IS_SHOW, MENU_NAME, MENU_ICON, MENU_DES, OPEN_TYPE)
values ('8a58cd7c62a476100162a4784c8b02c5', '1', 'cc_portal_data', 'platform/cc/data/unified', '8a58cd575f940986015f94343b15011c', 5, '0', '1', to_date('20-04-2018 14:32:58', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('08-04-2018 16:56:10', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 6, null, '0', 'ORG_ROOT', '0', '$前台数据权限', null, null, '_mainframe');
insert into SYS_MENU_DIRECTORY (ID, APP_ID, MENU_CODE, MENU_URL, PARENT_ID, MENU_ORDER, MENU_TYPE, MENU_STATUS, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, MENU_VIEW, IS_MENU, ORG_IDENTITY, IS_SHOW, MENU_NAME, MENU_ICON, MENU_DES, OPEN_TYPE)
values ('8a58cd7c621d118201621d19d7ad0271', '1', 'console_data_auth', 'platform/console/datamanagement/data/admin', '8a58cd605c19424b015c19512ce0007c', 8, '0', '1', to_date('20-04-2018 14:09:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('13-03-2018 10:04:15', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 2, null, '0', 'ORG_ROOT', '0', '后台数据授权管理', null, null, '_mainframe');
insert into SYS_MENU_DIRECTORY (ID, APP_ID, MENU_CODE, MENU_URL, PARENT_ID, MENU_ORDER, MENU_TYPE, MENU_STATUS, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, MENU_VIEW, IS_MENU, ORG_IDENTITY, IS_SHOW, MENU_NAME, MENU_ICON, MENU_DES, OPEN_TYPE)
values ('8a58cc8e61cfb3520161cfe3c63106cf', '1', 'dept_manager_config', 'platform/console/deptleader/unified', '8a58cd605c19424b015c19512ce0007c', 10, '0', '1', to_date('28-02-2018 16:10:04', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('26-02-2018 10:14:26', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 8, null, '0', 'ORG_ROOT', '0', '跨部门领导配置', null, null, '_mainframe');
insert into SYS_MENU_DIRECTORY (ID, APP_ID, MENU_CODE, MENU_URL, PARENT_ID, MENU_ORDER, MENU_TYPE, MENU_STATUS, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, MENU_VIEW, IS_MENU, ORG_IDENTITY, IS_SHOW, MENU_NAME, MENU_ICON, MENU_DES, OPEN_TYPE)
values ('8a58cd7c621d118201621d194ef2026e', '1', 'portal_data_auth', 'platform/console/datamanagement/data', '8a58cd605c19424b015c19512ce0007c', 7, '0', '1', to_date('20-04-2018 14:09:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('13-03-2018 10:03:40', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 5, null, '0', 'ORG_ROOT', '0', '前台数据授权管理', null, null, '_mainframe');
commit;
alter table SYS_MENU_DIRECTORY enable all triggers;
alter table SYS_MENU_TRANSLATOR disable all triggers;
insert into SYS_MENU_TRANSLATOR (ID, LANGUAGE_CODE, MENU_NAME, MENU_DES)
values ('8a58cd7c62a476100162a4784c8b02c5', 'zh_CN', '$前台数据权限', null);
insert into SYS_MENU_TRANSLATOR (ID, LANGUAGE_CODE, MENU_NAME, MENU_DES)
values ('8a58cd7c621d118201621d194ef2026e', 'zh_CN', '前台数据授权管理', null);
insert into SYS_MENU_TRANSLATOR (ID, LANGUAGE_CODE, MENU_NAME, MENU_DES)
values ('8a58cc8e61cfb3520161cfe3c63106cf', 'zh_CN', '跨部门领导配置', null);
insert into SYS_MENU_TRANSLATOR (ID, LANGUAGE_CODE, MENU_NAME, MENU_DES)
values ('8a58cd7862a467180162a47f228a02cd', 'zh_CN', '$后台数据权限', null);
insert into SYS_MENU_TRANSLATOR (ID, LANGUAGE_CODE, MENU_NAME, MENU_DES)
values ('8a58cd7c621d118201621d19d7ad0271', 'zh_CN', '后台数据授权管理', null);
commit;
alter table SYS_MENU_TRANSLATOR enable all triggers;
alter table SYS_RESOURCE disable all triggers;
insert into SYS_RESOURCE (ID, KEY, VALUE, TYPE, RESOURCE_DESC, PARENT_ID, SYS_APPLICATION_ID, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, ATTRIBUTE_01, ATTRIBUTE_02, ATTRIBUTE_03, ATTRIBUTE_04, ATTRIBUTE_05, ATTRIBUTE_06, ATTRIBUTE_07, ATTRIBUTE_08, ATTRIBUTE_09, ATTRIBUTE_10, ORG_IDENTITY, RES_STATUS)
values ('8a58cd7862a467180162a47f228a02cd', '$后台数据权限', 'platform/cc/data/unified/admin', 'MENU', null, '8a58cd575f940986015f94343b15011c', '1', to_date('20-04-2018 14:33:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('08-04-2018 17:03:38', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 3, null, null, null, null, null, null, null, null, null, null, 'ORG_ROOT', '0');
insert into SYS_RESOURCE (ID, KEY, VALUE, TYPE, RESOURCE_DESC, PARENT_ID, SYS_APPLICATION_ID, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, ATTRIBUTE_01, ATTRIBUTE_02, ATTRIBUTE_03, ATTRIBUTE_04, ATTRIBUTE_05, ATTRIBUTE_06, ATTRIBUTE_07, ATTRIBUTE_08, ATTRIBUTE_09, ATTRIBUTE_10, ORG_IDENTITY, RES_STATUS)
values ('8a58cd7c62a476100162a4784c8b02c5', '$前台数据权限', 'platform/cc/data/unified', 'MENU', null, '8a58cd575f940986015f94343b15011c', '1', to_date('20-04-2018 14:32:58', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('08-04-2018 16:56:10', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 6, null, null, null, null, null, null, null, null, null, null, 'ORG_ROOT', '0');
insert into SYS_RESOURCE (ID, KEY, VALUE, TYPE, RESOURCE_DESC, PARENT_ID, SYS_APPLICATION_ID, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, ATTRIBUTE_01, ATTRIBUTE_02, ATTRIBUTE_03, ATTRIBUTE_04, ATTRIBUTE_05, ATTRIBUTE_06, ATTRIBUTE_07, ATTRIBUTE_08, ATTRIBUTE_09, ATTRIBUTE_10, ORG_IDENTITY, RES_STATUS)
values ('8a58cd7c621d118201621d19d7ad0271', '后台数据授权管理', 'platform/console/datamanagement/data/admin', 'MENU', null, '8a58cd605c19424b015c19512ce0007c', '1', to_date('20-04-2018 14:09:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('13-03-2018 10:04:15', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 2, null, null, null, null, null, null, null, null, null, null, 'ORG_ROOT', '0');
insert into SYS_RESOURCE (ID, KEY, VALUE, TYPE, RESOURCE_DESC, PARENT_ID, SYS_APPLICATION_ID, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, ATTRIBUTE_01, ATTRIBUTE_02, ATTRIBUTE_03, ATTRIBUTE_04, ATTRIBUTE_05, ATTRIBUTE_06, ATTRIBUTE_07, ATTRIBUTE_08, ATTRIBUTE_09, ATTRIBUTE_10, ORG_IDENTITY, RES_STATUS)
values ('8a58cc8e61cfb3520161cfe3c63106cf', '跨部门领导配置', 'platform/console/deptleader/unified', 'MENU', null, '8a58cd605c19424b015c19512ce0007c', '1', to_date('28-02-2018 16:10:04', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('26-02-2018 10:14:26', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 8, null, null, null, null, null, null, null, null, null, null, 'ORG_ROOT', '0');
insert into SYS_RESOURCE (ID, KEY, VALUE, TYPE, RESOURCE_DESC, PARENT_ID, SYS_APPLICATION_ID, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, ATTRIBUTE_01, ATTRIBUTE_02, ATTRIBUTE_03, ATTRIBUTE_04, ATTRIBUTE_05, ATTRIBUTE_06, ATTRIBUTE_07, ATTRIBUTE_08, ATTRIBUTE_09, ATTRIBUTE_10, ORG_IDENTITY, RES_STATUS)
values ('8a58cd7c621d118201621d194ef2026e', '前台数据授权管理', 'platform/console/datamanagement/data', 'MENU', null, '8a58cd605c19424b015c19512ce0007c', '1', to_date('20-04-2018 14:09:16', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('13-03-2018 10:03:40', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 5, null, null, null, null, null, null, null, null, null, null, 'ORG_ROOT', '0');
commit;
alter table SYS_RESOURCE enable all triggers;
alter table SYS_ACCESSCONTROL disable all triggers;
insert into SYS_ACCESSCONTROL (ID, TARGET_TYPE, TARGET_ID, RESOURE_ID, ACCESSIBILITY, OPERABILITY, SYS_APPLICATION_ID, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, ATTRIBUTE_01, ATTRIBUTE_02, ATTRIBUTE_03, ATTRIBUTE_04, ATTRIBUTE_05, ATTRIBUTE_06, ATTRIBUTE_07, ATTRIBUTE_08, ATTRIBUTE_09, ATTRIBUTE_10, ORG_IDENTITY)
values ('297ee45962e1a98f0162e1acb51f02c9', 'R', '8a58ab4d4c207cca014c207ffff7034c', '8a58cc8e61cfb3520161cfe3c63106cf', 1, 1, '1', to_date('20-04-2018 14:10:14', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('20-04-2018 14:10:14', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, null, null, null, null, null, null, null, null, null, null, 'ORG_ROOT');
insert into SYS_ACCESSCONTROL (ID, TARGET_TYPE, TARGET_ID, RESOURE_ID, ACCESSIBILITY, OPERABILITY, SYS_APPLICATION_ID, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, ATTRIBUTE_01, ATTRIBUTE_02, ATTRIBUTE_03, ATTRIBUTE_04, ATTRIBUTE_05, ATTRIBUTE_06, ATTRIBUTE_07, ATTRIBUTE_08, ATTRIBUTE_09, ATTRIBUTE_10, ORG_IDENTITY)
values ('297ee45962e1a98f0162e1acf6e702cd', 'R', '40288a46384feb2101384fef8ba80005', '8a58cd7c621d118201621d19d7ad0271', 1, 1, '1', to_date('20-04-2018 14:10:31', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('20-04-2018 14:10:31', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, null, null, null, null, null, null, null, null, null, null, 'ORG_ROOT');
insert into SYS_ACCESSCONTROL (ID, TARGET_TYPE, TARGET_ID, RESOURE_ID, ACCESSIBILITY, OPERABILITY, SYS_APPLICATION_ID, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, ATTRIBUTE_01, ATTRIBUTE_02, ATTRIBUTE_03, ATTRIBUTE_04, ATTRIBUTE_05, ATTRIBUTE_06, ATTRIBUTE_07, ATTRIBUTE_08, ATTRIBUTE_09, ATTRIBUTE_10, ORG_IDENTITY)
values ('297ee45962e1a98f0162e1ad518702cf', 'R', '40288a46384feb2101384fef8ba80005', '8a58cd7c62a476100162a4784c8b02c5', 1, 1, '1', to_date('20-04-2018 14:10:54', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('20-04-2018 14:10:54', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, null, null, null, null, null, null, null, null, null, null, 'ORG_ROOT');
insert into SYS_ACCESSCONTROL (ID, TARGET_TYPE, TARGET_ID, RESOURE_ID, ACCESSIBILITY, OPERABILITY, SYS_APPLICATION_ID, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, ATTRIBUTE_01, ATTRIBUTE_02, ATTRIBUTE_03, ATTRIBUTE_04, ATTRIBUTE_05, ATTRIBUTE_06, ATTRIBUTE_07, ATTRIBUTE_08, ATTRIBUTE_09, ATTRIBUTE_10, ORG_IDENTITY)
values ('297ee45962e1a98f0162e1acd46202cb', 'R', '40288a46384feb2101384fef8ba80005', '8a58cd7c621d118201621d194ef2026e', 1, 1, '1', to_date('20-04-2018 14:10:22', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('20-04-2018 14:10:22', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, null, null, null, null, null, null, null, null, null, null, 'ORG_ROOT');
insert into SYS_ACCESSCONTROL (ID, TARGET_TYPE, TARGET_ID, RESOURE_ID, ACCESSIBILITY, OPERABILITY, SYS_APPLICATION_ID, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, ATTRIBUTE_01, ATTRIBUTE_02, ATTRIBUTE_03, ATTRIBUTE_04, ATTRIBUTE_05, ATTRIBUTE_06, ATTRIBUTE_07, ATTRIBUTE_08, ATTRIBUTE_09, ATTRIBUTE_10, ORG_IDENTITY)
values ('297ee45962e1a98f0162e1ad638902d1', 'R', '40288a46384feb2101384fef8ba80005', '8a58cd7862a467180162a47f228a02cd', 1, 1, '1', to_date('20-04-2018 14:10:59', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('20-04-2018 14:10:59', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, null, null, null, null, null, null, null, null, null, null, 'ORG_ROOT');
commit;
alter table SYS_ACCESSCONTROL enable all triggers;

create table BPM_EXT_PROCESS_LEVEL
(
  dbid_          VARCHAR2(50) not null,
  entryid_       VARCHAR2(50) not null,
  activityname_  VARCHAR2(50),
  parententryid_ VARCHAR2(50) not null,
  attribute_01   VARCHAR2(50),
  attribute_02   VARCHAR2(50)
)
;
comment on column BPM_EXT_PROCESS_LEVEL.dbid_
  is '主键';
comment on column BPM_EXT_PROCESS_LEVEL.entryid_
  is '流程实例ID';
comment on column BPM_EXT_PROCESS_LEVEL.activityname_
  is '节点标识';
comment on column BPM_EXT_PROCESS_LEVEL.parententryid_
  is '父流程实例ID';
comment on column BPM_EXT_PROCESS_LEVEL.attribute_01
  is '预留字段';
comment on column BPM_EXT_PROCESS_LEVEL.attribute_02
  is '预留字段';
alter table BPM_EXT_PROCESS_LEVEL
  add constraint BPM_EXT_PROCESS_LEVEL_P primary key (DBID_);

create table BPM_EXT_PROCESS_SHIP
(
  dbid_        VARCHAR2(50) not null,
  entryid1_    VARCHAR2(50) not null,
  entryid2_    VARCHAR2(50) not null,
  attribute_01 VARCHAR2(50),
  attribute_02 VARCHAR2(50)
)
;
comment on column BPM_EXT_PROCESS_SHIP.dbid_
  is '主键';
comment on column BPM_EXT_PROCESS_SHIP.entryid1_
  is '流程实例ID1';
comment on column BPM_EXT_PROCESS_SHIP.entryid2_
  is '流程实例ID2';
comment on column BPM_EXT_PROCESS_SHIP.attribute_01
  is '预留字段';
comment on column BPM_EXT_PROCESS_SHIP.attribute_02
  is '预留字段';
alter table BPM_EXT_PROCESS_SHIP
  add constraint BPM_EXT_PROCESS_SHIP_P primary key (DBID_);

alter table BPM_EXT_FORM_SECURITY add REQUIRED NUMBER(10);
comment on column BPM_EXT_FORM_SECURITY.REQUIRED
  is '必填，页面字段属性是否必填 1:是 0:否';

--用户角色表添加部门ID字段
alter table SYS_USER_ROLE add SYS_DEPT_ID VARCHAR2(50);
comment on column SYS_USER_ROLE.SYS_DEPT_ID is '部门ID';
--用户角色表删除唯一约束
alter table SYS_USER_ROLE drop constraint PK_SYS_USER_ROLE_UNI; 

INSERT INTO SYS_MENU_DIRECTORY(ID, APP_ID, MENU_CODE, MENU_URL, PARENT_ID, MENU_ORDER, MENU_TYPE, MENU_STATUS, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, MENU_VIEW, IS_MENU, ORG_IDENTITY, IS_SHOW, MENU_NAME, MENU_ICON, MENU_DES, OPEN_TYPE) VALUES ('297eaff16467fa01016469a502610ed9', '1', 'syncOrgMenu', 'platform/syncController/syncOrgMenu', '4028821d5cae396b015cae603042016e', '8', '0', '1', TO_DATE('2018-07-05 16:52:59', 'YYYY-MM-DD HH24:MI:SS'), '1', TO_DATE('2018-07-05 16:52:59', 'YYYY-MM-DD HH24:MI:SS'), '1', '0:0:0:0:0:0:0:1', 0, NULL, '0', 'ORG_ROOT', '0', '菜单同步', NULL, NULL, '_mainframe');

INSERT INTO SYS_MENU_TRANSLATOR(ID, LANGUAGE_CODE, MENU_NAME, MENU_DES) VALUES ('297eaff16467fa01016469a502610ed9', 'zh_CN', '菜单同步', NULL);

INSERT INTO SYS_RESOURCE(ID, KEY, VALUE, TYPE, RESOURCE_DESC, PARENT_ID, SYS_APPLICATION_ID, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, ATTRIBUTE_01, ATTRIBUTE_02, ATTRIBUTE_03, ATTRIBUTE_04, ATTRIBUTE_05, ATTRIBUTE_06, ATTRIBUTE_07, ATTRIBUTE_08, ATTRIBUTE_09, ATTRIBUTE_10, ORG_IDENTITY, RES_STATUS) VALUES ('297eaff16467fa01016469a502610ed9', '菜单同步', 'platform/syncController/syncOrgMenu', 'MENU', NULL, '4028821d5cae396b015cae603042016e', '1', TO_DATE('2018-07-05 16:52:59', 'YYYY-MM-DD HH24:MI:SS'), '1', TO_DATE('2018-07-05 16:52:59', 'YYYY-MM-DD HH24:MI:SS'), '1', '0:0:0:0:0:0:0:1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ORG_ROOT', '0');

INSERT INTO SYS_MENU_DIRECTORY(ID, APP_ID, MENU_CODE, MENU_URL, PARENT_ID, MENU_ORDER, MENU_TYPE, MENU_STATUS, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, MENU_VIEW, IS_MENU, ORG_IDENTITY, IS_SHOW, MENU_NAME, MENU_ICON, MENU_DES, OPEN_TYPE) VALUES ('297eaff16467fa01016469a7c9cb0edc', '1', 'excelExport', 'platform6/msystem/imp/sysimptemplate/sysImpTemplateController/toSysImpTemplateManage', '4028821d5cae396b015cae603042016e', '9', '0', '1', TO_DATE('2018-07-05 16:56:01', 'YYYY-MM-DD HH24:MI:SS'), '1', TO_DATE('2018-07-05 16:56:01', 'YYYY-MM-DD HH24:MI:SS'), '1', '0:0:0:0:0:0:0:1', 0, NULL, '0', 'ORG_ROOT', '0', 'EXCEL导入配置管理', NULL, NULL, '_mainframe');

INSERT INTO SYS_MENU_TRANSLATOR(ID, LANGUAGE_CODE, MENU_NAME, MENU_DES) VALUES ('297eaff16467fa01016469a7c9cb0edc', 'zh_CN', 'EXCEL导入配置管理', NULL);

INSERT INTO SYS_RESOURCE(ID, KEY, VALUE, TYPE, RESOURCE_DESC, PARENT_ID, SYS_APPLICATION_ID, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, ATTRIBUTE_01, ATTRIBUTE_02, ATTRIBUTE_03, ATTRIBUTE_04, ATTRIBUTE_05, ATTRIBUTE_06, ATTRIBUTE_07, ATTRIBUTE_08, ATTRIBUTE_09, ATTRIBUTE_10, ORG_IDENTITY, RES_STATUS) VALUES ('297eaff16467fa01016469a7c9cb0edc', 'EXCEL导入配置管理', 'platform6/msystem/imp/sysimptemplate/sysImpTemplateController/toSysImpTemplateManage', 'MENU', NULL, '4028821d5cae396b015cae603042016e', '1', TO_DATE('2018-07-05 16:56:01', 'YYYY-MM-DD HH24:MI:SS'), '1', TO_DATE('2018-07-05 16:56:01', 'YYYY-MM-DD HH24:MI:SS'), '1', '0:0:0:0:0:0:0:1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ORG_ROOT', '0');

alter table EFORM_FORM_INFO add CURRENT_VERSION VARCHAR2(255);
comment on column EFORM_FORM_INFO.CURRENT_VERSION
  is '当前版本号';
  
alter table EFORM_TAB_COLUMNS_DETAIL add TAB_FORM_ID VARCHAR2(50);
comment on column EFORM_TAB_COLUMNS_DETAIL.TAB_FORM_ID
  is '设计表ID';

alter table eform_custom_button add TAB_FORM_ID VARCHAR2(50);
comment on column eform_custom_button.TAB_FORM_ID
  is '设计表ID';

update eform_custom_button t set t.tab_form_id = (select a.id from eform_tab_form a where a.eform_form_info_id = t.form_id and a.attribute_08 = '1')

--更新控件属性表的唯一标识字段为TAB_FORM_ID，其值为eform_tab_form的id
update EFORM_TAB_COLUMNS_DETAIL t set t.TAB_FORM_ID = (select s."ID" from EFORM_TAB_FORM s where s.EFORM_FORM_INFO_ID = t.FORM_INFO_ID);

--更新主子关系标的目标字段为eform_tab_form的id
update EFORM_TABLE_RELATION t set t.TARGET_ID = (select s."ID" from EFORM_TAB_FORM s where s.EFORM_FORM_INFO_ID = t.TARGET_ID) where t.TARGET_ID in (select a.id from EFORM_FORM_INFO a);

update eform_form_info t set t.current_version = 'V1';

update eform_tab_form t set t.attribute_08 = 'V1' where t.eform_form_info_id in (select a.id from eform_form_info a);

create or replace view bpm_forms_v as
select t.id,
       t.last_update_date,
       t.last_updated_by,
       t.creation_date,
       t.created_by,
       t.last_update_ip,
       t.version,
       '1' as sys_application_id,
       t.form_name,
       t.form_code,
       t.eform_component_id,
       t.is_bpm,
       'eform' as forms_type,
       'eform/bpmsCRUDClient/tobpm?formInfoId='||t.id||'&'||'tableName='||(select tab.table_name from db_table tab where tab.id = ( select f.table_id from eform_tab_form f where f.eform_form_info_id = t.id and f.attribute_08 = t.current_version)) as form_url,
       'N' as is_proxy
  from eform_form_info t
 where t.publish_status = '1'
union all
select b.id,
       b.last_update_date,
       b.last_updated_by,
       b.creation_date,
       b.created_by,
       b.last_update_ip,
       b.version,
       b.app_id as sys_application_id,
       b.form_name,
       b.form_code,
      case  when b.component_id is null then 'undefined_code' else b.component_id end as eform_component_id,
       'Y' as is_bpm,
       'bpm' as forms_type,
       b.form_url,b.is_proxy
  from bpm_forms b;

create table SYS_IMP_COLUMN_FILED_RES
(
  id               VARCHAR2(50) not null,
  sheetid          VARCHAR2(50),
  column_title     VARCHAR2(300),
  column_index     VARCHAR2(300),
  field            VARCHAR2(300),
  field_desc       VARCHAR2(150),
  required         VARCHAR2(300),
  remark           VARCHAR2(255),
  last_update_date DATE,
  last_updated_by  VARCHAR2(50),
  creation_date    DATE,
  created_by       VARCHAR2(50),
  last_update_ip   VARCHAR2(50),
  version          NUMBER(16),
  attribute_01     VARCHAR2(255),
  attribute_02     VARCHAR2(255),
  attribute_03     VARCHAR2(255),
  attribute_04     VARCHAR2(255),
  attribute_05     VARCHAR2(255),
  attribute_06     VARCHAR2(255),
  attribute_07     VARCHAR2(255),
  attribute_08     VARCHAR2(255),
  attribute_09     VARCHAR2(255),
  attribute_10     VARCHAR2(255),
  check_type       VARCHAR2(20),
  vcharlength      NUMBER,
  keyunique        VARCHAR2(2),
  fieldtype        VARCHAR2(50),
  datascale        NUMBER
)
;
comment on table SYS_IMP_COLUMN_FILED_RES
  is '导入列与表字段关系';
comment on column SYS_IMP_COLUMN_FILED_RES.id
  is '主键Id';
comment on column SYS_IMP_COLUMN_FILED_RES.sheetid
  is 'sheetId';
comment on column SYS_IMP_COLUMN_FILED_RES.column_title
  is '列标题';
comment on column SYS_IMP_COLUMN_FILED_RES.column_index
  is '列序号';
comment on column SYS_IMP_COLUMN_FILED_RES.field
  is '字段属性';
comment on column SYS_IMP_COLUMN_FILED_RES.field_desc
  is '字段名称';
comment on column SYS_IMP_COLUMN_FILED_RES.required
  is '是否必填';
comment on column SYS_IMP_COLUMN_FILED_RES.remark
  is '备注';
comment on column SYS_IMP_COLUMN_FILED_RES.last_update_date
  is '最后修改时间';
comment on column SYS_IMP_COLUMN_FILED_RES.last_updated_by
  is '最后修改人';
comment on column SYS_IMP_COLUMN_FILED_RES.creation_date
  is '创建时间';
comment on column SYS_IMP_COLUMN_FILED_RES.created_by
  is '创建人';
comment on column SYS_IMP_COLUMN_FILED_RES.last_update_ip
  is '最后修改IP';
comment on column SYS_IMP_COLUMN_FILED_RES.version
  is '版本';
comment on column SYS_IMP_COLUMN_FILED_RES.check_type
  is '格式校验 1：数值 2：日期 3:邮箱 4：手机 5：ip地址';
comment on column SYS_IMP_COLUMN_FILED_RES.vcharlength
  is '文本长度';
comment on column SYS_IMP_COLUMN_FILED_RES.keyunique
  is '是否唯一性列 1: 是';
comment on column SYS_IMP_COLUMN_FILED_RES.fieldtype
  is '字段类型';
comment on column SYS_IMP_COLUMN_FILED_RES.datascale
  is '小数位';
alter table SYS_IMP_COLUMN_FILED_RES
  add constraint PK_SYS_IMP_COLUMN_FILED_RES primary key (ID);

create table SYS_IMP_SHEET_TABLE_RES
(
  id               VARCHAR2(50) not null,
  template_id      VARCHAR2(50),
  sheet_name       VARCHAR2(50),
  table_name       VARCHAR2(50),
  table_desc       VARCHAR2(127),
  last_update_date DATE not null,
  last_updated_by  VARCHAR2(50) not null,
  creation_date    DATE not null,
  created_by       VARCHAR2(50) not null,
  last_update_ip   VARCHAR2(50) not null,
  version          NUMBER(16) not null,
  attribute_01     TIMESTAMP(6),
  attribute_02     VARCHAR2(255),
  attribute_03     VARCHAR2(255),
  attribute_04     VARCHAR2(255),
  attribute_05     VARCHAR2(255),
  attribute_06     VARCHAR2(255),
  attribute_07     VARCHAR2(255),
  attribute_08     VARCHAR2(255),
  attribute_09     VARCHAR2(255),
  attribute_10     VARCHAR2(255)
)
;
comment on table SYS_IMP_SHEET_TABLE_RES
  is '导入模板sheet页与table关系';
comment on column SYS_IMP_SHEET_TABLE_RES.id
  is '主键Id';
comment on column SYS_IMP_SHEET_TABLE_RES.template_id
  is '导入模板id';
comment on column SYS_IMP_SHEET_TABLE_RES.sheet_name
  is 'sheet页名称';
comment on column SYS_IMP_SHEET_TABLE_RES.table_name
  is '表名称';
comment on column SYS_IMP_SHEET_TABLE_RES.table_desc
  is '表描述';
alter table SYS_IMP_SHEET_TABLE_RES
  add constraint PK_SYS_IMP_SHEET_TABLE_RES primary key (ID);

create table SYS_IMP_TEMPLATE
(
  id               VARCHAR2(50) not null,
  code             VARCHAR2(50),
  name             VARCHAR2(127),
  swfl             VARCHAR2(2),
  bz               VARCHAR2(512),
  last_update_date DATE not null,
  last_updated_by  VARCHAR2(50) not null,
  creation_date    DATE not null,
  created_by       VARCHAR2(50) not null,
  last_update_ip   VARCHAR2(50) not null,
  version          NUMBER(16) not null,
  attribute_01     TIMESTAMP(6),
  attribute_02     VARCHAR2(255),
  attribute_03     VARCHAR2(255),
  attribute_04     VARCHAR2(255),
  attribute_05     VARCHAR2(255),
  attribute_06     VARCHAR2(255),
  attribute_07     VARCHAR2(255),
  attribute_08     VARCHAR2(255),
  attribute_09     VARCHAR2(255),
  attribute_10     VARCHAR2(255),
  user_class       VARCHAR2(255)
)
;
comment on table SYS_IMP_TEMPLATE
  is '导入模板';
comment on column SYS_IMP_TEMPLATE.id
  is '主键ID';
comment on column SYS_IMP_TEMPLATE.code
  is '编码';
comment on column SYS_IMP_TEMPLATE.name
  is '名称';
comment on column SYS_IMP_TEMPLATE.swfl
  is '事务控制方式1：允许单条成功  2：允许单sheet页成功  3：允许全部成功';
comment on column SYS_IMP_TEMPLATE.bz
  is '描述';
comment on column SYS_IMP_TEMPLATE.user_class
  is '用户自定义处理类';
alter table SYS_IMP_TEMPLATE
  add constraint PK_SYS_IMP_TEMPLATE primary key (ID);

insert into SYS_LOOKUP_TYPE (id, sys_application_id, lookup_type, system_flag, valid_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version, belong_module, usage_modifier)
values ('8a58bc8663b0f8210163b181acc800dd', '1', 'SWFL_CONTROL', null, '1', to_date('30-05-2018 22:44:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:44:15', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, null, '1');
insert into SYS_LOOKUP_TYPE (id, sys_application_id, lookup_type, system_flag, valid_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version, belong_module, usage_modifier)
values ('8a58bc8663b0f8210163b1899e9e00f5', '1', 'CHECK_TYPE', null, '1', to_date('30-05-2018 22:52:56', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:52:56', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, null, '1');
insert into SYS_LOOKUP_TYPE (id, sys_application_id, lookup_type, system_flag, valid_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version, belong_module, usage_modifier)
values ('8a58bc8663bad1120163be5c2d7400e9', '1', 'ONLYORNOT', null, '1', to_date('14-06-2018 15:14:44', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('02-06-2018 10:38:22', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 3, null, '1');

insert into SYS_LOOKUP_TYPE_TL (id, sys_lookup_type_id, sys_language_code, lookup_type_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b181acd700df', '8a58bc8663b0f8210163b181acc800dd', 'zh_CN', '事物控制方式', null, to_date('30-05-2018 22:44:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:44:15', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP_TYPE_TL (id, sys_lookup_type_id, sys_language_code, lookup_type_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b1899ea200f7', '8a58bc8663b0f8210163b1899e9e00f5', 'zh_CN', '格式校验', null, to_date('30-05-2018 22:52:56', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:52:56', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP_TYPE_TL (id, sys_lookup_type_id, sys_language_code, lookup_type_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663bad1120163be5c2d8000eb', '8a58bc8663bad1120163be5c2d7400e9', 'zh_CN', '是否唯一性列', null, to_date('14-06-2018 15:14:44', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('02-06-2018 10:38:22', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 3);

insert into SYS_LOOKUP (id, sys_lookup_type_id, display_order, lookup_code, valid_flag, system_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b18ab3d80101', '8a58bc8663b0f8210163b1899e9e00f5', 2, '2', '1', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP (id, sys_lookup_type_id, display_order, lookup_code, valid_flag, system_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b18ab4450107', '8a58bc8663b0f8210163b1899e9e00f5', 3, '3', '1', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP (id, sys_lookup_type_id, display_order, lookup_code, valid_flag, system_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b18ab37f00fb', '8a58bc8663b0f8210163b1899e9e00f5', 1, '1', '1', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP (id, sys_lookup_type_id, display_order, lookup_code, valid_flag, system_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b18ab49a010d', '8a58bc8663b0f8210163b1899e9e00f5', 4, '4', '1', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP (id, sys_lookup_type_id, display_order, lookup_code, valid_flag, system_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b1837f4400e3', '8a58bc8663b0f8210163b181acc800dd', 1, '1', '1', null, to_date('30-05-2018 22:46:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:46:15', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP (id, sys_lookup_type_id, display_order, lookup_code, valid_flag, system_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b1837fae00e9', '8a58bc8663b0f8210163b181acc800dd', 2, '2', '1', null, to_date('30-05-2018 22:46:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:46:15', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP (id, sys_lookup_type_id, display_order, lookup_code, valid_flag, system_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b1837ff900ef', '8a58bc8663b0f8210163b181acc800dd', 3, '3', '1', null, to_date('30-05-2018 22:46:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:46:15', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP (id, sys_lookup_type_id, display_order, lookup_code, valid_flag, system_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663bad1120163be5cf1f000ef', '8a58bc8663bad1120163be5c2d7400e9', 1, '0', '1', null, to_date('14-06-2018 15:25:06', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('02-06-2018 10:39:12', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 2);
insert into SYS_LOOKUP (id, sys_lookup_type_id, display_order, lookup_code, valid_flag, system_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663bad1120163be5cf24400f5', '8a58bc8663bad1120163be5c2d7400e9', 0, '1', '1', null, to_date('14-06-2018 15:25:06', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('02-06-2018 10:39:12', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 2);

insert into SYS_LOOKUP_TL (id, sys_lookup_id, sys_language_code, lookup_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b18ab3da0103', '8a58bc8663b0f8210163b18ab3d80101', 'zh_CN', '日期', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP_TL (id, sys_lookup_id, sys_language_code, lookup_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b1837f5500e5', '8a58bc8663b0f8210163b1837f4400e3', 'zh_CN', '允许单条成功', null, to_date('30-05-2018 22:46:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:46:15', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP_TL (id, sys_lookup_id, sys_language_code, lookup_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b1837fb100eb', '8a58bc8663b0f8210163b1837fae00e9', 'zh_CN', '允许单sheet页成功', null, to_date('30-05-2018 22:46:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:46:15', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP_TL (id, sys_lookup_id, sys_language_code, lookup_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b18ab4480109', '8a58bc8663b0f8210163b18ab4450107', 'zh_CN', '邮箱', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP_TL (id, sys_lookup_id, sys_language_code, lookup_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b1837ffd00f1', '8a58bc8663b0f8210163b1837ff900ef', 'zh_CN', '允许全部成功', null, to_date('30-05-2018 22:46:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:46:15', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP_TL (id, sys_lookup_id, sys_language_code, lookup_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b18ab38100fd', '8a58bc8663b0f8210163b18ab37f00fb', 'zh_CN', '数值', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP_TL (id, sys_lookup_id, sys_language_code, lookup_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663b0f8210163b18ab49d010f', '8a58bc8663b0f8210163b18ab49a010d', 'zh_CN', '手机', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP_TL (id, sys_lookup_id, sys_language_code, lookup_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663bad1120163be5cf20100f1', '8a58bc8663bad1120163be5cf1f000ef', 'zh_CN', '否', null, to_date('14-06-2018 15:25:06', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('02-06-2018 10:39:12', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 2);
insert into SYS_LOOKUP_TL (id, sys_lookup_id, sys_language_code, lookup_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58bc8663bad1120163be5cf24800f7', '8a58bc8663bad1120163be5cf24400f5', 'zh_CN', '是', null, to_date('14-06-2018 15:25:06', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('02-06-2018 10:39:12', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 2);

create table SYS_DB_ENTITY
(
  ID                 VARCHAR2(50) not null,
  TABLE_NAME         VARCHAR2(32),
  TABLE_COMMENTS     VARCHAR2(500),
  MAPPER_FOR_TAB     VARCHAR2(50),
  LAST_UPDATE_DATE   DATE,
  LAST_UPDATED_BY    VARCHAR2(32),
  CREATION_DATE      DATE,
  CREATED_BY         VARCHAR2(32),
  LAST_UPDATE_IP     VARCHAR2(20),
  VERSION            NUMBER(16),
  SYS_APPLICATION_ID VARCHAR2(32),
  ORG_IDENTITY       VARCHAR2(32),
  EXEMETHODS         VARCHAR2(512),
  SUBJECTID          VARCHAR2(50)
)
;
comment on table SYS_DB_ENTITY
  is '需要维护用户权限的表实体';
comment on column SYS_DB_ENTITY.ID
  is '表主键';
comment on column SYS_DB_ENTITY.TABLE_NAME
  is '表名称';
comment on column SYS_DB_ENTITY.TABLE_COMMENTS
  is '表描述';
comment on column SYS_DB_ENTITY.MAPPER_FOR_TAB
  is '表对应mapper.xml';
comment on column SYS_DB_ENTITY.LAST_UPDATE_DATE
  is '最后更新时间';
comment on column SYS_DB_ENTITY.LAST_UPDATED_BY
  is '最后更新人';
comment on column SYS_DB_ENTITY.CREATION_DATE
  is '创建时间';
comment on column SYS_DB_ENTITY.CREATED_BY
  is '创建人';
comment on column SYS_DB_ENTITY.LAST_UPDATE_IP
  is '最后一次更新ip';
comment on column SYS_DB_ENTITY.VERSION
  is '版本';
comment on column SYS_DB_ENTITY.SYS_APPLICATION_ID
  is '应用ID';
comment on column SYS_DB_ENTITY.ORG_IDENTITY
  is '组织';
comment on column SYS_DB_ENTITY.EXEMETHODS
  is 'mapper.xml方法id';
comment on column SYS_DB_ENTITY.SUBJECTID
  is '分类ID';
alter table SYS_DB_ENTITY
  add constraint PK_DB_AUTH_ENTITY primary key (ID);

create table SYS_DB_RELATIONSHIP
(
  ID                 VARCHAR2(50) not null,
  TABLE_ID           VARCHAR2(50),
  TABLE_NAME         VARCHAR2(32),
  TYPE               VARCHAR2(1),
  TYPE_ID            VARCHAR2(50),
  PREAM1             VARCHAR2(1),
  PREAM2             VARCHAR2(1),
  PREAM3             VARCHAR2(1),
  PREAM4             VARCHAR2(1),
  PREAM5             VARCHAR2(4000),
  SYS_APPLICATION_ID VARCHAR2(32),
  ORG_IDENTITY       VARCHAR2(32),
  LAST_UPDATE_DATE   DATE,
  LAST_UPDATED_BY    VARCHAR2(32),
  CREATION_DATE      DATE,
  CREATED_BY         VARCHAR2(32),
  LAST_UPDATE_IP     VARCHAR2(20),
  VERSION            VARCHAR2(16),
  PREAM6             VARCHAR2(4000),
  PREAM7             VARCHAR2(4000),
  PREAM8             VARCHAR2(255),
  PREAM9             VARCHAR2(1),
  PREAM10            VARCHAR2(1)
)
;
comment on table SYS_DB_RELATIONSHIP
  is '权限关系维护表';
comment on column SYS_DB_RELATIONSHIP.ID
  is '表主键';
comment on column SYS_DB_RELATIONSHIP.TABLE_ID
  is '表ID';
comment on column SYS_DB_RELATIONSHIP.TABLE_NAME
  is '表名称';
comment on column SYS_DB_RELATIONSHIP.TYPE
  is '选择类型（1角色，2部门，3用户，4岗位，5群组）';
comment on column SYS_DB_RELATIONSHIP.TYPE_ID
  is '选择类型ID';
comment on column SYS_DB_RELATIONSHIP.PREAM1
  is '自己的数据      0:未勾选  1:勾选';
comment on column SYS_DB_RELATIONSHIP.PREAM2
  is '自己部门数据      0:未勾选  1:勾选';
comment on column SYS_DB_RELATIONSHIP.PREAM3
  is '自己部门下N级数据 ';
comment on column SYS_DB_RELATIONSHIP.PREAM4
  is '自己部门上N级数据';
comment on column SYS_DB_RELATIONSHIP.PREAM5
  is '指定组织的数据';
comment on column SYS_DB_RELATIONSHIP.SYS_APPLICATION_ID
  is '应用ID';
comment on column SYS_DB_RELATIONSHIP.ORG_IDENTITY
  is '组织';
comment on column SYS_DB_RELATIONSHIP.LAST_UPDATE_DATE
  is '最后更新时间';
comment on column SYS_DB_RELATIONSHIP.LAST_UPDATED_BY
  is '最后更新人';
comment on column SYS_DB_RELATIONSHIP.CREATION_DATE
  is '创建日期';
comment on column SYS_DB_RELATIONSHIP.CREATED_BY
  is '创建人';
comment on column SYS_DB_RELATIONSHIP.LAST_UPDATE_IP
  is '最后更新Ip';
comment on column SYS_DB_RELATIONSHIP.VERSION
  is '版本';
comment on column SYS_DB_RELATIONSHIP.PREAM6
  is '指定部门的数据';
comment on column SYS_DB_RELATIONSHIP.PREAM7
  is '指定用户的数据';
comment on column SYS_DB_RELATIONSHIP.PREAM8
  is '指定范围的数据';
comment on column SYS_DB_RELATIONSHIP.PREAM9
  is '应用权限控制';
comment on column SYS_DB_RELATIONSHIP.PREAM10
  is '扩展';
alter table SYS_DB_RELATIONSHIP
  add primary key (ID);

create table SYS_DB_SUBJECT
(
  ID                 VARCHAR2(50) not null,
  NAME               VARCHAR2(50),
  PID                VARCHAR2(50),
  CREATED_BY         VARCHAR2(36) not null,
  VERSION            NUMBER(16) not null,
  LAST_UPDATED_BY    VARCHAR2(36) not null,
  LAST_UPDATE_IP     VARCHAR2(36) not null,
  CREATION_DATE      DATE not null,
  LAST_UPDATE_DATE   DATE not null,
  ORG_IDENTITY       VARCHAR2(32) not null,
  SYS_APPLICATION_ID VARCHAR2(32)
)
;
comment on table SYS_DB_SUBJECT
  is '行数据授权分类';
comment on column SYS_DB_SUBJECT.ID
  is '主键ID';
comment on column SYS_DB_SUBJECT.NAME
  is '分类名称';
comment on column SYS_DB_SUBJECT.PID
  is '父ID';
comment on column SYS_DB_SUBJECT.CREATED_BY
  is '创建人';
comment on column SYS_DB_SUBJECT.VERSION
  is '版本';
comment on column SYS_DB_SUBJECT.LAST_UPDATED_BY
  is '最后更新人';
comment on column SYS_DB_SUBJECT.LAST_UPDATE_IP
  is '最后更新IP';
comment on column SYS_DB_SUBJECT.CREATION_DATE
  is '创建时间';
comment on column SYS_DB_SUBJECT.LAST_UPDATE_DATE
  is '最后更新时间';
comment on column SYS_DB_SUBJECT.ORG_IDENTITY
  is '组织';
comment on column SYS_DB_SUBJECT.SYS_APPLICATION_ID
  is '应用ID';
alter table SYS_DB_SUBJECT
  add constraint PK_DB_SUBJECT primary key (ID);

create global temporary table TEMP_USER
(
  USER_ID VARCHAR2(50)
)
on commit delete rows;
comment on table TEMP_USER
  is 'TEMP_USER';

CREATE OR REPLACE PACKAGE ROW_DATA_AUTHORIZATION IS

   PROCEDURE GET_USER_AREA(USERID IN VARCHAR2,MAPPER_NAME IN VARCHAR2,USER_CUSTOM OUT VARCHAR2,SECRET_LEVEL OUT VARCHAR2);

END ROW_DATA_AUTHORIZATION;
/
CREATE OR REPLACE PACKAGE BODY ROW_DATA_AUTHORIZATION IS

   PROCEDURE GET_USER_AREA(USERID IN VARCHAR2,MAPPER_NAME IN VARCHAR2,USER_CUSTOM OUT VARCHAR2,SECRET_LEVEL OUT VARCHAR2) IS

   SECRET_LEVEL_VALUE    VARCHAR2(50);--密级值域

   --通过当前用户获取配置权限信息
   CURSOR USER_AUTH(USERID VARCHAR2) IS
       --角色
       SELECT SDR.* FROM SYS_DB_RELATIONSHIP SDR
              INNER JOIN SYS_USER_ROLE SUR ON SDR.TYPE_ID = SUR.SYS_ROLE_ID
              INNER JOIN SYS_DB_ENTITY SDE ON SDR.TABLE_ID = SDE.ID
              WHERE SUR.SYS_USER_ID = USERID AND SDE.MAPPER_FOR_TAB = MAPPER_NAME
       union
       --群组
       SELECT SDR.* FROM SYS_DB_RELATIONSHIP SDR
              INNER JOIN sys_user_group SUG ON SDR.TYPE_ID = SUG.GROUP_ID
              INNER JOIN SYS_DB_ENTITY SDE ON SDR.TABLE_ID = SDE.ID
              WHERE SUG.USER_ID = USERID AND SDE.MAPPER_FOR_TAB = MAPPER_NAME
       union
       --部门
       SELECT SDR.* FROM SYS_DB_RELATIONSHIP SDR
              INNER JOIN sys_user_dept_position SUDP ON SDR.TYPE_ID = SUDP.DEPT_ID
              INNER JOIN SYS_DB_ENTITY SDE ON SDR.TABLE_ID = SDE.ID
              WHERE SUDP.User_Id = USERID AND SDE.MAPPER_FOR_TAB = MAPPER_NAME
       union
       --用户
       SELECT SDR.* FROM SYS_DB_RELATIONSHIP SDR
              INNER JOIN sys_user_dept_position SUDP ON SDR.TYPE_ID = SUDP.User_Id
              INNER JOIN SYS_DB_ENTITY SDE ON SDR.TABLE_ID = SDE.ID
              WHERE SUDP.User_Id = USERID AND SDE.MAPPER_FOR_TAB = MAPPER_NAME
       union
       --岗位
       SELECT SDR.* FROM SYS_DB_RELATIONSHIP SDR
              INNER JOIN sys_user_dept_position SUDP ON SDR.TYPE_ID = SUDP.Position_Id
              INNER JOIN SYS_DB_ENTITY SDE ON SDR.TABLE_ID = SDE.ID
              WHERE SUDP.User_Id = USERID AND SDE.MAPPER_FOR_TAB = MAPPER_NAME;

BEGIN

    IF(USERID IS NOT NULL)  THEN
        FOR PREAMES IN USER_AUTH(USERID) LOOP
           --存在用户自定义范围,且为多个，获取第一个数据后直接跳出存储过程;
          IF(PREAMES.PREAM8 IS NOT NULL) THEN
             USER_CUSTOM :=  PREAMES.PREAM8;
             EXIT;
          END IF;
        END LOOP;
        IF(USER_CUSTOM IS NULL) THEN
            FOR PREAMES IN USER_AUTH(USERID) LOOP
               BEGIN
                  IF(PREAMES.PREAM1 IS NOT NULL and PREAMES.PREAM1 = '1') THEN
                     --将用户自己放入临时表;
                     INSERT INTO TEMP_USER (USER_ID) VALUES(USERID);
                  END IF;
                  IF(PREAMES.PREAM2 IS NOT NULL and PREAMES.PREAM2 = '1') THEN
                     --将当前用户所在部门下的用户放入临时表;
                        insert into TEMP_USER
                          select d2.user_id
                          from sys_user_dept_position d1
                          inner join sys_user_dept_position d2 on (
                                d1.dept_id = d2.dept_id
                          )
                          where d1.user_id = USERID;
                  END IF;
                  IF(PREAMES.PREAM3 IS NOT NULL AND PREAMES.PREAM3 <> 0) THEN
                    --将当前用户下N级部门所有用户插入临时表
                    INSERT INTO TEMP_USER
                       select p.user_id from SYS_USER_DEPT_POSITION p
                         inner join (
                             SELECT OUT_SELF.* FROM (SELECT SD.ID FROM SYS_DEPT SD
                                    WHERE LEVEL <= PREAMES.PREAM3 +1
                                    CONNECT BY PRIOR SD.ID = SD.PARENT_DEPT_ID
                                    START WITH SD.ID IN (SELECT P.DEPT_ID FROM SYS_USER_DEPT_POSITION P WHERE P.USER_ID = USERID)) OUT_SELF WHERE OUT_SELF.id
                                    NOT IN(SELECT P.DEPT_ID FROM SYS_USER_DEPT_POSITION P WHERE P.USER_ID = USERID)
                         ) r on(
                            p.dept_id = r.id
                         );
                  END IF;
                  IF(PREAMES.PREAM4 IS NOT NULL AND PREAMES.PREAM4 <> 0) THEN
                    --将当前用户上N级部门所有用户插入临时表
                    INSERT INTO TEMP_USER
                       select p.user_id from SYS_USER_DEPT_POSITION p
                         inner join (
                             SELECT OUT_SELF.* FROM (SELECT SD.ID FROM SYS_DEPT SD
                                    WHERE LEVEL <= PREAMES.PREAM4 +1
                                    CONNECT BY PRIOR SD.PARENT_DEPT_ID = SD.ID
                                    START WITH SD.ID IN (SELECT P.DEPT_ID FROM SYS_USER_DEPT_POSITION P WHERE P.USER_ID = USERID)) OUT_SELF WHERE OUT_SELF.id
                                    NOT IN(SELECT P.DEPT_ID FROM SYS_USER_DEPT_POSITION P WHERE P.USER_ID = USERID)
                         ) r on(
                            p.dept_id = r.id
                         );
                  END IF;
                  IF(PREAMES.PREAM6 IS NOT NULL) THEN
                     --将当前用户指定部门下的用户放入临时表
                     INSERT INTO TEMP_USER SELECT PU.USER_ID FROM SYS_USER_DEPT_POSITION PU WHERE PU.DEPT_ID IN
                         (SELECT REGEXP_SUBSTR(PREAMES.PREAM6,'[^;]+', 1,LEVEL) FROM DUAL
                             CONNECT BY REGEXP_SUBSTR(PREAMES.PREAM6, '[^;]+', 1, LEVEL) IS NOT NULL);
                  END IF;
                  IF(PREAMES.PREAM7 IS NOT NULL) THEN
                    --将当前用户指定用户插入临时表
                      insert into TEMP_USER
                           select regexp_substr(PREAMES.PREAM7,'[^;]+', 1, level) from dual
                                 connect by regexp_substr(PREAMES.PREAM7, '[^;]+', 1, level) is not null;
                  END IF;
                  IF(PREAMES.PREAM9 IS NOT NULL and PREAMES.PREAM9 = '1') THEN
                     --查询当前用户密级所对应的密级范围
                     select s.lookup_name into SECRET_LEVEL_VALUE from sys_lookup_v s
                        inner join
                              (select t.secret_level from sys_user t where t.id = USERID) R
                        on (
                           s.lookup_code = R.secret_level
                        )
                    where s.lookup_type = 'PLATFORM_SECRET_SCOPE';
                  END IF;
                  SECRET_LEVEL := SECRET_LEVEL_VALUE;
               END;
           END LOOP;
        END IF;
    END IF;
END GET_USER_AREA;
END ROW_DATA_AUTHORIZATION;
/
