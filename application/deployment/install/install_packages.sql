prompt --application/deployment/install/install_packages
begin
--   Manifest
--     INSTALL: INSTALL-Packages
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>58992462908322316485
,p_default_application_id=>208153
,p_default_id_offset=>0
,p_default_owner=>'WKSP_STEFANINITRAINING'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(64844575710534240700)
,p_install_id=>wwv_flow_imp.id(64845288597612745676)
,p_name=>'Packages'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package pkg_utils as ',
'function fcn_valida_cnpj(p_cnpj varchar2) return boolean;',
'function fcn_validar_cpf(p_cpf varchar2) return boolean;',
'end pkg_utils;',
'/',
'create or replace package body pkg_utils as ',
'  FUNCTION fcn_valida_cnpj(p_cnpj VARCHAR2) RETURN BOOLEAN IS',
'    v_cnpj VARCHAR2(14);',
'    v_soma NUMBER := 0;',
'    v_digito NUMBER;',
'    v_mult NUMBER := 2;',
'  BEGIN',
unistr('    -- Remove caracteres n\00E3o num\00E9ricos do CNPJ'),
'    v_cnpj := REGEXP_REPLACE(p_cnpj, ''[^0-9]'', '''');',
'',
unistr('    -- Verifica se o CNPJ tem 14 d\00EDgitos'),
'    IF LENGTH(v_cnpj) <> 14 THEN',
'      RETURN FALSE;',
'    END IF;',
'',
unistr('    -- Calcula o primeiro d\00EDgito verificador'),
'    FOR i IN REVERSE 1..12 LOOP',
'      v_soma := v_soma + TO_NUMBER(SUBSTR(v_cnpj, i, 1)) * v_mult;',
'      v_mult := CASE WHEN v_mult = 9 THEN 2 ELSE v_mult + 1 END;',
'    END LOOP;',
'',
'    v_digito := CASE WHEN MOD(v_soma, 11) < 2 THEN 0 ELSE 11 - MOD(v_soma, 11) END;',
'',
unistr('    -- Verifica o primeiro d\00EDgito verificador'),
'    IF v_digito <> TO_NUMBER(SUBSTR(v_cnpj, 13, 1)) THEN',
'      RETURN FALSE;',
'    END IF;',
'',
unistr('    -- Calcula o segundo d\00EDgito verificador'),
'    v_soma := 0;',
'    v_mult := 2;',
'    FOR i IN REVERSE 1..13 LOOP',
'      v_soma := v_soma + TO_NUMBER(SUBSTR(v_cnpj, i, 1)) * v_mult;',
'      v_mult := CASE WHEN v_mult = 9 THEN 2 ELSE v_mult + 1 END;',
'    END LOOP;',
'',
'    v_digito := CASE WHEN MOD(v_soma, 11) < 2 THEN 0 ELSE 11 - MOD(v_soma, 11) END;',
'',
unistr('    -- Verifica o segundo d\00EDgito verificador'),
'    IF v_digito <> TO_NUMBER(SUBSTR(v_cnpj, 14, 1)) THEN',
'      RETURN FALSE;',
'    END IF;',
'',
'    RETURN TRUE;',
'  END fcn_valida_cnpj;',
'',
'  FUNCTION FCN_VALIDAR_CPF (p_cpf IN VARCHAR2) RETURN BOOLEAN IS',
'    v_cpf VARCHAR2(11);',
'    v_soma NUMBER := 0;',
'    v_resto NUMBER;',
'    v_primeiro_digito NUMBER;',
'    v_segundo_digito NUMBER;',
'BEGIN',
unistr('    -- Remover quaisquer caracteres n\00E3o num\00E9ricos do CPF'),
'    v_cpf := REGEXP_REPLACE(p_cpf, ''[^0-9]'', '''');',
'',
unistr('    -- Verificar se o CPF tem 11 d\00EDgitos'),
'    IF LENGTH(v_cpf) != 11 THEN',
'        RETURN FALSE;',
'    END IF;',
'',
unistr('    -- Verificar se todos os d\00EDgitos s\00E3o iguais'),
'    IF v_cpf = ''00000000000'' OR ',
'        v_cpf = ''11111111111'' OR ',
'        v_cpf = ''22222222222'' OR ',
'        v_cpf = ''33333333333'' OR ',
'        v_cpf = ''44444444444'' OR ',
'        v_cpf = ''55555555555'' OR ',
'        v_cpf = ''66666666666'' OR ',
'        v_cpf = ''77777777777'' OR ',
'        v_cpf = ''88888888888'' OR ',
'        v_cpf = ''99999999999'' THEN',
'        RETURN FALSE;',
'    END IF;',
'',
unistr('    -- Calculando o primeiro d\00EDgito verificador'),
'    FOR i IN 1..9 LOOP',
'        v_soma := v_soma + TO_NUMBER(SUBSTR(v_cpf, i, 1)) * (11 - i);',
'    END LOOP;',
'    ',
'    v_resto := MOD(MOD(v_soma, 11), 11);',
'    IF (v_resto IN (0, 1)) THEN',
'        v_primeiro_digito := 0;',
'    ELSE',
'        v_primeiro_digito := 11 - v_resto;',
'    END IF;',
'',
unistr('    -- Verificar se o primeiro d\00EDgito verificador est\00E1 correto'),
'    IF v_primeiro_digito != TO_NUMBER(SUBSTR(v_cpf, 10, 1)) THEN',
'        RETURN FALSE;',
'    END IF;',
'',
unistr('    -- Calculando o segundo d\00EDgito verificador'),
'    v_soma := 0;',
'    FOR i IN 1..10 LOOP',
'        v_soma := v_soma + TO_NUMBER(SUBSTR(v_cpf, i, 1)) * (12 - i);',
'    END LOOP;',
'',
'    v_resto := MOD(MOD(v_soma, 11), 11);',
'    IF (v_resto IN (0, 1)) THEN',
'        v_segundo_digito := 0;',
'    ELSE',
'        v_segundo_digito := 11 - v_resto;',
'    END IF;',
'',
unistr('    -- Verificar se o segundo d\00EDgito verificador est\00E1 correto'),
'    IF v_segundo_digito != TO_NUMBER(SUBSTR(v_cpf, 11, 1)) THEN',
'        RETURN FALSE;',
'    END IF;',
'',
unistr('    -- Se passou por todas as valida\00E7\00F5es, o CPF \00E9 v\00E1lido'),
'    RETURN TRUE;',
'END FCN_VALIDAR_CPF;',
'end pkg_utils;',
'/ '))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(64844575847446240703)
,p_script_id=>wwv_flow_imp.id(64844575710534240700)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'PKG_UTILS'
,p_last_updated_by=>'PAKUNZEL@STEFANINI.COM'
,p_last_updated_on=>to_date('20240213144721','YYYYMMDDHH24MISS')
,p_created_by=>'PAKUNZEL@STEFANINI.COM'
,p_created_on=>to_date('20240213144721','YYYYMMDDHH24MISS')
);
wwv_flow_imp.component_end;
end;
/
