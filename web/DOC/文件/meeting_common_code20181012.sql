insert into SYS_MENU_DIRECTORY (id, app_id, menu_code, menu_url, parent_id, menu_order, menu_type, menu_status, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version, menu_view, is_menu, org_identity, is_show, menu_name, menu_icon, menu_des, open_type)
values ('40288149657f303a01657f31899c00bc', '1', 'OA', null, '2', 5, '1', '1', to_date('28-08-2018 14:21:17', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 14:21:17', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, null, '0', 'ORG_ROOT', '0', 'OA', null, null, '_mainframe');
insert into SYS_MENU_DIRECTORY (id, app_id, menu_code, menu_url, parent_id, menu_order, menu_type, menu_status, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version, menu_view, is_menu, org_identity, is_show, menu_name, menu_icon, menu_des, open_type)
values ('40288149657f303a01657f33397800bf', '1', 'OaMeetingRoom', 'oa/meeting/oameetingroom/oaMeetingRoomController/toOaMeetingRoomManage', '40288149657f303a01657f31899c00bc', 1, '1', '1', to_date('28-08-2018 14:23:08', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 14:23:08', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, 'avicit/oa/meeting/oameetingroom/OaMeetingRoomManage.jsp', '0', 'ORG_ROOT', '0', '������', null, 'avicit/oa/meeting/oameetingroom/OaMeetingRoomManage.jsp', '_mainframe');
insert into SYS_MENU_DIRECTORY (id, app_id, menu_code, menu_url, parent_id, menu_order, menu_type, menu_status, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version, menu_view, is_menu, org_identity, is_show, menu_name, menu_icon, menu_des, open_type)
values ('40288149657ff7d301658004ab7600bb', '1', 'oaMeeting', 'oa/meeting/oameeting/oaMeetingController/toOaMeetingManage', '40288149657f303a01657f31899c00bc', 2, '1', '1', to_date('28-08-2018 18:11:54', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 18:11:54', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, 'avicit/oa/meeting/oameeting/OaMeetingManage.jsp', '0', 'ORG_ROOT', '0', '��������', null, null, '_mainframe');
insert into SYS_MENU_DIRECTORY (id, app_id, menu_code, menu_url, parent_id, menu_order, menu_type, menu_status, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version, menu_view, is_menu, org_identity, is_show, menu_name, menu_icon, menu_des, open_type)
values ('40288149658865b80165889f3ce000bc', '1', 'meetingRoomApply', 'oa/meeting/oameeting/oaMeetingController/toOaMeetingUseManage', '40288149657f303a01657f31899c00bc', 3, '1', '1', to_date('30-08-2018 10:17:41', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-08-2018 10:17:41', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, 'avicit/oa/meeting/oameeting/OaMeetingApply.jsp', '0', 'ORG_ROOT', '0', '������ռ��', null, null, '_mainframe');


insert into sys_lookup_type (ID, SYS_APPLICATION_ID, LOOKUP_TYPE, SYSTEM_FLAG, VALID_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, BELONG_MODULE, USAGE_MODIFIER)
values ('40288149658e1a9501658f412edb00d1', '1', 'OA_HOLIDAY_TYPE', null, '1', to_date('31-08-2018 17:12:18', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:12:18', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, null, '0');

insert into sys_lookup_type (ID, SYS_APPLICATION_ID, LOOKUP_TYPE, SYSTEM_FLAG, VALID_FLAG, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION, BELONG_MODULE, USAGE_MODIFIER)
values ('40288149657f3bed01657f80f56c00d3', '1', 'OA_MEETING_IS_NEED_NETWORK', null, '1', to_date('28-08-2018 15:49:33', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 15:48:02', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 2, null, '0');


insert into sys_lookup_type_tl (ID, SYS_LOOKUP_TYPE_ID, SYS_LANGUAGE_CODE, LOOKUP_TYPE_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f412ee400d3', '40288149658e1a9501658f412edb00d1', 'zh_CN', '�������', null, to_date('31-08-2018 17:12:18', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:12:18', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_type_tl (ID, SYS_LOOKUP_TYPE_ID, SYS_LANGUAGE_CODE, LOOKUP_TYPE_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149657f3bed01657f80f57800d5', '40288149657f3bed01657f80f56c00d3', 'zh_CN', '�Ƿ���Ҫ����', '�Ƿ���Ҫ���磺0 ��,1 ��', to_date('28-08-2018 15:49:33', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 15:48:02', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 2);


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
values ('40288149657f3bed01657f83378c00e0', '40288149657f3bed01657f83377d00de', 'zh_CN', '��', '��', to_date('28-08-2018 15:50:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 15:50:30', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149657f3bed01657f8337ee00e6', '40288149657f3bed01657f8337ec00e4', 'zh_CN', '��', '��', to_date('28-08-2018 15:50:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('28-08-2018 15:50:30', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f4519e600d9', '40288149658e1a9501658f4519da00d7', 'zh_CN', '�����', '�����', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451a3b00de', '40288149658e1a9501658f451a3800dc', 'zh_CN', 'ɥ��', 'ɥ��', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451a6e00e3', '40288149658e1a9501658f451a6c00e1', 'zh_CN', '�����', '�����', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451aa100e6', '40288149658e1a9501658f451a9e00e4', 'zh_CN', '�¼�', '�¼�', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451acd00eb', '40288149658e1a9501658f451acb00e9', 'zh_CN', '����', '����', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451b1900f2', '40288149658e1a9501658f451b1800f0', 'zh_CN', '̽�׼�', '̽�׼�', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451b4b00f6', '40288149658e1a9501658f451b4800f4', 'zh_CN', '���', '���', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451b7e00ff', '40288149658e1a9501658f451b7c00fc', 'zh_CN', '�����', '�����', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into sys_lookup_tl (ID, SYS_LOOKUP_ID, SYS_LANGUAGE_CODE, LOOKUP_NAME, DESCRIPTION, LAST_UPDATE_DATE, LAST_UPDATED_BY, CREATION_DATE, CREATED_BY, LAST_UPDATE_IP, VERSION)
values ('40288149658e1a9501658f451bb90109', '40288149658e1a9501658f451bb80106', 'zh_CN', '����', '����', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('31-08-2018 17:16:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);


insert into bpm_deployprop (DBID_, DEPLOYMENT_, OBJNAME_, KEY_, STRINGVAL_, LONGVAL_)
values ('40288149657f8c8b01657f94052800c4', '40288149657f8c8b01657f9404eb00c2', '��������', 'langid', 'jpdl-4.4', null);

insert into bpm_deployprop (DBID_, DEPLOYMENT_, OBJNAME_, KEY_, STRINGVAL_, LONGVAL_)
values ('40288149657f8c8b01657f9405c800c5', '40288149657f8c8b01657f9404eb00c2', '��������', 'pdid', '40288149657f8c8b01657f90f59500c0-1', null);

insert into bpm_deployprop (DBID_, DEPLOYMENT_, OBJNAME_, KEY_, STRINGVAL_, LONGVAL_)
values ('40288149657f8c8b01657f9405c900c6', '40288149657f8c8b01657f9404eb00c2', '��������', 'pdkey', '40288149657f8c8b01657f90f59500c0', null);

insert into bpm_deployprop (DBID_, DEPLOYMENT_, OBJNAME_, KEY_, STRINGVAL_, LONGVAL_)
values ('40288149657f8c8b01657f9405c900c7', '40288149657f8c8b01657f9404eb00c2', '��������', 'pdversion', null, 1);

insert into bpm_deployprop (DBID_, DEPLOYMENT_, OBJNAME_, KEY_, STRINGVAL_, LONGVAL_)
values ('40288149657f8c8b01657f9405c900c8', '40288149657f8c8b01657f9404eb00c2', '��������', 'pdname', '��������', null);

insert into bpm_deployprop (DBID_, DEPLOYMENT_, OBJNAME_, KEY_, STRINGVAL_, LONGVAL_)
values ('40288149657f8c8b01657f9405c900c9', '40288149657f8c8b01657f9404eb00c2', '��������', 'pddesc', null, null);


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
  is '������Ϣ';
comment on column OA_MEETING.id
  is '����';
comment on column OA_MEETING.name
  is '��������';
comment on column OA_MEETING.init_user_id
  is '������ID';
comment on column OA_MEETING.init_dept_id
  is '���������ڲ���ID';
comment on column OA_MEETING.initiator_dt
  is '����ʱ��';
comment on column OA_MEETING.link_tel
  is '��ϵ�绰';
comment on column OA_MEETING.room_id
  is '������';
comment on column OA_MEETING.topic
  is '��������';
comment on column OA_MEETING.hold_dept_id
  is '��Ჿ��';
comment on column OA_MEETING.join_leader_ids
  is '�λ��쵼IDS';
comment on column OA_MEETING.join_leader
  is '�λ��쵼';
comment on column OA_MEETING.join_person_ids
  is '�λ���ԱIDS';
comment on column OA_MEETING.join_person
  is '�λ���Ա';
comment on column OA_MEETING.plan_start_dt
  is '��ʼʹ��ʱ��';
comment on column OA_MEETING.plan_end_dt
  is '����ʹ��ʱ��';
comment on column OA_MEETING.is_need_network
  is '��Ҫ����';
comment on column OA_MEETING.remark
  is '��ע';
comment on column OA_MEETING.status
  is '״ֵ̬';
comment on column OA_MEETING.last_update_date
  is '����޸�ʱ��';
comment on column OA_MEETING.last_updated_by
  is '����޸���';
comment on column OA_MEETING.creation_date
  is '����ʱ��';
comment on column OA_MEETING.created_by
  is '������';
comment on column OA_MEETING.last_update_ip
  is '����޸�IP';
comment on column OA_MEETING.version
  is '�汾';
comment on column OA_MEETING.attribute_01
  is '��չ�ֶ�';
comment on column OA_MEETING.attribute_02
  is '��չ�ֶ�';
comment on column OA_MEETING.attribute_03
  is '��չ�ֶ�';
comment on column OA_MEETING.attribute_04
  is '��չ�ֶ�';
comment on column OA_MEETING.attribute_05
  is '��չ�ֶ�';
comment on column OA_MEETING.attribute_06
  is '��չ�ֶ�';
comment on column OA_MEETING.attribute_07
  is '��չ�ֶ�';
comment on column OA_MEETING.attribute_08
  is '��չ�ֶ�';
comment on column OA_MEETING.attribute_09
  is '��չ�ֶ�';
comment on column OA_MEETING.attribute_10
  is '��չ�ֶ�';
comment on column OA_MEETING.attribute_11
  is '��չ�ֶ�';
comment on column OA_MEETING.attribute_12
  is '��չ�ֶ�';
comment on column OA_MEETING.attribute_13
  is '��չ�ֶ�';
comment on column OA_MEETING.attribute_14
  is '��չ�ֶ�';
comment on column OA_MEETING.attribute_15
  is '��չ�ֶ�';
comment on column OA_MEETING.sys_application_id
  is '��Ӧ��ID ֵsession��ȡ';
comment on column OA_MEETING.org_identity
  is '����������֯id';
comment on column OA_MEETING.org_id
  is '��֯ID';
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
  is '������';
comment on column OA_MEETING_ROOM.id
  is '����';
comment on column OA_MEETING_ROOM.name
  is '����';
comment on column OA_MEETING_ROOM.seat_num
  is '��λ��';
comment on column OA_MEETING_ROOM.addr
  is '��ַ';
comment on column OA_MEETING_ROOM.room_admin
  is '����Ա';
comment on column OA_MEETING_ROOM.remark
  is '��ע';
comment on column OA_MEETING_ROOM.last_update_date
  is '����޸�ʱ��';
comment on column OA_MEETING_ROOM.last_updated_by
  is '����޸���';
comment on column OA_MEETING_ROOM.creation_date
  is '����ʱ��';
comment on column OA_MEETING_ROOM.created_by
  is '������';
comment on column OA_MEETING_ROOM.last_update_ip
  is '����޸�IP';
comment on column OA_MEETING_ROOM.version
  is '�汾';
comment on column OA_MEETING_ROOM.attribute_01
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.attribute_02
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.attribute_03
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.attribute_04
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.attribute_05
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.attribute_06
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.attribute_07
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.attribute_08
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.attribute_09
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.attribute_10
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.attribute_11
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.attribute_12
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.attribute_13
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.attribute_14
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.attribute_15
  is '��չ�ֶ�';
comment on column OA_MEETING_ROOM.sys_application_id
  is '��Ӧ��ID ֵsession��ȡ';
comment on column OA_MEETING_ROOM.org_identity
  is '����������֯id';
comment on column OA_MEETING_ROOM.org_id
  is '��֯ID';
comment on column OA_MEETING_ROOM.price
  is '�۸�(Ԫ/��)';
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
  is '������ռ�����';
comment on column OA_MEETING_USE_CASE.id
  is '����';
comment on column OA_MEETING_USE_CASE.meeting_room
  is '������';
comment on column OA_MEETING_USE_CASE.meeting
  is '����';
comment on column OA_MEETING_USE_CASE.start_dt
  is '���鿪ʼʱ��';
comment on column OA_MEETING_USE_CASE.end_dt
  is '�������ʱ��';
comment on column OA_MEETING_USE_CASE.start_num
  is '���鿪ʼʱ������';
comment on column OA_MEETING_USE_CASE.end_num
  is '�������ʱ������';
comment on column OA_MEETING_USE_CASE.status
  is '״̬λ';
comment on column OA_MEETING_USE_CASE.last_update_date
  is '����޸�ʱ��';
comment on column OA_MEETING_USE_CASE.last_updated_by
  is '����޸���';
comment on column OA_MEETING_USE_CASE.creation_date
  is '����ʱ��';
comment on column OA_MEETING_USE_CASE.created_by
  is '������';
comment on column OA_MEETING_USE_CASE.last_update_ip
  is '����޸�IP';
comment on column OA_MEETING_USE_CASE.version
  is '�汾';
comment on column OA_MEETING_USE_CASE.attribute_01
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.attribute_02
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.attribute_03
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.attribute_04
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.attribute_05
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.attribute_06
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.attribute_07
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.attribute_08
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.attribute_09
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.attribute_10
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.attribute_11
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.attribute_12
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.attribute_13
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.attribute_14
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.attribute_15
  is '��չ�ֶ�';
comment on column OA_MEETING_USE_CASE.sys_application_id
  is '��Ӧ��ID ֵsession��ȡ';
comment on column OA_MEETING_USE_CASE.org_identity
  is '����������֯id';
comment on column OA_MEETING_USE_CASE.org_id
  is '��֯ID';
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
  
  






