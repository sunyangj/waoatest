alter table SYS_THEMES_SKINS_PORTLET modify(PORTLET_NAME varchar(255));
alter table SYS_THEMES_SKINS_PORTLET modify(PORTLET_CODE varchar(255));

drop table SYS_PASSWORD_CONFIGURE cascade constraints;
drop table SYS_PASSWORD_TEMPLET cascade constraints;
drop table SYS_PASSWORD_TEMPLET_LEVEL cascade constraints;

create table SYS_PASSWORD_CONFIGURE
(
  id                 VARCHAR2(50) not null,
  sys_application_id VARCHAR2(50),
  configure_key      VARCHAR2(50),
  configure_name     VARCHAR2(100),
  last_update_date   DATE not null,
  last_updated_by    VARCHAR2(50) not null,
  creation_date      DATE not null,
  created_by         VARCHAR2(50) not null,
  last_update_ip     VARCHAR2(50) not null,
  version            NUMBER(16) not null
)
;
comment on table SYS_PASSWORD_CONFIGURE
  is '密码规则表';
comment on column SYS_PASSWORD_CONFIGURE.id
  is '主键';
comment on column SYS_PASSWORD_CONFIGURE.sys_application_id
  is '应用id';
comment on column SYS_PASSWORD_CONFIGURE.configure_key
  is '密码规则代码';
comment on column SYS_PASSWORD_CONFIGURE.configure_name
  is '密码规则中文名称';
comment on column SYS_PASSWORD_CONFIGURE.last_update_date
  is '最后修改时间';
comment on column SYS_PASSWORD_CONFIGURE.last_updated_by
  is '最后修改人';
comment on column SYS_PASSWORD_CONFIGURE.creation_date
  is '创建时间';
comment on column SYS_PASSWORD_CONFIGURE.created_by
  is '创建人';
comment on column SYS_PASSWORD_CONFIGURE.last_update_ip
  is '修改IP';
comment on column SYS_PASSWORD_CONFIGURE.version
  is '版本';
alter table SYS_PASSWORD_CONFIGURE
  add constraint PK_SYS_PASSWORD_CONFIGURE primary key (ID);

create table SYS_PASSWORD_TEMPLET
(
  id               VARCHAR2(50) not null,
  templet_key      VARCHAR2(50),
  templet_value    VARCHAR2(100),
  templet_state    VARCHAR2(1),
  templet_type     VARCHAR2(50),
  last_update_date DATE not null,
  last_updated_by  VARCHAR2(50) not null,
  creation_date    DATE not null,
  created_by       VARCHAR2(50) not null,
  last_update_ip   VARCHAR2(50) not null,
  version          NUMBER(16) not null
)
;
comment on table SYS_PASSWORD_TEMPLET
  is '密码模板配置表';
comment on column SYS_PASSWORD_TEMPLET.id
  is '唯一标识';
comment on column SYS_PASSWORD_TEMPLET.templet_key
  is '密码规则KEY';
comment on column SYS_PASSWORD_TEMPLET.templet_value
  is '密码规则值';
comment on column SYS_PASSWORD_TEMPLET.templet_state
  is '是否有效
1有效，0无效， 默认1';
comment on column SYS_PASSWORD_TEMPLET.templet_type
  is '密码模板类型（级别）';
comment on column SYS_PASSWORD_TEMPLET.last_update_date
  is '最后修改时间';
comment on column SYS_PASSWORD_TEMPLET.last_updated_by
  is '最后修改人';
comment on column SYS_PASSWORD_TEMPLET.creation_date
  is '创建时间';
comment on column SYS_PASSWORD_TEMPLET.created_by
  is '创建人';
comment on column SYS_PASSWORD_TEMPLET.last_update_ip
  is '修改IP';
comment on column SYS_PASSWORD_TEMPLET.version
  is '版本';
alter table SYS_PASSWORD_TEMPLET
  add constraint PK_SYS_PASSWORD_TEMPLET primary key (ID);

create table SYS_PASSWORD_TEMPLET_LEVEL
(
  id                 VARCHAR2(50) not null,
  sys_application_id VARCHAR2(50),
  key                VARCHAR2(100),
  code               VARCHAR2(100),
  user_level_code    VARCHAR2(50),
  last_update_date   DATE not null,
  last_updated_by    VARCHAR2(50) not null,
  creation_date      DATE not null,
  created_by         VARCHAR2(50) not null,
  last_update_ip     VARCHAR2(50) not null,
  version            NUMBER(16) not null
)
;
comment on table SYS_PASSWORD_TEMPLET_LEVEL
  is '密码模板表';
comment on column SYS_PASSWORD_TEMPLET_LEVEL.id
  is '唯一标识';
comment on column SYS_PASSWORD_TEMPLET_LEVEL.sys_application_id
  is '应用ID';
comment on column SYS_PASSWORD_TEMPLET_LEVEL.key
  is '模板名称';
comment on column SYS_PASSWORD_TEMPLET_LEVEL.code
  is '模板编码';
comment on column SYS_PASSWORD_TEMPLET_LEVEL.user_level_code
  is '人员密级
关联数据字典';
comment on column SYS_PASSWORD_TEMPLET_LEVEL.last_update_date
  is '最后修改时间';
comment on column SYS_PASSWORD_TEMPLET_LEVEL.last_updated_by
  is '最后修改人';
comment on column SYS_PASSWORD_TEMPLET_LEVEL.creation_date
  is '创建时间';
comment on column SYS_PASSWORD_TEMPLET_LEVEL.created_by
  is '创建人';
comment on column SYS_PASSWORD_TEMPLET_LEVEL.last_update_ip
  is '修改IP';
comment on column SYS_PASSWORD_TEMPLET_LEVEL.version
  is '版本';
alter table SYS_PASSWORD_TEMPLET_LEVEL
  add constraint PK_SYS_PASSWORD_TEMPLET_LEVEL primary key (ID);

insert into SYS_PASSWORD_CONFIGURE (id, sys_application_id, configure_key, configure_name, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('4028009e2238eb61012238f231c60003', null, 'difference', '密码差异度', to_date('19-10-2011 16:27:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('02-07-2009', 'dd-mm-yyyy'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_PASSWORD_CONFIGURE (id, sys_application_id, configure_key, configure_name, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402800b1222ec7ca01222eca77bf0001', null, 'maxlength', '密码最大长度', to_date('17-12-2010 15:49:37', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-06-2009', 'dd-mm-yyyy'), '1', '192.168.12.37', 0);
insert into SYS_PASSWORD_CONFIGURE (id, sys_application_id, configure_key, configure_name, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402800b1222ec7ca01222ed2f5450003', null, 'minlength', '密码最小长度', to_date('17-12-2010 15:49:33', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-06-2009', 'dd-mm-yyyy'), '1', '192.168.12.37', 0);
insert into SYS_PASSWORD_CONFIGURE (id, sys_application_id, configure_key, configure_name, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('4028009e2238eb61012238f7e6e5000b', null, 'howLongModify', '密码多少天需要修改一次', to_date('25-05-2012 09:29:54', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('02-07-2009', 'dd-mm-yyyy'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_PASSWORD_CONFIGURE (id, sys_application_id, configure_key, configure_name, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('4028009e2238eb61012238fe7712000f', null, 'modifyDefault', '默认密码几天修改', to_date('17-12-2010 15:49:45', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('02-07-2009', 'dd-mm-yyyy'), '1', '192.168.12.37', 0);
insert into SYS_PASSWORD_CONFIGURE (id, sys_application_id, configure_key, configure_name, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('4028009e2238eb610122390c9729001a', null, 'howTimeLock', '用户登录错误几次密码锁定', to_date('10-11-2011 15:56:57', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('02-07-2009', 'dd-mm-yyyy'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_PASSWORD_CONFIGURE (id, sys_application_id, configure_key, configure_name, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('4028009e2238eb61012238f099d10001', null, 'intensity', '密码强度（最高为4级，最低为1级）', to_date('17-12-2010 15:49:51', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('02-07-2009', 'dd-mm-yyyy'), '1', '192.168.12.37', 0);
insert into SYS_PASSWORD_CONFIGURE (id, sys_application_id, configure_key, configure_name, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('4028009e2238eb61012238f623f80009', null, 'distinctBefore', '密码不能和以前多少次密码重复', to_date('17-12-2010 15:49:55', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('02-07-2009', 'dd-mm-yyyy'), '1', '192.168.12.37', 0);
insert into SYS_PASSWORD_CONFIGURE (id, sys_application_id, configure_key, configure_name, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('4028009e2238eb61012238fca281000d', null, 'tipBeforeTime', '密码到期多少天前提示', to_date('17-12-2010 15:50:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('02-07-2009', 'dd-mm-yyyy'), '1', '192.168.12.37', 0);
insert into SYS_PASSWORD_CONFIGURE (id, sys_application_id, configure_key, configure_name, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('4028009e224e910201224ea9ca7d0005', null, 'howLongLimitToLock', '用户多少小时内登录失败限制', to_date('10-11-2011 16:29:11', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('06-07-2009', 'dd-mm-yyyy'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_PASSWORD_CONFIGURE (id, sys_application_id, configure_key, configure_name, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('-23456789', null, 'firstLogin', '首次登录修改密码(0-修改,1-不修改)', to_date('15-09-2015 23:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015', 'dd-mm-yyyy'), '1', '127.0.0.1', 0);
commit;

insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca39718e0214', 'intensity', '2', '1', '402809814fc9e8a5014fca39717b020d', to_date('17-09-2015 11:22:10', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:00:06', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca39718f0215', 'distinctBefore', '1', '1', '402809814fc9e8a5014fca39717b020d', to_date('28-09-2015 15:56:13', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:00:06', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3971910216', 'tipBeforeTime', '7', '1', '402809814fc9e8a5014fca39717b020d', to_date('28-09-2015 15:56:13', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:00:06', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3971930217', 'howLongLimitToLock', '2', '1', '402809814fc9e8a5014fca39717b020d', to_date('17-09-2015 11:22:11', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:00:06', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3971940218', 'firstLogin', '0', '1', '402809814fc9e8a5014fca39717b020d', to_date('17-09-2015 11:22:11', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:00:06', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca397185020e', 'difference', '1', '1', '402809814fc9e8a5014fca39717b020d', to_date('17-09-2015 11:22:11', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:00:06', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca397187020f', 'maxlength', '8', '1', '402809814fc9e8a5014fca39717b020d', to_date('17-09-2015 11:22:11', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:00:06', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3971890210', 'minlength', '5', '1', '402809814fc9e8a5014fca39717b020d', to_date('17-09-2015 11:22:11', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:00:06', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca39718a0211', 'howLongModify', '90', '1', '402809814fc9e8a5014fca39717b020d', to_date('28-09-2015 15:56:13', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:00:06', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca39718b0212', 'modifyDefault', '7', '0', '402809814fc9e8a5014fca39717b020d', to_date('07-09-2018 09:14:12', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:00:06', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 3);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca39718d0213', 'howTimeLock', '5', '1', '402809814fc9e8a5014fca39717b020d', to_date('28-09-2015 15:56:13', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:00:06', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3f57e6022a', 'difference', '1', '1', '402809814fc9e8a5014fca3f57dd0229', to_date('17-09-2015 11:16:34', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:06:33', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3f57e8022b', 'maxlength', '8', '1', '402809814fc9e8a5014fca3f57dd0229', to_date('17-09-2015 11:16:34', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:06:33', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3f57ea022c', 'minlength', '8', '1', '402809814fc9e8a5014fca3f57dd0229', to_date('17-09-2015 11:21:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:06:33', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3f57eb022d', 'howLongModify', '30', '1', '402809814fc9e8a5014fca3f57dd0229', to_date('28-09-2015 15:58:43', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:06:33', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 7);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3f57ec022e', 'modifyDefault', '7', '0', '402809814fc9e8a5014fca3f57dd0229', to_date('07-09-2018 09:13:58', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:06:33', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 8);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3f57ef022f', 'howTimeLock', '3', '1', '402809814fc9e8a5014fca3f57dd0229', to_date('16-09-2015 14:19:32', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:06:33', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3f57f20230', 'intensity', '4', '1', '402809814fc9e8a5014fca3f57dd0229', to_date('28-09-2015 15:58:43', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:06:33', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3f57f40231', 'distinctBefore', '3', '1', '402809814fc9e8a5014fca3f57dd0229', to_date('28-09-2015 15:58:43', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:06:33', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 3);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3f57f60232', 'tipBeforeTime', '7', '1', '402809814fc9e8a5014fca3f57dd0229', to_date('28-09-2015 15:58:43', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:06:33', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 3);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3f57f80233', 'howLongLimitToLock', '6', '1', '402809814fc9e8a5014fca3f57dd0229', to_date('28-09-2015 15:58:43', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:06:33', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 3);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3f57fa0234', 'firstLogin', '0', '1', '402809814fc9e8a5014fca3f57dd0229', to_date('16-09-2015 11:16:17', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:06:33', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca401fcf0238', 'difference', '1', '0', '402809814fc9e8a5014fca401fc40237', to_date('16-09-2015 16:11:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:07:24', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca401fd10239', 'maxlength', '8', '0', '402809814fc9e8a5014fca401fc40237', to_date('16-09-2015 16:11:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:07:24', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca401fd2023a', 'minlength', '3', '0', '402809814fc9e8a5014fca401fc40237', to_date('16-09-2015 16:11:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:07:24', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca401fd4023b', 'howLongModify', '3', '0', '402809814fc9e8a5014fca401fc40237', to_date('16-09-2015 16:11:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:07:24', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca401fd6023c', 'modifyDefault', '3', '0', '402809814fc9e8a5014fca401fc40237', to_date('16-09-2015 16:11:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:07:24', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca401fd8023d', 'howTimeLock', '8', '0', '402809814fc9e8a5014fca401fc40237', to_date('06-09-2018 17:15:17', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:07:24', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 4);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca401fda023e', 'intensity', '4', '0', '402809814fc9e8a5014fca401fc40237', to_date('16-09-2015 16:11:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:07:24', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca401fdc023f', 'distinctBefore', '2', '0', '402809814fc9e8a5014fca401fc40237', to_date('16-09-2015 16:11:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:07:24', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca401fdd0240', 'tipBeforeTime', '2', '0', '402809814fc9e8a5014fca401fc40237', to_date('16-09-2015 16:11:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:07:24', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca401fde0241', 'howLongLimitToLock', '2', '0', '402809814fc9e8a5014fca401fc40237', to_date('06-09-2018 17:15:17', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:07:24', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 4);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca401fe00242', 'firstLogin', '1', '0', '402809814fc9e8a5014fca401fc40237', to_date('16-09-2015 16:11:30', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:07:24', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 4);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3acd7a021c', 'difference', '2', '1', '402809814fc9e8a5014fca3acd70021b', to_date('17-09-2015 11:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:01:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3acd7c021d', 'maxlength', '8', '1', '402809814fc9e8a5014fca3acd70021b', to_date('17-09-2015 11:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:01:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3acd7e021e', 'minlength', '6', '1', '402809814fc9e8a5014fca3acd70021b', to_date('17-09-2015 11:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:01:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3acd7f021f', 'howLongModify', '4', '1', '402809814fc9e8a5014fca3acd70021b', to_date('17-09-2015 11:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:01:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3acd800220', 'modifyDefault', '60', '0', '402809814fc9e8a5014fca3acd70021b', to_date('07-09-2018 09:14:27', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:01:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 3);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3acd820221', 'howTimeLock', '4', '1', '402809814fc9e8a5014fca3acd70021b', to_date('28-09-2015 15:57:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:01:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3acd830222', 'intensity', '3', '1', '402809814fc9e8a5014fca3acd70021b', to_date('17-09-2015 11:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:01:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3acd850223', 'distinctBefore', '2', '1', '402809814fc9e8a5014fca3acd70021b', to_date('28-09-2015 15:57:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:01:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3acd870224', 'tipBeforeTime', '7', '1', '402809814fc9e8a5014fca3acd70021b', to_date('28-09-2015 15:57:35', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:01:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '127.0.0.1', 2);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3acd8a0225', 'howLongLimitToLock', '4', '1', '402809814fc9e8a5014fca3acd70021b', to_date('17-09-2015 11:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:01:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
insert into SYS_PASSWORD_TEMPLET (id, templet_key, templet_value, templet_state, templet_type, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3acd8c0226', 'firstLogin', '0', '1', '402809814fc9e8a5014fca3acd70021b', to_date('17-09-2015 11:17:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:01:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '10.216.77.215', 1);
commit;

insert into SYS_PASSWORD_TEMPLET_LEVEL (id, sys_application_id, key, code, user_level_code, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca39717b020d', '1', '一般涉密人员', 'secret_level_2', '2', to_date('07-09-2018 09:11:19', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:00:06', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 1);
insert into SYS_PASSWORD_TEMPLET_LEVEL (id, sys_application_id, key, code, user_level_code, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3f57dd0229', '1', '核心涉密人员', 'secret_level_4', '4', to_date('07-09-2018 09:11:40', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:06:33', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 4);
insert into SYS_PASSWORD_TEMPLET_LEVEL (id, sys_application_id, key, code, user_level_code, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca401fc40237', '1', '非涉密人员', 'secret_level_1', '1', to_date('07-09-2018 09:10:53', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:07:24', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 1);
insert into SYS_PASSWORD_TEMPLET_LEVEL (id, sys_application_id, key, code, user_level_code, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('402809814fc9e8a5014fca3acd70021b', '1', '重点涉密人员', 'secret_level_3', '3', to_date('07-09-2018 09:11:32', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('14-09-2015 13:01:35', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 2);
commit;
