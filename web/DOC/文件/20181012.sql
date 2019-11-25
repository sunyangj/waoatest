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
 where t.publish_status = '1' and t.enabled = 'Y'
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
