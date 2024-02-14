prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 208153
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>58992462908322316485
,p_default_application_id=>208153
,p_default_id_offset=>0
,p_default_owner=>'WKSP_STEFANINITRAINING'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(62607500881548989754)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
