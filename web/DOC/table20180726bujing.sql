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

insert into SYS_LOOKUP (id, sys_lookup_type_id, display_order, lookup_code, valid_flag, system_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58c6ef643f258901643fdad9770104', '8a58c6ef643f258901643fd85ade00ec', 1, '1', '1', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP (id, sys_lookup_type_id, display_order, lookup_code, valid_flag, system_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58c6ef643f258901643fdad95200fe', '8a58c6ef643f258901643fd85ade00ec', 2, '2', '1', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP (id, sys_lookup_type_id, display_order, lookup_code, valid_flag, system_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58c6ef643f258901643fdad92800f8', '8a58c6ef643f258901643fd85ade00ec', 3, '3', '1', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP (id, sys_lookup_type_id, display_order, lookup_code, valid_flag, system_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58c6ef643f258901643fdad83900f2', '8a58c6ef643f258901643fd85ade00ec', 4, '4', '1', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into SYS_LOOKUP_TYPE (id, sys_application_id, lookup_type, system_flag, valid_flag, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version, belong_module, usage_modifier)
values ('8a58c6ef643f258901643fd85ade00ec', '1', 'PLATFORM_SECRET_SCOPE', null, '1', to_date('30-05-2018 22:44:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:44:15', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0, null, '1');

insert into SYS_LOOKUP_TL (id, sys_lookup_id, sys_language_code, lookup_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58c6ef643f258901643fdad9790106', '8a58c6ef643f258901643fdad9770104', 'zh_CN', '1', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP_TL (id, sys_lookup_id, sys_language_code, lookup_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58c6ef643f258901643fdad9540100', '8a58c6ef643f258901643fdad95200fe', 'zh_CN', '1','2', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP_TL (id, sys_lookup_id, sys_language_code, lookup_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58c6ef643f258901643fdad92b00fa', '8a58c6ef643f258901643fdad92800f8', 'zh_CN', '1','2','3', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);
insert into SYS_LOOKUP_TL (id, sys_lookup_id, sys_language_code, lookup_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58c6ef643f258901643fdad84400f4', '8a58c6ef643f258901643fdad83900f2', 'zh_CN', '1','2','3','4', null, to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:54:07', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);

insert into SYS_LOOKUP_TYPE_TL (id, sys_lookup_type_id, sys_language_code, lookup_type_name, description, last_update_date, last_updated_by, creation_date, created_by, last_update_ip, version)
values ('8a58c6ef643f258901643fd85aea00ee', '8a58c6ef643f258901643fd85ade00ec', 'zh_CN', '行数据权限密级范围', '当前用户的密级所对应的密级范围', to_date('30-05-2018 22:44:15', 'dd-mm-yyyy hh24:mi:ss'), '1', to_date('30-05-2018 22:44:15', 'dd-mm-yyyy hh24:mi:ss'), '1', '0:0:0:0:0:0:0:1', 0);


CREATE OR REPLACE PACKAGE ROW_DATA_AUTHORIZATION IS

   PROCEDURE GET_USER_AREA(USERID IN VARCHAR2,MAPPER_NAME IN VARCHAR2,USER_CUSTOM OUT VARCHAR2,SECRET_LEVEL OUT VARCHAR2,USERS_COUNT OUT VARCHAR2);

END ROW_DATA_AUTHORIZATION;
/
CREATE OR REPLACE PACKAGE BODY ROW_DATA_AUTHORIZATION IS

   PROCEDURE GET_USER_AREA(USERID IN VARCHAR2,MAPPER_NAME IN VARCHAR2,USER_CUSTOM OUT VARCHAR2,SECRET_LEVEL OUT VARCHAR2,USERS_COUNT OUT VARCHAR2) IS

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
           SELECT COUNT(*) INTO USERS_COUNT FROM TEMP_USER;
        END IF;
    END IF;
END GET_USER_AREA;
END ROW_DATA_AUTHORIZATION;