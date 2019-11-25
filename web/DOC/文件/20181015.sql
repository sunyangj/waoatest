-- Create table
create table EXT_AUTOCODE_DEPT_RELATION
(
  id               VARCHAR2(50) not null,
  dept_id          VARCHAR2(255),
  sys_lookup_code  VARCHAR2(255),
  value            VARCHAR2(255),
  created_by       VARCHAR2(50),
  creation_date    DATE,
  last_updated_by  VARCHAR2(50),
  last_update_date DATE,
  last_update_ip   VARCHAR2(50),
  version          NUMBER(16),
  org_identity     VARCHAR2(32),
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
  attribute_11     NUMBER(32),
  attribute_12     NUMBER(32),
  attribute_13     NUMBER(32),
  attribute_14     DATE,
  attribute_15     DATE,
  attribute_16     DATE,
  dept_name        VARCHAR2(255),
  sys_lookup_name  VARCHAR2(255),
  sys_lookup_id    VARCHAR2(255)
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
-- Add comments to the columns 
comment on column EXT_AUTOCODE_DEPT_RELATION.dept_id
  is '部门id';
comment on column EXT_AUTOCODE_DEPT_RELATION.sys_lookup_code
  is '通用代码类型';
comment on column EXT_AUTOCODE_DEPT_RELATION.value
  is '所分配的通用代码值';
comment on column EXT_AUTOCODE_DEPT_RELATION.dept_name
  is '部门名称';
comment on column EXT_AUTOCODE_DEPT_RELATION.sys_lookup_name
  is '通用代码名称';
comment on column EXT_AUTOCODE_DEPT_RELATION.sys_lookup_id
  is '通用代码类型id';
-- Create/Recreate primary, unique and foreign key constraints 
alter table EXT_AUTOCODE_DEPT_RELATION
  add constraint PK_EXT_AUTOCODE_DEPT_RELATION primary key (ID)
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
