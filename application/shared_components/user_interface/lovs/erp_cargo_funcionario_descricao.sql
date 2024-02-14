prompt --application/shared_components/user_interface/lovs/erp_cargo_funcionario_descricao
begin
--   Manifest
--     ERP_CARGO_FUNCIONARIO.DESCRICAO
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
 p_id=>wwv_flow_imp.id(62737636689153115342)
,p_lov_name=>'ERP_CARGO_FUNCIONARIO.DESCRICAO'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ERP_CARGO_FUNCIONARIO'
,p_return_column_name=>'ID'
,p_display_column_name=>'DESCRICAO'
,p_default_sort_column_name=>'DESCRICAO'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
