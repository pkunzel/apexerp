prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>unistr('Cadastro de usu\00E1rio')
,p_alias=>unistr('CADASTRO-DE-USU\00C1RIO')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Cadastro de usu\00E1rio')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'AGSOUSA4'
,p_last_upd_yyyymmddhh24miss=>'20240214003411'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63105327250468696382)
,p_plug_name=>unistr('Cadastro de usu\00E1rio')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62607242239143989576)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ERP_USUARIO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63105334501394696387)
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
 p_id=>wwv_flow_imp.id(63105334906561696387)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(63105334501394696387)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62607382055443989633)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(63105336385808696388)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(63105334501394696387)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(62607382055443989633)
,p_button_image_alt=>unistr('Deletar usu\00E1rio')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64786169396127651503)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(63105334501394696387)
,p_button_name=>'DESATIVAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(62607382055443989633)
,p_button_image_alt=>'Desativar'
,p_button_position=>'DELETE'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64786169729071651507)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(63105334501394696387)
,p_button_name=>'ATIVAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62607382055443989633)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ativar'
,p_button_position=>'DELETE'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(63105336707946696388)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(63105334501394696387)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62607382055443989633)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Salvar altera\00E7\00F5es')
,p_button_position=>'NEXT'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(63105337113026696389)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(63105334501394696387)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62607382055443989633)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Criar'
,p_button_position=>'NEXT'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63105327563324696383)
,p_name=>'P14_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(63105327250468696382)
,p_item_source_plug_id=>wwv_flow_imp.id(63105327250468696382)
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
 p_id=>wwv_flow_imp.id(63105327926943696383)
,p_name=>'P14_LOGIN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(63105327250468696382)
,p_item_source_plug_id=>wwv_flow_imp.id(63105327250468696382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Login'
,p_source=>'LOGIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
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
 p_id=>wwv_flow_imp.id(63105328349065696384)
,p_name=>'P14_NOME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(63105327250468696382)
,p_item_source_plug_id=>wwv_flow_imp.id(63105327250468696382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nome'
,p_source=>'NOME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
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
 p_id=>wwv_flow_imp.id(63105328767681696384)
,p_name=>'P14_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(63105327250468696382)
,p_item_source_plug_id=>wwv_flow_imp.id(63105327250468696382)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
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
 p_id=>wwv_flow_imp.id(63105329129482696384)
,p_name=>'P14_ATIVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(63105327250468696382)
,p_item_source_plug_id=>wwv_flow_imp.id(63105327250468696382)
,p_source=>'ATIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63105331175245696385)
,p_name=>'P14_SENHA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(63105327250468696382)
,p_item_source_plug_id=>wwv_flow_imp.id(63105327250468696382)
,p_prompt=>'Senha'
,p_source=>'SENHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(62607380865936989632)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(62615034199683543710)
,p_validation_name=>'Validar login tamanho'
,p_validation_sequence=>10
,p_validation=>'length(:P14_LOGIN) >=5'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Login deve haver no m\00EDnimo 5 caracteres. ')
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(63105327926943696383)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(62615034202085543711)
,p_validation_name=>'Validar @'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_frase VARCHAR2(100) := :P14_EMAIL;',
'    v_posicao NUMBER;',
'BEGIN',
unistr('    -- Verifica se o caractere ''@'' est\00E1 presente na frase'),
'    v_posicao := INSTR(v_frase, ''@'');',
'',
'    IF v_posicao > 4 THEN',
'        return true;',
'    ELSE',
'        return false;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Seu e-mail precisa possuir ''@'''
,p_associated_item=>wwv_flow_imp.id(63105328767681696384)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(64786170606224651516)
,p_validation_name=>'Validar letra Mm'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_string VARCHAR2(100) := :P14_SENHA;',
'    v_char   CHAR(1);',
'    v_pos    NUMBER;',
'    v_count number :=0; ',
'',
'BEGIN',
unistr('    -- Verifica se h\00E1 letras mai\00FAsculas na string'),
unistr('    FOR i IN 65..90 LOOP -- c\00F3digo ASCII para letras mai\00FAsculas'),
'        v_char := CHR(i);',
'        v_pos := INSTR(v_string, v_char);',
'        IF v_pos > 0 THEN',
'            v_count := v_count +1;',
'        END IF;',
'    END LOOP;',
'',
unistr('    -- Verifica se h\00E1 letras min\00FAsculas na string'),
unistr('    FOR i IN 97..122 LOOP -- c\00F3digo ASCII para letras min\00FAsculas'),
'        v_char := CHR(i);',
'        v_pos := INSTR(v_string, v_char);',
'        IF v_pos > 0 THEN',
'            v_count := v_count +1;',
'        END IF;',
'    END LOOP;',
'',
'    if v_count = 2 then',
'        return true;',
'    else ',
'    return false;',
'    end if;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Senha inv\00E1lida, deve conter uma letra mai\00FAscula e min\00FAscula')
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(63105331175245696385)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(64786170747647651517)
,p_validation_name=>'Validar tamanho'
,p_validation_sequence=>50
,p_validation=>'length(:P14_SENHA) >=8;'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Sua senha deve conter no m\00EDnimo 8 caracteres')
,p_associated_item=>wwv_flow_imp.id(63105331175245696385)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(64786170854397651518)
,p_validation_name=>'Validar caracter'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count NUMBER;',
'BEGIN',
unistr('    -- Conta o n\00FAmero de ocorr\00EAncias de caracteres especiais na string'),
'    SELECT REGEXP_COUNT(:P14_SENHA, ''[[:punct:]]'') INTO v_count FROM DUAL;',
'',
'    IF v_count > 0 THEN',
'        return true;',
'    ELSE',
'        return false;',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sua senha deve conter um caractere especial'
,p_associated_item=>wwv_flow_imp.id(63105331175245696385)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(62615034613222543715)
,p_validation_name=>'Validar .com'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_frase VARCHAR2(100) := :P14_EMAIL;',
'    v_posicao NUMBER;',
'    v_com_length NUMBER := LENGTH(''.com'');',
'    v_frase_length NUMBER := LENGTH(v_frase);',
'BEGIN',
'    v_posicao := INSTR(v_frase, ''.com'');',
'',
'    IF v_posicao > 7 AND v_posicao = v_frase_length - v_com_length + 1 THEN',
'        return TRUE;',
'    else ',
'    return false;    ',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('E-mail inv\00E1lido, seu e-mail precisa terminar com ''.com''')
,p_associated_item=>wwv_flow_imp.id(63105328767681696384)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63105335063205696387)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(63105334906561696387)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63105335835674696388)
,p_event_id=>wwv_flow_imp.id(63105335063205696387)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64786169954705651509)
,p_name=>'Alterar visibilidade'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(63105327250468696382)
,p_condition_element=>'P14_ATIVO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64786170030535651510)
,p_event_id=>wwv_flow_imp.id(64786169954705651509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64786169396127651503)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64786170236229651512)
,p_event_id=>wwv_flow_imp.id(64786169954705651509)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64786169729071651507)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64786170152397651511)
,p_event_id=>wwv_flow_imp.id(64786169954705651509)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64786169729071651507)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64786170312527651513)
,p_event_id=>wwv_flow_imp.id(64786169954705651509)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64786169396127651503)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63105337928526696389)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(63105327250468696382)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form Cadastro de usu\00E1rio')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>63105337928526696389
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64786169634339651506)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Desativar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE ERP_USUARIO',
'SET ATIVO = CASE WHEN ATIVO = ''S'' THEN ''N'' ELSE ''N'' END',
'WHERE ID = :P14_ID;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(64786169396127651503)
,p_internal_uid=>64786169634339651506
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64786169838335651508)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ATIVAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE ERP_USUARIO',
'SET ATIVO = CASE WHEN ATIVO = ''N'' THEN ''S'' ELSE ''S'' END',
'WHERE ID = :P14_ID;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(64786169729071651507)
,p_internal_uid=>64786169838335651508
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63105338386550696389)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>63105338386550696389
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63105337568174696389)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(63105327250468696382)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Cadastro de usu\00E1rio')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>63105337568174696389
);
wwv_flow_imp.component_end;
end;
/
