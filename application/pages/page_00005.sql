prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>58992462908322316485
,p_default_application_id=>208153
,p_default_id_offset=>0
,p_default_owner=>'WKSP_STEFANINITRAINING'
);
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Tipo Contato'
,p_alias=>'TIPO-CONTATO1'
,p_step_title=>'Tipo Contato'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'ARNETO'
,p_last_upd_yyyymmddhh24miss=>'20240208192423'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62726482664585502347)
,p_plug_name=>'Tipo Contato'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62607299016293989599)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ERP_TIPO_CONTATO'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Tipo Contato'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(62726482702738502347)
,p_name=>'Tipo Contato'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:RP:P6_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ARNETO'
,p_internal_uid=>62726482702738502347
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(62726483293565502347)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(62726483659292502348)
,p_db_column_name=>'DESCRICAO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('Descri\00E7\00E3o')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(62726484081604502348)
,p_db_column_name=>'DATA_CRIACAO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('Data Cria\00E7\00E3o')
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(62726484773949502349)
,p_db_column_name=>'CRIADO_POR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Criado Por'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(62726484457134502349)
,p_db_column_name=>'DATA_ATUALIZACAO'
,p_display_order=>15
,p_column_identifier=>'D'
,p_column_label=>'Data Atualizacao'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(62726485179127502349)
,p_db_column_name=>'ATUALIZADO_POR'
,p_display_order=>25
,p_column_identifier=>'F'
,p_column_label=>'Atualizado Por'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(62729638205126016089)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'627296383'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:DESCRICAO:DATA_CRIACAO:DATA_ATUALIZACAO:CRIADO_POR:ATUALIZADO_POR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62726487211476502350)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62607321237676989608)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(62607204820972989557)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(62607383652423989634)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62726485673651502349)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(62726482664585502347)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62607382055443989633)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Criar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(62726485904518502349)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(62726482664585502347)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(62726486431180502350)
,p_event_id=>wwv_flow_imp.id(62726485904518502349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(62726482664585502347)
);
wwv_flow_imp.component_end;
end;
/
