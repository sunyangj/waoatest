insert into SYS_MENU_DIRECTORY (id, app_id, menu_code, menu_url, parent_id, menu_order, menu_type, menu_status, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version, menu_view, is_menu, org_identity, is_show, menu_name, menu_icon, menu_des, open_type)
values ('40288149657f303a01657f31899c00bc', '1', 'OA', null, '2', 5, '1', '1', to_date('28-08-2018 14:21:17', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 14:21:17', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, null, '0', 'ORG_ROOT', '0', 'OA', null, null, '_mainframe');
insert into SYS_MENU_DIRECTORY (id, app_id, menu_code, menu_url, parent_id, menu_order, menu_type, menu_status, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version, menu_view, is_menu, org_identity, is_show, menu_name, menu_icon, menu_des, open_type)
values ('40288149657f303a01657f33397800bf', '1', 'OaMeetingRoom', 'oa/meeting/oameetingroom/oaMeetingRoomController/toOaMeetingRoomManage', '40288149657f303a01657f31899c00bc', 1, '1', '1', to_date('28-08-2018 14:23:08', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 14:23:08', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, 'avicit/oa/meeting/oameetingroom/OaMeetingRoomManage.jsp', '0', 'ORG_ROOT', '0', '会议室', null, 'avicit/oa/meeting/oameetingroom/OaMeetingRoomManage.jsp', '_mainframe');
insert into SYS_MENU_DIRECTORY (id, app_id, menu_code, menu_url, parent_id, menu_order, menu_type, menu_status, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version, menu_view, is_menu, org_identity, is_show, menu_name, menu_icon, menu_des, open_type)
values ('40288149657ff7d301658004ab7600bb', '1', 'oaMeeting', 'oa/meeting/oameeting/oaMeetingController/toOaMeetingManage', '40288149657f303a01657f31899c00bc', 2, '1', '1', to_date('28-08-2018 18:11:54', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 18:11:54', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, 'avicit/oa/meeting/oameeting/OaMeetingManage.jsp', '0', 'ORG_ROOT', '0', '会议申请', null, null, '_mainframe');
insert into SYS_MENU_DIRECTORY (id, app_id, menu_code, menu_url, parent_id, menu_order, menu_type, menu_status, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version, menu_view, is_menu, org_identity, is_show, menu_name, menu_icon, menu_des, open_type)
values ('40288149658865b80165889f3ce000bc', '1', 'meetingRoomApply', 'oa/meeting/oameeting/oaMeetingController/toOaMeetingUseManage', '40288149657f303a01657f31899c00bc', 3, '1', '1', to_date('30-08-2018 10:17:41', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-08-2018 10:17:41', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, 'avicit/oa/meeting/oameeting/OaMeetingApply.jsp', '0', 'ORG_ROOT', '0', '会议室占用', null, null, '_mainframe');


insert into sys_lookup_type (ID, SYS_APPLICATION_ID, LOOKUP_TYPE, SYSTEM_FLAG, VALID_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, BELONG_MODULE, USAGE_MODIFIER)
values ('40288149658e1a9501658f412edb00d1', '1', 'OA_HOLIDAY_TYPE', null, '1', to_date('31-08-2018 17:12:18', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:12:18', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, null, '0');

insert into sys_lookup_type (ID, SYS_APPLICATION_ID, LOOKUP_TYPE, SYSTEM_FLAG, VALID_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, BELONG_MODULE, USAGE_MODIFIER)
values ('40288149657f3bed01657f80f56c00d3', '1', 'OA_MEETING_IS_NEED_NETWORK', null, '1', to_date('28-08-2018 15:49:33', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 15:48:02', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 2, null, '0');


insert into sys_lookup_type_tl (ID, SYS_LOOKUP_TYPE_ID, SYS_LANGUAGE_CODE, LOOKUP_TYPE_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f412ee400d3', '40288149658e1a9501658f412edb00d1', 'zh_CN', '假期类别', null, to_date('31-08-2018 17:12:18', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:12:18', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_type_tl (ID, SYS_LOOKUP_TYPE_ID, SYS_LANGUAGE_CODE, LOOKUP_TYPE_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149657f3bed01657f80f57800d5', '40288149657f3bed01657f80f56c00d3', 'zh_CN', '是否需要网络', '是否需要网络：0 是,1 否', to_date('28-08-2018 15:49:33', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 15:48:02', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 2);


insert into sys_lookup (ID, SYS_LOOKUP_TYPE_ID, DISPLAY_ORDER, LOOKUP_CODE, VALID_FLAG, SYSTEM_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149657f3bed01657f83377d00de', '40288149657f3bed01657f80f56c00d3', 1, '0', '1', null, to_date('28-08-2018 15:50:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 15:50:30', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup (ID, SYS_LOOKUP_TYPE_ID, DISPLAY_ORDER, LOOKUP_CODE, VALID_FLAG, SYSTEM_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149657f3bed01657f8337ec00e4', '40288149657f3bed01657f80f56c00d3', 2, '1', '1', null, to_date('28-08-2018 15:50:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 15:50:30', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup (ID, SYS_LOOKUP_TYPE_ID, DISPLAY_ORDER, LOOKUP_CODE, VALID_FLAG, SYSTEM_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451a9e00e4', '40288149658e1a9501658f412edb00d1', 1, '1', '1', null, to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup (ID, SYS_LOOKUP_TYPE_ID, DISPLAY_ORDER, LOOKUP_CODE, VALID_FLAG, SYSTEM_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451acb00e9', '40288149658e1a9501658f412edb00d1', 2, '2', '1', null, to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup (ID, SYS_LOOKUP_TYPE_ID, DISPLAY_ORDER, LOOKUP_CODE, VALID_FLAG, SYSTEM_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451b1800f0', '40288149658e1a9501658f412edb00d1', 3, '3', '1', null, to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup (ID, SYS_LOOKUP_TYPE_ID, DISPLAY_ORDER, LOOKUP_CODE, VALID_FLAG, SYSTEM_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451b4800f4', '40288149658e1a9501658f412edb00d1', 4, '4', '1', null, to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup (ID, SYS_LOOKUP_TYPE_ID, DISPLAY_ORDER, LOOKUP_CODE, VALID_FLAG, SYSTEM_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451b7c00fc', '40288149658e1a9501658f412edb00d1', 5, '5', '1', null, to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup (ID, SYS_LOOKUP_TYPE_ID, DISPLAY_ORDER, LOOKUP_CODE, VALID_FLAG, SYSTEM_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451bb80106', '40288149658e1a9501658f412edb00d1', 6, '6', '1', null, to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup (ID, SYS_LOOKUP_TYPE_ID, DISPLAY_ORDER, LOOKUP_CODE, VALID_FLAG, SYSTEM_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451a6c00e1', '40288149658e1a9501658f412edb00d1', 7, '7', '1', null, to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup (ID, SYS_LOOKUP_TYPE_ID, DISPLAY_ORDER, LOOKUP_CODE, VALID_FLAG, SYSTEM_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451a3800dc', '40288149658e1a9501658f412edb00d1', 8, '8', '1', null, to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup (ID, SYS_LOOKUP_TYPE_ID, DISPLAY_ORDER, LOOKUP_CODE, VALID_FLAG, SYSTEM_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f4519da00d7', '40288149658e1a9501658f412edb00d1', 9, '9', '1', null, to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);


insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149657f3bed01657f83378c00e0', '40288149657f3bed01657f83377d00de', 'zh_CN', '是', '是', to_date('28-08-2018 15:50:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 15:50:30', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149657f3bed01657f8337ee00e6', '40288149657f3bed01657f8337ec00e4', 'zh_CN', '否', '否', to_date('28-08-2018 15:50:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 15:50:30', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f4519e600d9', '40288149658e1a9501658f4519da00d7', 'zh_CN', '哺乳假', '哺乳假', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451a3b00de', '40288149658e1a9501658f451a3800dc', 'zh_CN', '丧假', '丧假', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451a6e00e3', '40288149658e1a9501658f451a6c00e1', 'zh_CN', '护理假', '护理假', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451aa100e6', '40288149658e1a9501658f451a9e00e4', 'zh_CN', '事假', '事假', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451acd00eb', '40288149658e1a9501658f451acb00e9', 'zh_CN', '病假', '病假', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451b1900f2', '40288149658e1a9501658f451b1800f0', 'zh_CN', '探亲假', '探亲假', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451b4b00f6', '40288149658e1a9501658f451b4800f4', 'zh_CN', '婚假', '婚假', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451b7e00ff', '40288149658e1a9501658f451b7c00fc', 'zh_CN', '因公外出', '因公外出', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451bb90109', '40288149658e1a9501658f451bb80106', 'zh_CN', '产假', '产假', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);


insert into bpm_deployprop (DBID_, DEPLOYMENT_, OBJNAME_, KEY_, STRINGVAL_, LONGVAL_)
values ('40288149657f8c8b01657f94052800c4', '40288149657f8c8b01657f9404eb00c2', '会议申请', 'langid', 'jpdl-4.4', null);

insert into bpm_deployprop (DBID_, DEPLOYMENT_, OBJNAME_, KEY_, STRINGVAL_, LONGVAL_)
values ('40288149657f8c8b01657f9405c800c5', '40288149657f8c8b01657f9404eb00c2', '会议申请', 'pdid', '40288149657f8c8b01657f90f59500c0-1', null);

insert into bpm_deployprop (DBID_, DEPLOYMENT_, OBJNAME_, KEY_, STRINGVAL_, LONGVAL_)
values ('40288149657f8c8b01657f9405c900c6', '40288149657f8c8b01657f9404eb00c2', '会议申请', 'pdkey', '40288149657f8c8b01657f90f59500c0', null);

insert into bpm_deployprop (DBID_, DEPLOYMENT_, OBJNAME_, KEY_, STRINGVAL_, LONGVAL_)
values ('40288149657f8c8b01657f9405c900c7', '40288149657f8c8b01657f9404eb00c2', '会议申请', 'pdversion', null, 1);

insert into bpm_deployprop (DBID_, DEPLOYMENT_, OBJNAME_, KEY_, STRINGVAL_, LONGVAL_)
values ('40288149657f8c8b01657f9405c900c8', '40288149657f8c8b01657f9404eb00c2', '会议申请', 'pdname', '会议申请', null);

insert into bpm_deployprop (DBID_, DEPLOYMENT_, OBJNAME_, KEY_, STRINGVAL_, LONGVAL_)
values ('40288149657f8c8b01657f9405c900c9', '40288149657f8c8b01657f9404eb00c2', '会议申请', 'pddesc', null, null);


insert into BPM_LOB (DBID_, DBVERSION_, BLOB_VALUE_, DEPLOYMENT_, FIGURE_VALUE_, NAME_)
values ('40288149657f8c8b01657f9404ec00c3', 0, '<BLOB>', '40288149657f8c8b01657f9404eb00c2', '<BLOB>', '40288149657f8c8b01657f90f59500c0');


insert into BPM_CATALOG_PROCESS_RELATION (DBID_, BUSSINESS_CATALOG_DBID_, BPM_PROCESS_KEY_)
values ('40288149657f8c8b01657f94044000c1', '40288149657f8c8b01657f8e814b00bc', '40288149657f8c8b01657f90f59500c0');


create table OA_MEETING
(
  id                 VARCHAR2(50) not null,
  name               VARCHAR2(120) not null,
  init_user_id       VARCHAR2(50) not null,
  init_dept_id       VARCHAR2(50) not null,
  initiator_dt       DATE,
  link_tel           VARCHAR2(50),
  room_id            VARCHAR2(50) not null,
  topic              VARCHAR2(200) not null,
  hold_dept_id       VARCHAR2(50) not null,
  join_leader_ids    VARCHAR2(1000) not null,
  join_leader        VARCHAR2(1000),
  join_person_ids    VARCHAR2(2000) not null,
  join_person        VARCHAR2(2000),
  plan_start_dt      TIMESTAMP(6) default to_date('','yyyy-MM-dd HH:mm') not null,
  plan_end_dt        TIMESTAMP(6) default to_date('','yyyy-MM-dd HH:mm') not null,
  is_need_network    VARCHAR2(2) not null,
  remark             VARCHAR2(2000),
  status             VARCHAR2(2),
  last_update_date   DATE not null,
  last_updated_by    VARCHAR2(50) not null,
  creation_date      DATE,
  created_by         VARCHAR2(50) not null,
  last_update_ip     VARCHAR2(50) not null,
  version            NUMBER(16) not null,
  attribute_01       VARCHAR2(255) default '',
  attribute_02       VARCHAR2(255) default '',
  attribute_03       VARCHAR2(255) default '',
  attribute_04       VARCHAR2(255) default '',
  attribute_05       VARCHAR2(255) default '',
  attribute_06       VARCHAR2(255) default '',
  attribute_07       VARCHAR2(255) default '',
  attribute_08       VARCHAR2(255) default '',
  attribute_09       DATE default to_date('','yyyy-mm-dd'),
  attribute_10       DATE default to_date('','yyyy-mm-dd'),
  attribute_11       NUMBER(20) default '',
  attribute_12       NUMBER(20) default '',
  attribute_13       NUMBER(20) default '',
  attribute_14       NUMBER(20) default '',
  attribute_15       VARCHAR2(255) default '',
  sys_application_id VARCHAR2(50) default '',
  org_identity       VARCHAR2(32) not null,
  org_id             VARCHAR2(50) not null
)
tablespace PT6
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table OA_MEETING
  is '会议信息';
comment on column OA_MEETING.id
  is '主键';
comment on column OA_MEETING.name
  is '会议名称';
comment on column OA_MEETING.init_user_id
  is '发起人ID';
comment on column OA_MEETING.init_dept_id
  is '发起人所在部门ID';
comment on column OA_MEETING.initiator_dt
  is '发起时间';
comment on column OA_MEETING.link_tel
  is '联系电话';
comment on column OA_MEETING.room_id
  is '会议室';
comment on column OA_MEETING.topic
  is '会议内容';
comment on column OA_MEETING.hold_dept_id
  is '办会部门';
comment on column OA_MEETING.join_leader_ids
  is '参会领导IDS';
comment on column OA_MEETING.join_leader
  is '参会领导';
comment on column OA_MEETING.join_person_ids
  is '参会人员IDS';
comment on column OA_MEETING.join_person
  is '参会人员';
comment on column OA_MEETING.plan_start_dt
  is '开始使用时间';
comment on column OA_MEETING.plan_end_dt
  is '结束使用时间';
comment on column OA_MEETING.is_need_network
  is '需要网络';
comment on column OA_MEETING.remark
  is '备注';
comment on column OA_MEETING.status
  is '状态值';
comment on column OA_MEETING.last_update_date
  is '最后修改时间';
comment on column OA_MEETING.last_updated_by
  is '最后修改人';
comment on column OA_MEETING.creation_date
  is '创建时间';
comment on column OA_MEETING.created_by
  is '创建人';
comment on column OA_MEETING.last_update_ip
  is '最后修改IP';
comment on column OA_MEETING.version
  is '版本';
comment on column OA_MEETING.attribute_01
  is '扩展字段';
comment on column OA_MEETING.attribute_02
  is '扩展字段';
comment on column OA_MEETING.attribute_03
  is '扩展字段';
comment on column OA_MEETING.attribute_04
  is '扩展字段';
comment on column OA_MEETING.attribute_05
  is '扩展字段';
comment on column OA_MEETING.attribute_06
  is '扩展字段';
comment on column OA_MEETING.attribute_07
  is '扩展字段';
comment on column OA_MEETING.attribute_08
  is '扩展字段';
comment on column OA_MEETING.attribute_09
  is '扩展字段';
comment on column OA_MEETING.attribute_10
  is '扩展字段';
comment on column OA_MEETING.attribute_11
  is '扩展字段';
comment on column OA_MEETING.attribute_12
  is '扩展字段';
comment on column OA_MEETING.attribute_13
  is '扩展字段';
comment on column OA_MEETING.attribute_14
  is '扩展字段';
comment on column OA_MEETING.attribute_15
  is '扩展字段';
comment on column OA_MEETING.sys_application_id
  is '多应用ID 值session中取';
comment on column OA_MEETING.org_identity
  is '部门所属组织id';
comment on column OA_MEETING.org_id
  is '组织ID';
alter table OA_MEETING
  add constraint OA_MEETING primary key (ID)
  using index 
  tablespace PT6
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );


  
  
  
  
  create table OA_MEETING_ROOM
(
  id                 VARCHAR2(50) not null,
  name               VARCHAR2(120),
  seat_num           NUMBER(6),
  addr               VARCHAR2(120),
  room_admin         VARCHAR2(50),
  remark             VARCHAR2(200),
  last_update_date   DATE not null,
  last_updated_by    VARCHAR2(50) not null,
  creation_date      DATE,
  created_by         VARCHAR2(50) not null,
  last_update_ip     VARCHAR2(50) not null,
  version            NUMBER(16) not null,
  attribute_01       VARCHAR2(255) default '',
  attribute_02       VARCHAR2(255) default '',
  attribute_03       VARCHAR2(255) default '',
  attribute_04       VARCHAR2(255) default '',
  attribute_05       VARCHAR2(255) default '',
  attribute_06       VARCHAR2(255) default '',
  attribute_07       VARCHAR2(255) default '',
  attribute_08       VARCHAR2(255) default '',
  attribute_09       DATE default to_date('','yyyy-mm-dd'),
  attribute_10       DATE default to_date('','yyyy-mm-dd'),
  attribute_11       NUMBER(20) default '',
  attribute_12       NUMBER(20) default '',
  attribute_13       NUMBER(20) default '',
  attribute_14       NUMBER(20) default '',
  attribute_15       VARCHAR2(255) default '',
  sys_application_id VARCHAR2(50) default '',
  org_identity       VARCHAR2(32) not null,
  org_id             VARCHAR2(50) not null,
  price              NUMBER(16,2) default 0
)
tablespace PT6
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table OA_MEETING_ROOM
  is '会议室';
comment on column OA_MEETING_ROOM.id
  is '主键';
comment on column OA_MEETING_ROOM.name
  is '名称';
comment on column OA_MEETING_ROOM.seat_num
  is '座位数';
comment on column OA_MEETING_ROOM.addr
  is '地址';
comment on column OA_MEETING_ROOM.room_admin
  is '管理员';
comment on column OA_MEETING_ROOM.remark
  is '备注';
comment on column OA_MEETING_ROOM.last_update_date
  is '最后修改时间';
comment on column OA_MEETING_ROOM.last_updated_by
  is '最后修改人';
comment on column OA_MEETING_ROOM.creation_date
  is '创建时间';
comment on column OA_MEETING_ROOM.created_by
  is '创建人';
comment on column OA_MEETING_ROOM.last_update_ip
  is '最后修改IP';
comment on column OA_MEETING_ROOM.version
  is '版本';
comment on column OA_MEETING_ROOM.attribute_01
  is '扩展字段';
comment on column OA_MEETING_ROOM.attribute_02
  is '扩展字段';
comment on column OA_MEETING_ROOM.attribute_03
  is '扩展字段';
comment on column OA_MEETING_ROOM.attribute_04
  is '扩展字段';
comment on column OA_MEETING_ROOM.attribute_05
  is '扩展字段';
comment on column OA_MEETING_ROOM.attribute_06
  is '扩展字段';
comment on column OA_MEETING_ROOM.attribute_07
  is '扩展字段';
comment on column OA_MEETING_ROOM.attribute_08
  is '扩展字段';
comment on column OA_MEETING_ROOM.attribute_09
  is '扩展字段';
comment on column OA_MEETING_ROOM.attribute_10
  is '扩展字段';
comment on column OA_MEETING_ROOM.attribute_11
  is '扩展字段';
comment on column OA_MEETING_ROOM.attribute_12
  is '扩展字段';
comment on column OA_MEETING_ROOM.attribute_13
  is '扩展字段';
comment on column OA_MEETING_ROOM.attribute_14
  is '扩展字段';
comment on column OA_MEETING_ROOM.attribute_15
  is '扩展字段';
comment on column OA_MEETING_ROOM.sys_application_id
  is '多应用ID 值session中取';
comment on column OA_MEETING_ROOM.org_identity
  is '部门所属组织id';
comment on column OA_MEETING_ROOM.org_id
  is '组织ID';
comment on column OA_MEETING_ROOM.price
  is '价格(元/次)';
alter table OA_MEETING_ROOM
  add constraint OA_MEETING_ROOM primary key (ID)
  using index 
  tablespace PT6
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
  
  
  create table OA_MEETING_USE_CASE
(
  id                 VARCHAR2(50) not null,
  meeting_room       VARCHAR2(50),
  meeting            VARCHAR2(50),
  start_dt           TIMESTAMP(6) default to_date('','yyyy-MM-dd HH:mm'),
  end_dt             TIMESTAMP(6) default to_date('','yyyy-MM-dd HH:mm'),
  start_num          NUMBER(16),
  end_num            NUMBER(16),
  status             VARCHAR2(2),
  last_update_date   DATE not null,
  last_updated_by    VARCHAR2(50) not null,
  creation_date      DATE,
  created_by         VARCHAR2(50) not null,
  last_update_ip     VARCHAR2(50) not null,
  version            NUMBER(16) not null,
  attribute_01       VARCHAR2(255) default '',
  attribute_02       VARCHAR2(255) default '',
  attribute_03       VARCHAR2(255) default '',
  attribute_04       VARCHAR2(255) default '',
  attribute_05       VARCHAR2(255) default '',
  attribute_06       VARCHAR2(255) default '',
  attribute_07       VARCHAR2(255) default '',
  attribute_08       VARCHAR2(255) default '',
  attribute_09       DATE default to_date('','yyyy-mm-dd'),
  attribute_10       DATE default to_date('','yyyy-mm-dd'),
  attribute_11       NUMBER(20) default '',
  attribute_12       NUMBER(20) default '',
  attribute_13       NUMBER(20) default '',
  attribute_14       NUMBER(20) default '',
  attribute_15       VARCHAR2(255) default '',
  sys_application_id VARCHAR2(50) default '',
  org_identity       VARCHAR2(32) not null,
  org_id             VARCHAR2(50) not null
)
tablespace PT6
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table OA_MEETING_USE_CASE
  is '会议室占用情况';
comment on column OA_MEETING_USE_CASE.id
  is '主键';
comment on column OA_MEETING_USE_CASE.meeting_room
  is '会议室';
comment on column OA_MEETING_USE_CASE.meeting
  is '会议';
comment on column OA_MEETING_USE_CASE.start_dt
  is '会议开始时间';
comment on column OA_MEETING_USE_CASE.end_dt
  is '会议结束时间';
comment on column OA_MEETING_USE_CASE.start_num
  is '会议开始时间数字';
comment on column OA_MEETING_USE_CASE.end_num
  is '会议结束时间数字';
comment on column OA_MEETING_USE_CASE.status
  is '状态位';
comment on column OA_MEETING_USE_CASE.last_update_date
  is '最后修改时间';
comment on column OA_MEETING_USE_CASE.last_updated_by
  is '最后修改人';
comment on column OA_MEETING_USE_CASE.creation_date
  is '创建时间';
comment on column OA_MEETING_USE_CASE.created_by
  is '创建人';
comment on column OA_MEETING_USE_CASE.last_update_ip
  is '最后修改IP';
comment on column OA_MEETING_USE_CASE.version
  is '版本';
comment on column OA_MEETING_USE_CASE.attribute_01
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.attribute_02
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.attribute_03
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.attribute_04
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.attribute_05
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.attribute_06
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.attribute_07
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.attribute_08
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.attribute_09
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.attribute_10
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.attribute_11
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.attribute_12
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.attribute_13
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.attribute_14
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.attribute_15
  is '扩展字段';
comment on column OA_MEETING_USE_CASE.sys_application_id
  is '多应用ID 值session中取';
comment on column OA_MEETING_USE_CASE.org_identity
  is '部门所属组织id';
comment on column OA_MEETING_USE_CASE.org_id
  is '组织ID';
alter table OA_MEETING_USE_CASE
  add constraint OA_MEETING_USE_CASE primary key (ID)
  using index 
  tablespace PT6
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
  
  






