prompt --application/shared_components/logic/application_settings
begin
--   Manifest
--     APPLICATION SETTINGS: 208153
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>58992462908322316485
,p_default_application_id=>208153
,p_default_id_offset=>0
,p_default_owner=>'WKSP_STEFANINITRAINING'
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(62607500586835989754)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(62607497631341989752)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>15506358567523
);
wwv_flow_imp.component_end;
end;
/
