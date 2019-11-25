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
  process_time     DATE
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
alter table MONITOR_LOG
  add constraint PK_MONITOR_LOG primary key (ID);
