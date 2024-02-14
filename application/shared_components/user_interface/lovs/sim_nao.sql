prompt --application/shared_components/user_interface/lovs/sim_nao
begin
--   Manifest
--     SIM_NAO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>58992462908322316485
,p_default_application_id=>208153
,p_default_id_offset=>0
,p_default_owner=>'WKSP_STEFANINITRAINING'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(63226980631925005549)
,p_lov_name=>'SIM_NAO'
,p_lov_query=>'.'||wwv_flow_imp.id(63226980631925005549)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63226980963502005550)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('N\00E3o')
,p_lov_return_value=>'N'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(63226981388910005551)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Sim'
,p_lov_return_value=>'Y'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64223925799794347677)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Sim'
,p_lov_return_value=>'S'
);
wwv_flow_imp.component_end;
end;
/
