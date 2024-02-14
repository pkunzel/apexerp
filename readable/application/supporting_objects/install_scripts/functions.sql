create or replace FUNCTION fcn_validacnpj(p_cnpj VARCHAR2)
RETURN BOOLEAN IS
BEGIN
    IF p_cnpj = '12345678912345' THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END fcn_validacnpj;
/
create or replace FUNCTION FCN_VALIDAR_CPF (p_cpf IN VARCHAR2) RETURN BOOLEAN IS
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
    IF v_cpf = '00000000000' OR v_cpf = '11111111111' OR v_cpf = '22222222222' OR v_cpf = '33333333333' OR v_cpf = '44444444444' OR v_cpf = '55555555555' OR v_cpf = '66666666666' OR v_cpf = '77777777777' OR v_cpf = '88888888888' OR v_cpf = '99999999999' THEN
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
/ 