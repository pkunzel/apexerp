create or replace package pkg_utils as 
function fcn_valida_cnpj(p_cnpj varchar2) return boolean;
function fcn_validar_cpf(p_cpf varchar2) return boolean;
end pkg_utils;
/
create or replace package body pkg_utils as 
  FUNCTION fcn_valida_cnpj(p_cnpj VARCHAR2) RETURN BOOLEAN IS
    v_cnpj VARCHAR2(14);
    v_soma NUMBER := 0;
    v_digito NUMBER;
    v_mult NUMBER := 2;
  BEGIN
    -- Remove caracteres não numéricos do CNPJ
    v_cnpj := REGEXP_REPLACE(p_cnpj, '[^0-9]', '');

    -- Verifica se o CNPJ tem 14 dígitos
    IF LENGTH(v_cnpj) <> 14 THEN
      RETURN FALSE;
    END IF;

    -- Calcula o primeiro dígito verificador
    FOR i IN REVERSE 1..12 LOOP
      v_soma := v_soma + TO_NUMBER(SUBSTR(v_cnpj, i, 1)) * v_mult;
      v_mult := CASE WHEN v_mult = 9 THEN 2 ELSE v_mult + 1 END;
    END LOOP;

    v_digito := CASE WHEN MOD(v_soma, 11) < 2 THEN 0 ELSE 11 - MOD(v_soma, 11) END;

    -- Verifica o primeiro dígito verificador
    IF v_digito <> TO_NUMBER(SUBSTR(v_cnpj, 13, 1)) THEN
      RETURN FALSE;
    END IF;

    -- Calcula o segundo dígito verificador
    v_soma := 0;
    v_mult := 2;
    FOR i IN REVERSE 1..13 LOOP
      v_soma := v_soma + TO_NUMBER(SUBSTR(v_cnpj, i, 1)) * v_mult;
      v_mult := CASE WHEN v_mult = 9 THEN 2 ELSE v_mult + 1 END;
    END LOOP;

    v_digito := CASE WHEN MOD(v_soma, 11) < 2 THEN 0 ELSE 11 - MOD(v_soma, 11) END;

    -- Verifica o segundo dígito verificador
    IF v_digito <> TO_NUMBER(SUBSTR(v_cnpj, 14, 1)) THEN
      RETURN FALSE;
    END IF;

    RETURN TRUE;
  END fcn_valida_cnpj;

  FUNCTION FCN_VALIDAR_CPF (p_cpf IN VARCHAR2) RETURN BOOLEAN IS
    v_cpf VARCHAR2(11);
    v_soma NUMBER := 0;
    v_resto NUMBER;
    v_primeiro_digito NUMBER;
    v_segundo_digito NUMBER;
BEGIN
    -- Remover quaisquer caracteres não numéricos do CPF
    v_cpf := REGEXP_REPLACE(p_cpf, '[^0-9]', '');

    -- Verificar se o CPF tem 11 dígitos
    IF LENGTH(v_cpf) != 11 THEN
        RETURN FALSE;
    END IF;

    -- Verificar se todos os dígitos são iguais
    IF v_cpf = '00000000000' OR 
        v_cpf = '11111111111' OR 
        v_cpf = '22222222222' OR 
        v_cpf = '33333333333' OR 
        v_cpf = '44444444444' OR 
        v_cpf = '55555555555' OR 
        v_cpf = '66666666666' OR 
        v_cpf = '77777777777' OR 
        v_cpf = '88888888888' OR 
        v_cpf = '99999999999' THEN
        RETURN FALSE;
    END IF;

    -- Calculando o primeiro dígito verificador
    FOR i IN 1..9 LOOP
        v_soma := v_soma + TO_NUMBER(SUBSTR(v_cpf, i, 1)) * (11 - i);
    END LOOP;
    
    v_resto := MOD(MOD(v_soma, 11), 11);
    IF (v_resto IN (0, 1)) THEN
        v_primeiro_digito := 0;
    ELSE
        v_primeiro_digito := 11 - v_resto;
    END IF;

    -- Verificar se o primeiro dígito verificador está correto
    IF v_primeiro_digito != TO_NUMBER(SUBSTR(v_cpf, 10, 1)) THEN
        RETURN FALSE;
    END IF;

    -- Calculando o segundo dígito verificador
    v_soma := 0;
    FOR i IN 1..10 LOOP
        v_soma := v_soma + TO_NUMBER(SUBSTR(v_cpf, i, 1)) * (12 - i);
    END LOOP;

    v_resto := MOD(MOD(v_soma, 11), 11);
    IF (v_resto IN (0, 1)) THEN
        v_segundo_digito := 0;
    ELSE
        v_segundo_digito := 11 - v_resto;
    END IF;

    -- Verificar se o segundo dígito verificador está correto
    IF v_segundo_digito != TO_NUMBER(SUBSTR(v_cpf, 11, 1)) THEN
        RETURN FALSE;
    END IF;

    -- Se passou por todas as validações, o CPF é válido
    RETURN TRUE;
END FCN_VALIDAR_CPF;
end pkg_utils;
/ 