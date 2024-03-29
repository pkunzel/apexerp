prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_name=>'Cadastro de Filiais'
,p_alias=>'CADASTRO-DE-FILIAIS'
,p_page_mode=>'MODAL'
,p_step_title=>'Cadastro de Filiais'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'MJSILVA'
,p_last_upd_yyyymmddhh24miss=>'20240213133726'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63194524367316890000)
,p_plug_name=>'Cadastro de Filiais'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62607242239143989576)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ERP_FILIAL'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63194530206486890004)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62607245031339989577)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(63194530671621890005)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(63194530206486890004)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62607382055443989633)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42360816587745512335)
,p_button_sequence=>15
,p_button_plug_id=>wwv_flow_imp.id(63194530206486890004)
,p_button_name=>'ATIVAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(62607382055443989633)
,p_button_image_alt=>'Ativar'
,p_button_position=>'CLOSE'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(42360816731519512337)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(63194530206486890004)
,p_button_name=>'DESATIVAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(62607382055443989633)
,p_button_image_alt=>'Desativar'
,p_button_position=>'CLOSE'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(63194532405630890006)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(63194530206486890004)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62607382055443989633)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(63194532892762890006)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(63194530206486890004)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62607382055443989633)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Criar'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63194524608987890000)
,p_name=>'P21_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_item_source_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(62607379520013989632)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63194525066861890001)
,p_name=>'P21_NOME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_item_source_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nome'
,p_source=>'NOME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(62607380865936989632)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63194525440129890001)
,p_name=>'P21_CNPJ'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_item_source_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_prompt=>'CNPJ'
,p_source=>'CNPJ'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>14
,p_tag_attributes=>'data-mask="00.000.000/0000-00"'
,p_field_template=>wwv_flow_imp.id(62607380865936989632)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63194525855460890001)
,p_name=>'P21_ATIVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_item_source_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_item_default=>'Y'
,p_source=>'ATIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63194526229175890002)
,p_name=>'P21_DATA_CRIACAO'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_item_source_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_source=>'DATA_CRIACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63194526621680890002)
,p_name=>'P21_DATA_ATUALIZACAO'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_item_source_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_source=>'DATA_ATUALIZACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63194527065188890002)
,p_name=>'P21_CRIADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_item_source_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_source=>'CRIADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63194527494307890003)
,p_name=>'P21_ATUALIZADO_POR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_item_source_plug_id=>wwv_flow_imp.id(63194524367316890000)
,p_source=>'ATUALIZADO_POR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(48300550689538139631)
,p_computation_sequence=>10
,p_computation_item=>'P21_CNPJ'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'REGEXP_REPLACE(:P21_CNPJ, ''[^0-9]'', '''')'
,p_computation_comment=>'Retira a mascara do CNPJ'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(48300550330626139628)
,p_validation_name=>'Validar CNPJ'
,p_validation_sequence=>10
,p_validation=>'pkg_utils.fcn_valida_cnpj(:P21_CNPJ)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Esse CNPJ \00E9 Inv\00E1lido')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(42360814872729512318)
,p_validation_name=>'Validation Create CNPJ'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM ERP_FILIAL',
'WHERE CNPJ = :P21_CNPJ'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Essa CNPJ j\00E1 est\00E1 cadastrada no sistema.')
,p_when_button_pressed=>wwv_flow_imp.id(63194532892762890006)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(42360817149481512341)
,p_validation_name=>'Validation Update CNPJ'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM ERP_FILIAL',
'WHERE cnpj = :P21_CNPJ',
'AND :P21_CNPJ != (SELECT cnpj FROM ERP_FILIAL WHERE ID = :P21_CNPJ);'))
,p_validation_type=>'EXISTS'
,p_error_message=>unistr('Voc\00EA n\00E3o pode alterar um CNPJ ou Entidade cadastrado!')
,p_when_button_pressed=>wwv_flow_imp.id(63194532405630890006)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(42360817433306512344)
,p_validation_name=>'Validation Create Nome'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM ERP_FILIAL',
'WHERE NOME = :P21_NOME'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Essa entidade j\00E1 est\00E1 cadastrada no sistema.')
,p_when_button_pressed=>wwv_flow_imp.id(63194532892762890006)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63194530784530890005)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(63194530671621890005)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63194531599822890005)
,p_event_id=>wwv_flow_imp.id(63194530784530890005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63099027748537596915)
,p_name=>'Alterar visibilidade'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(63194524367316890000)
,p_condition_element=>'P21_ATIVO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63099027873144596916)
,p_event_id=>wwv_flow_imp.id(63099027748537596915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(42360816587745512335)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63099028096897596918)
,p_event_id=>wwv_flow_imp.id(63099027748537596915)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(42360816587745512335)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63099027931995596917)
,p_event_id=>wwv_flow_imp.id(63099027748537596915)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(42360816731519512337)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63099028129668596919)
,p_event_id=>wwv_flow_imp.id(63099027748537596915)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(42360816731519512337)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63194533640626890007)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(63194524367316890000)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Cadastro de Filiais'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>63194533640626890007
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63194534039084890007)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>63194534039084890007
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63189805078854809204)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Ativar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE ERP_FILIAL',
'SET ATIVO = CASE WHEN ATIVO = ''N'' THEN ''S'' END',
'WHERE ID = :P21_ID;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(42360816587745512335)
,p_internal_uid=>63189805078854809204
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42360816290032512332)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Desativar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE ERP_FILIAL',
'SET ATIVO = CASE WHEN ATIVO = ''S'' THEN ''N'' ELSE ''N'' END',
'WHERE ID = :P21_ID;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(42360816731519512337)
,p_internal_uid=>42360816290032512332
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(42360816951052512339)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog Ativar/Desativar'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ATIVAR,DESATIVAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>42360816951052512339
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63194533226998890006)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(63194524367316890000)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Cadastro de Filiais'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>63194533226998890006
);
wwv_flow_imp.component_end;
end;
/
