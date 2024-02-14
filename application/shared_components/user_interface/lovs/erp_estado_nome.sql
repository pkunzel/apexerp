prompt --application/shared_components/user_interface/lovs/erp_estado_nome
begin
--   Manifest
--     ERP_ESTADO.NOME
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
 p_id=>wwv_flow_imp.id(63194535259245890008)
,p_lov_name=>'ERP_ESTADO.NOME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ERP_ESTADO'
,p_return_column_name=>'ID'
,p_display_column_name=>'NOME'
,p_default_sort_column_name=>'NOME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
