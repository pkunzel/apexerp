prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>unistr('Usu\00E1rios')
,p_alias=>unistr('USU\00C1RIOS')
,p_step_title=>unistr('Usu\00E1rios')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'AGSOUSA4'
,p_last_upd_yyyymmddhh24miss=>'20240209165553'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63105339376298696390)
,p_plug_name=>unistr('Usu\00E1rios')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62607299016293989599)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ERP_USUARIO'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>unistr('Usu\00E1rios')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(63105339497125696390)
,p_name=>unistr('Usu\00E1rios')
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
,p_detail_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:RP:P14_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'AGSOUSA4'
,p_internal_uid=>63105339497125696390
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63105339868635696391)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(62737626307714115332)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63105340245943696392)
,p_db_column_name=>'LOGIN'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Login'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63105340620917696392)
,p_db_column_name=>'NOME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nome'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63105341024703696392)
,p_db_column_name=>'EMAIL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63105341426759696392)
,p_db_column_name=>'ATIVO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Ativo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63105341827514696393)
,p_db_column_name=>'DATA_CRIACAO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Data Criacao'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63105342276946696393)
,p_db_column_name=>'DATA_ATUALIZACAO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Data Atualizacao'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63105342671763696393)
,p_db_column_name=>'CRIADO_POR'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Criado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63105343004872696393)
,p_db_column_name=>'ATUALIZADO_POR'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Atualizado Por'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(63105343456228696394)
,p_db_column_name=>'SENHA'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Senha'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(63105707584624209338)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'631057076'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:LOGIN:NOME:EMAIL:ATIVO:DATA_CRIACAO:DATA_ATUALIZACAO:CRIADO_POR:ATUALIZADO_POR:SENHA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(63105343981830696394)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(63105339376298696390)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62607382055443989633)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Criar usu\00E1rio')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63105344289359696394)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(63105339376298696390)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63105344723017696395)
,p_event_id=>wwv_flow_imp.id(63105344289359696394)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(63105339376298696390)
);
wwv_flow_imp.component_end;
end;
/
