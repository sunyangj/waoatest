ALTER TABLE SYS_JOB MODIFY PROGRAM_ VARCHAR2(4000);

create table MONITOR_ACCESS_KEY
(
  last_update_date DATE,
  creation_date    DATE,
  created_by       VARCHAR2(32),
  version          NUMBER(16),
  last_updated_by  VARCHAR2(32),
  id               VARCHAR2(50) not null,
  last_update_ip   VARCHAR2(32),
  org_identity     VARCHAR2(32),
  applicant        VARCHAR2(200),
  dept             VARCHAR2(200),
  org_name         VARCHAR2(200),
  secret           VARCHAR2(200),
  appcode          VARCHAR2(200),
  appname          VARCHAR2(200),
  purpose          VARCHAR2(4000),
  state            VARCHAR2(50),
  grade            VARCHAR2(50)
)
;
comment on column MONITOR_ACCESS_KEY.last_update_date
  is '最后更新时间';
comment on column MONITOR_ACCESS_KEY.creation_date
  is '创建时间';
comment on column MONITOR_ACCESS_KEY.created_by
  is '创建人ID';
comment on column MONITOR_ACCESS_KEY.version
  is '版本';
comment on column MONITOR_ACCESS_KEY.last_updated_by
  is '最后更新人ID';
comment on column MONITOR_ACCESS_KEY.id
  is 'ID';
comment on column MONITOR_ACCESS_KEY.last_update_ip
  is '创建人IP';
comment on column MONITOR_ACCESS_KEY.org_identity
  is '组织ID';
comment on column MONITOR_ACCESS_KEY.applicant
  is '申请人';
comment on column MONITOR_ACCESS_KEY.dept
  is '申请人所在部门';
comment on column MONITOR_ACCESS_KEY.org_name
  is '申请人所在组织';
comment on column MONITOR_ACCESS_KEY.secret
  is 'Access Key Secret';
comment on column MONITOR_ACCESS_KEY.appcode
  is '应用编码';
comment on column MONITOR_ACCESS_KEY.appname
  is '应用名称';
comment on column MONITOR_ACCESS_KEY.purpose
  is '用途';
comment on column MONITOR_ACCESS_KEY.state
  is '状态';
comment on column MONITOR_ACCESS_KEY.grade
  is '级别';
alter table MONITOR_ACCESS_KEY
  add primary key (ID);

create table MONITOR_API_INFO
(
  id                       VARCHAR2(50) not null,
  business_domain          VARCHAR2(50) not null,
  dept_name                VARCHAR2(50) not null,
  app_name                 VARCHAR2(50) not null,
  app_code                 VARCHAR2(50) not null,
  app_desc                 VARCHAR2(255),
  app_version              VARCHAR2(50),
  service_code             VARCHAR2(50) not null,
  service_desc             VARCHAR2(255),
  api_version              VARCHAR2(50),
  api_name                 VARCHAR2(50) not null,
  api_service_uri          VARCHAR2(50) not null,
  api_desc                 VARCHAR2(255),
  api_request_method       VARCHAR2(50),
  api_request_param        CLOB,
  api_request_header       CLOB,
  api_return_format        VARCHAR2(50),
  api_return_param         CLOB,
  api_error_info           CLOB,
  api_tech_support         VARCHAR2(50),
  api_sample_code          CLOB,
  api_response_sample_code CLOB,
  api_md5                  VARCHAR2(50),
  swagger_md5              VARCHAR2(50),
  sys_id                   VARCHAR2(50),
  secret_level             VARCHAR2(50),
  sys_application_id       VARCHAR2(50),
  created_by               VARCHAR2(50) not null,
  creation_date            DATE not null,
  last_updated_by          VARCHAR2(50) not null,
  last_update_date         DATE not null,
  last_update_ip           VARCHAR2(20) not null,
  version                  NUMBER(16) not null,
  attribute_01             VARCHAR2(255),
  attribute_02             VARCHAR2(255),
  attribute_03             VARCHAR2(255),
  attribute_04             VARCHAR2(255),
  attribute_05             VARCHAR2(255),
  attribute_06             VARCHAR2(255),
  attribute_07             VARCHAR2(255),
  attribute_08             VARCHAR2(255),
  attribute_09             DATE,
  attribute_10             DATE,
  attribute_11             INTEGER,
  attribute_12             INTEGER,
  attribute_13             INTEGER,
  attribute_14             INTEGER,
  attribute_15             INTEGER
)
;
comment on table MONITOR_API_INFO
  is 'API信息';
comment on column MONITOR_API_INFO.business_domain
  is '业务域';
comment on column MONITOR_API_INFO.dept_name
  is '责任部门';
comment on column MONITOR_API_INFO.app_name
  is '应用名称';
comment on column MONITOR_API_INFO.app_code
  is '应用编码';
comment on column MONITOR_API_INFO.app_desc
  is '应用描述';
comment on column MONITOR_API_INFO.app_version
  is '应用版本';
comment on column MONITOR_API_INFO.service_code
  is '服务编码';
comment on column MONITOR_API_INFO.service_desc
  is '服务描述';
comment on column MONITOR_API_INFO.api_version
  is 'API版本';
comment on column MONITOR_API_INFO.api_name
  is 'API名称';
comment on column MONITOR_API_INFO.api_service_uri
  is 'API地址';
comment on column MONITOR_API_INFO.api_desc
  is 'API描述';
comment on column MONITOR_API_INFO.api_request_method
  is 'API请求参数';
comment on column MONITOR_API_INFO.api_request_param
  is 'API请求参数';
comment on column MONITOR_API_INFO.api_request_header
  is 'API请求头';
comment on column MONITOR_API_INFO.api_return_format
  is 'API返回格式';
comment on column MONITOR_API_INFO.api_return_param
  is 'API返回参数';
comment on column MONITOR_API_INFO.api_error_info
  is 'API错误码';
comment on column MONITOR_API_INFO.api_tech_support
  is 'API技术支持';
comment on column MONITOR_API_INFO.api_sample_code
  is '示例代码';
comment on column MONITOR_API_INFO.api_response_sample_code
  is 'API返回示例代码';
comment on column MONITOR_API_INFO.api_md5
  is 'API的md5值，用于判断重复';
comment on column MONITOR_API_INFO.swagger_md5
  is 'swagger的json的md5值，用于判断重复';
comment on column MONITOR_API_INFO.sys_id
  is '系统标识ID';
comment on column MONITOR_API_INFO.secret_level
  is '密级';
comment on column MONITOR_API_INFO.sys_application_id
  is '多应用ID';
comment on column MONITOR_API_INFO.created_by
  is '创建人';
comment on column MONITOR_API_INFO.creation_date
  is '创建时间';
comment on column MONITOR_API_INFO.last_updated_by
  is '最后修改人';
comment on column MONITOR_API_INFO.last_update_date
  is '最后修改时间';
comment on column MONITOR_API_INFO.last_update_ip
  is '最后更新IP';
comment on column MONITOR_API_INFO.version
  is '版本';
comment on column MONITOR_API_INFO.attribute_01
  is '预留字段1';
comment on column MONITOR_API_INFO.attribute_02
  is '预留字段2';
comment on column MONITOR_API_INFO.attribute_03
  is '预留字段3';
comment on column MONITOR_API_INFO.attribute_04
  is '预留字段4';
comment on column MONITOR_API_INFO.attribute_05
  is '预留字段5';
comment on column MONITOR_API_INFO.attribute_06
  is '预留字段6';
comment on column MONITOR_API_INFO.attribute_07
  is '预留字段7';
comment on column MONITOR_API_INFO.attribute_08
  is '预留字段8';
comment on column MONITOR_API_INFO.attribute_09
  is '预留字段9';
comment on column MONITOR_API_INFO.attribute_10
  is '预留字段10';
comment on column MONITOR_API_INFO.attribute_11
  is '预留字段11';
comment on column MONITOR_API_INFO.attribute_12
  is '预留字段12';
comment on column MONITOR_API_INFO.attribute_13
  is '预留字段13';
comment on column MONITOR_API_INFO.attribute_14
  is '预留字段14';
comment on column MONITOR_API_INFO.attribute_15
  is '预留字段15';
alter table MONITOR_API_INFO
  add primary key (ID);

create table MONITOR_LOG
(
  id               VARCHAR2(32) not null,
  application_code VARCHAR2(100),
  application_name VARCHAR2(200),
  application_host VARCHAR2(20),
  application_port NUMBER(5),
  application_desc VARCHAR2(2000),
  service_code     VARCHAR2(100),
  service_protocol VARCHAR2(20),
  service_ip       VARCHAR2(20),
  service_port     NUMBER(5),
  request_path     VARCHAR2(200),
  result           VARCHAR2(10) not null,
  error_info       VARCHAR2(200),
  time_consume     NUMBER(16) not null,
  created_by       VARCHAR2(32) not null,
  creation_date    DATE not null,
  last_updated_by  VARCHAR2(32) not null,
  last_update_date DATE not null,
  last_update_ip   VARCHAR2(20) not null,
  version          NUMBER(16) not null,
  service_version  VARCHAR2(20),
  service_app_code VARCHAR2(100),
  service_app_name VARCHAR2(200),
  service_app_desc VARCHAR2(2000),
  process_time     DATE,
  permission_type  VARCHAR2(10)
)
;
comment on table MONITOR_LOG
  is '监控日志';
comment on column MONITOR_LOG.id
  is '主键';
comment on column MONITOR_LOG.application_code
  is '应用code';
comment on column MONITOR_LOG.application_name
  is '应用名称';
comment on column MONITOR_LOG.application_host
  is '应用IP';
comment on column MONITOR_LOG.application_port
  is '应用端口';
comment on column MONITOR_LOG.application_desc
  is '应用说明';
comment on column MONITOR_LOG.service_code
  is '服务标识';
comment on column MONITOR_LOG.service_protocol
  is '服务节点协议';
comment on column MONITOR_LOG.service_ip
  is '服务Ip';
comment on column MONITOR_LOG.service_port
  is '服务端口';
comment on column MONITOR_LOG.request_path
  is '服务请求路径';
comment on column MONITOR_LOG.result
  is '调用结果';
comment on column MONITOR_LOG.error_info
  is '错误信息';
comment on column MONITOR_LOG.time_consume
  is '耗时';
comment on column MONITOR_LOG.service_version
  is '服务版本';
comment on column MONITOR_LOG.service_app_code
  is '提供者应用code';
comment on column MONITOR_LOG.service_app_name
  is '提供者应用名称';
comment on column MONITOR_LOG.service_app_desc
  is '提供者应用说明';
comment on column MONITOR_LOG.process_time
  is '服务处理时间';
comment on column MONITOR_LOG.permission_type
  is '公有/私有属性';
alter table MONITOR_LOG
  add primary key (ID);

create table MONITOR_ORGANIZATION
(
  id                VARCHAR2(32) not null,
  application_code  VARCHAR2(100),
  application_name  VARCHAR2(200),
  organization      VARCHAR2(200),
  created_by        VARCHAR2(32) not null,
  creation_date     DATE not null,
  last_updated_by   VARCHAR2(32) not null,
  last_update_date  DATE not null,
  last_update_ip    VARCHAR2(20) not null,
  version           NUMBER(16) not null,
  order_index       NUMBER(4),
  organization_code VARCHAR2(100),
  organization_name VARCHAR2(200),
  parent_id         VARCHAR2(32)
)
;
comment on table MONITOR_ORGANIZATION
  is '业务域';
comment on column MONITOR_ORGANIZATION.id
  is '主键';
comment on column MONITOR_ORGANIZATION.application_code
  is '应用code';
comment on column MONITOR_ORGANIZATION.application_name
  is '应用名称';
comment on column MONITOR_ORGANIZATION.organization
  is '所属业务域';
comment on column MONITOR_ORGANIZATION.order_index
  is '排序标识';
comment on column MONITOR_ORGANIZATION.organization_code
  is '业务域编码';
comment on column MONITOR_ORGANIZATION.organization_name
  is '业务域名称';
comment on column MONITOR_ORGANIZATION.parent_id
  is '父节点id';
alter table MONITOR_ORGANIZATION
  add primary key (ID);

create table MONITOR_SERVICE_AUTHORIZATION
(
  last_update_date DATE,
  creation_date    DATE,
  created_by       VARCHAR2(32),
  version          NUMBER(16),
  last_updated_by  VARCHAR2(32),
  id               VARCHAR2(50) not null,
  last_update_ip   VARCHAR2(32),
  org_identity     VARCHAR2(32),
  customer_appname VARCHAR2(200),
  customer_appcode VARCHAR2(200),
  provider_appname VARCHAR2(200),
  provider_appcode VARCHAR2(200),
  state            VARCHAR2(50)
)
;
comment on column MONITOR_SERVICE_AUTHORIZATION.last_update_date
  is '最后更新时间';
comment on column MONITOR_SERVICE_AUTHORIZATION.creation_date
  is '创建时间';
comment on column MONITOR_SERVICE_AUTHORIZATION.created_by
  is '创建人ID';
comment on column MONITOR_SERVICE_AUTHORIZATION.version
  is '版本';
comment on column MONITOR_SERVICE_AUTHORIZATION.last_updated_by
  is '最后更新人ID';
comment on column MONITOR_SERVICE_AUTHORIZATION.id
  is 'ID';
comment on column MONITOR_SERVICE_AUTHORIZATION.last_update_ip
  is '创建人IP';
comment on column MONITOR_SERVICE_AUTHORIZATION.org_identity
  is '组织ID';
comment on column MONITOR_SERVICE_AUTHORIZATION.customer_appname
  is '申请者应用名称';
comment on column MONITOR_SERVICE_AUTHORIZATION.customer_appcode
  is '申请者应用编码';
comment on column MONITOR_SERVICE_AUTHORIZATION.provider_appname
  is '提供者应用名称';
comment on column MONITOR_SERVICE_AUTHORIZATION.provider_appcode
  is '提供者应用编码';
comment on column MONITOR_SERVICE_AUTHORIZATION.state
  is '授权状态';
alter table MONITOR_SERVICE_AUTHORIZATION
  add primary key (ID);

insert into MONITOR_ACCESS_KEY (last_update_date, creation_date, created_by, version, last_updated_by, id, last_update_ip, org_identity, applicant, dept, org_name, secret, appcode, appname, purpose, state, grade)
values (to_date('31-10-2018', 'dd-mm-yyyy'), to_date('31-10-2018', 'dd-mm-yyyy'), 'system', 1, 'system', '3', '1.1.1.1', null, 'system', null, null, 'OGE1OGNjOWU2NmM4OTJhODAxNjZjODk0ODExYTAxN2I=', 'platform-eform', '电子表单', null, '1', '1');
insert into MONITOR_ACCESS_KEY (last_update_date, creation_date, created_by, version, last_updated_by, id, last_update_ip, org_identity, applicant, dept, org_name, secret, appcode, appname, purpose, state, grade)
values (to_date('31-10-2018', 'dd-mm-yyyy'), to_date('31-10-2018', 'dd-mm-yyyy'), 'system', 1, 'system', '4', '1.1.1.1', null, 'system', null, null, 'OGE1OGNjOWU2NmM4OTJhODAxNjZjODk0ZDFlMjAxN2U=', 'platform-web', 'web应用', null, '1', '1');
insert into MONITOR_ACCESS_KEY (last_update_date, creation_date, created_by, version, last_updated_by, id, last_update_ip, org_identity, applicant, dept, org_name, secret, appcode, appname, purpose, state, grade)
values (to_date('31-10-2018', 'dd-mm-yyyy'), to_date('31-10-2018', 'dd-mm-yyyy'), 'system', 1, 'system', '1', '1.1.1.1', null, 'system', null, null, 'OGE1OGNjOWU2NmM4OTJhODAxNjZjODk0YzM0NjAxN2Q=', 'platform-msystem', '系统管理', null, '1', '1');
insert into MONITOR_ACCESS_KEY (last_update_date, creation_date, created_by, version, last_updated_by, id, last_update_ip, org_identity, applicant, dept, org_name, secret, appcode, appname, purpose, state, grade)
values (to_date('31-10-2018', 'dd-mm-yyyy'), to_date('31-10-2018', 'dd-mm-yyyy'), 'system', 1, 'system', '2', '1.1.1.1', null, 'system', null, null, 'OGE1OGNjOWU2NmM4OTJhODAxNjZjODk0YjYxNDAxN2M=', 'platform-bpm', '流程', null, '1', '1');
commit;
