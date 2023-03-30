SELECT * FROM cliente;
--1 EJERCICIO 1

DECLARE 
    v_nombrecompleto VARCHAR2(50);
    v_rutemp VARCHAR2(15);
    v_sueldoemp NUMBER(15);
    v_bonificacion NUMBER(15);
    v_solic NUMBER(9) := 11846972;
BEGIN 
    SELECT nombre_emp||' '||appaterno_emp||' '||apmaterno_emp,
            numrut_emp||'-'||dvrut_emp,
            sueldo_emp,
            sueldo_emp * 0.4
    INTO 
        v_nombrecompleto, v_rutemp,v_sueldoemp, v_bonificacion
    FROM 
        empleado
    WHERE numrut_emp = v_solic;
    DBMS_OUTPUT.PUT_LINE('DATOS CALCULO BONIFICACION EXTRA DEL 40% DEL SUELDO');
    DBMS_OUTPUT.PUT_LINE('Nombre empleado: '||v_nombrecompleto);
    DBMS_OUTPUT.PUT_LINE('RUN: '||v_rutemp);
    DBMS_OUTPUT.PUT_LINE('Sueldo: '||v_sueldoemp);
    DBMS_OUTPUT.PUT_LINE('Bonificación extra: '||v_bonificacion);
END;
            
            
--EJERCUCIÓN 2--
DECLARE 
    v_nombrecompleto VARCHAR2(50);
    v_rutemp VARCHAR2(15);
    v_sueldoemp NUMBER(15);
    v_bonificacion NUMBER(15);
    v_solic NUMBER(9) := 18560875;
BEGIN 
    SELECT nombre_emp||' '||appaterno_emp||' '||apmaterno_emp,
            numrut_emp||'-'||dvrut_emp,
            sueldo_emp,
            sueldo_emp * 0.4
    INTO 
        v_nombrecompleto, v_rutemp,v_sueldoemp, v_bonificacion
    FROM 
        empleado
    WHERE numrut_emp = v_solic;
    DBMS_OUTPUT.PUT_LINE('DATOS CALCULO BONIFICACION EXTRA DEL 40% DEL SUELDO');
    DBMS_OUTPUT.PUT_LINE('Nombre empleado: '||v_nombrecompleto);
    DBMS_OUTPUT.PUT_LINE('RUN: '||v_rutemp);
    DBMS_OUTPUT.PUT_LINE('Sueldo: '||v_sueldoemp);
    DBMS_OUTPUT.PUT_LINE('Bonificación extra: '||v_bonificacion);
END;
         
         
--EJERCICIO 2(ejecución 1 )--
VAR v_busqueda NUMBER;
EXEC :v_busqueda := 12487147;

DECLARE 
        v_nombrecompleto VARCHAR2(250);
        v_rutcli VARCHAR2(15);
        v_estadocivil VARCHAR(30);
        v_renta NUMBER(10);
BEGIN
      SELECT
            cli.nombre_cli||' '||cli.appaterno_cli||' '||cli.apmaterno_cli,
            cli.numrut_cli||'-'||cli.dvrut_cli,
            est.desc_estcivil,
            cli.renta_cli
          INTO
                v_nombrecompleto,
                v_rutcli,
                v_estadocivil,
                v_renta
        FROM cliente cli
            JOIN estado_civil est ON cli.id_estcivil = est.id_estcivil
        WHERE :v_busqueda = cli.numrut_cli;
        DBMS_OUTPUT.PUT_LINE('DATOS DEL CLIENTE');
        DBMS_OUTPUT.PUT_LINE('-----------------');
        DBMS_OUTPUT.PUT_LINE('Nombre: '||v_nombrecompleto);
        DBMS_OUTPUT.PUT_LINE('RUN: '||v_rutcli);
        DBMS_OUTPUT.PUT_LINE('Estado Civil: '||v_estadocivil);
        DBMS_OUTPUT.PUT_LINE('Renta: '||TO_CHAR(v_renta,'$99G999G999'));
END;


--EJERCICIO 2(ejecucion 2)--

VAR v_busqueda NUMBER;
EXEC :v_busqueda := 12861354;


DECLARE 
        v_nombrecompleto VARCHAR2(250);
        v_rutcli VARCHAR2(15);
        v_estadocivil VARCHAR(30);
        v_renta NUMBER(10);
BEGIN
      SELECT
            cli.nombre_cli||' '||cli.appaterno_cli||' '||cli.apmaterno_cli,
            cli.numrut_cli||'-'||cli.dvrut_cli,
            est.desc_estcivil,
            cli.renta_cli
          INTO
                v_nombrecompleto,
                v_rutcli,
                v_estadocivil,
                v_renta
        FROM cliente cli
            JOIN estado_civil est ON cli.id_estcivil = est.id_estcivil
        WHERE :v_busqueda = cli.numrut_cli;
        DBMS_OUTPUT.PUT_LINE('DATOS DEL CLIENTE');
        DBMS_OUTPUT.PUT_LINE('-----------------');
        DBMS_OUTPUT.PUT_LINE('Nombre: '||v_nombrecompleto);
        DBMS_OUTPUT.PUT_LINE('RUN: '||v_rutcli);
        DBMS_OUTPUT.PUT_LINE('Estado Civil: '||v_estadocivil);
        DBMS_OUTPUT.PUT_LINE('Renta: '||TO_CHAR(v_renta,'$99G999G999'));
END;

--EJERCICIO 2 (ejecución 3)
VAR v_busqueda NUMBER;
EXEC :v_busqueda := 13050258;

DECLARE 
        v_nombrecompleto VARCHAR2(250);
        v_rutcli VARCHAR2(15);
        v_estadocivil VARCHAR(30);
        v_renta NUMBER(10);
BEGIN
      SELECT
            cli.nombre_cli||' '||cli.appaterno_cli||' '||cli.apmaterno_cli,
            cli.numrut_cli||'-'||cli.dvrut_cli,
            est.desc_estcivil,
            cli.renta_cli
          INTO
                v_nombrecompleto,
                v_rutcli,
                v_estadocivil,
                v_renta
        FROM cliente cli
            JOIN estado_civil est ON cli.id_estcivil = est.id_estcivil
        WHERE :v_busqueda = cli.numrut_cli;
        DBMS_OUTPUT.PUT_LINE('DATOS DEL CLIENTE');
        DBMS_OUTPUT.PUT_LINE('-----------------');
        DBMS_OUTPUT.PUT_LINE('Nombre: '||v_nombrecompleto);
        DBMS_OUTPUT.PUT_LINE('RUN: '||v_rutcli);
        DBMS_OUTPUT.PUT_LINE('Estado Civil: '||v_estadocivil);
        DBMS_OUTPUT.PUT_LINE('Renta: '||TO_CHAR(v_renta,'$99G999G999'));
END;

--3 CASO(ejecución 1)--
VAR v_busqueda NUMBER;
EXEC :v_busqueda := 12260812;

DECLARE 
    v_nombrecompleto VARCHAR2(50);
    v_runemp VARCHAR2(30);
    v_sueldo NUMBER(20);
    BEGIN
        SELECT 
            nombre_emp||' '||appaterno_emp||' '||apmaterno_emp,
            numrut_emp||'-'||dvrut_emp,
            sueldo_emp
        INTO
            v_nombrecompleto,
            v_runemp,
            v_sueldo
        FROM empleado
        WHERE numrut_emp = :v_busqueda;
        DBMS_OUTPUT.PUT_LINE('NOMBRE DEL EMPLEADO: '||v_nombrecompleto);
        DBMS_OUTPUT.PUT_LINE('RUN: '||v_runemp);
        DBMS_OUTPUT.PUT_LINE('SIMULACIÓN 1: Aumentar en 8,5% el salario de los empleados que poseen salarios entre $200.000 y $400.000');
        DBMS_OUTPUT.PUT_LINE('Sueldo actual: '||v_sueldo);
        DBMS_OUTPUT.PUT_LINE('Sueldo reajustado: '||ROUND(v_sueldo*1.085));     --CÁLCULO A MANO, PREGUNTAR AL PROFE QUE ONDA CON LAS VARIABLES..
        DBMS_OUTPUT.PUT_LINE('Reajuste: '||ROUND(v_sueldo*0.085));              --SI MULTIPLICO VARIABLE * VARIABLE NO IMPRIME.. AUNQUE SEAN DE TIPO NUMBER
        DBMS_OUTPUT.PUT_LINE('SIMULACIÓN 2: Aumentar en 20% el salario de los empleados que poseen salarios entre $200.000 y $400.000');
        DBMS_OUTPUT.PUT_LINE('Sueldo actual: '||v_sueldo);
        DBMS_OUTPUT.PUT_LINE('Sueldo reajustado: '||ROUND(v_sueldo*1.2));
        DBMS_OUTPUT.PUT_LINE('Reajuste: '||ROUND(v_sueldo*0.2));
END;

            
--caso 3(ejecucion 2)--
VAR v_sueldoreajustado NUMBER;          --DECLARO LAS VARIABLES 
VAR v_reajuste NUMBER;
VAR v_sueldoreajustado2 NUMBER;
VAR v_reajuste2 NUMBER;
VAR v_busqueda NUMBER;

EXEC :v_sueldoreajustado := 1.085;
EXEC :v_reajuste := 0.085;
EXEC :v_sueldoreajustado2:= 1.2;        --EJECUTO VARIABLES CON VALOR ASIGNADO
EXEC :v_reajuste2 := 0.2;
EXEC :v_busqueda := 11999100;


DECLARE 
    v_nombrecompleto VARCHAR2(50);
    v_runemp VARCHAR2(30);
    v_sueldo NUMBER(20);
    BEGIN
        SELECT 
            nombre_emp||' '||appaterno_emp||' '||apmaterno_emp,
            numrut_emp||'-'||dvrut_emp,
            sueldo_emp
        INTO
            v_nombrecompleto,
            v_runemp,
            v_sueldo
        FROM empleado
        WHERE numrut_emp = :v_busqueda;
        DBMS_OUTPUT.PUT_LINE('NOMBRE DEL EMPLEADO: '||v_nombrecompleto);
        DBMS_OUTPUT.PUT_LINE('RUN: '||v_runemp);
        DBMS_OUTPUT.PUT_LINE('SIMULACION 1: Aumentar en 8,5% el salario de los empleados que poseen salarios entre $200.000 y $400.000');
        DBMS_OUTPUT.PUT_LINE('Sueldo actual: '||v_sueldo);
        DBMS_OUTPUT.PUT_LINE('Sueldo reajustado: '||ROUND(v_sueldo*1.085));     --CÁLCULO A MANO, PREGUNTAR AL PROFE QUE ONDA CON LAS VARIABLES..
        DBMS_OUTPUT.PUT_LINE('Reajuste: '||ROUND(v_sueldo*0.085));              --SI MULTIPLICO VARIABLE * VARIABLE NO IMPRIME.. AUNQUE SEAN DE TIPO NUMBER
        DBMS_OUTPUT.PUT_LINE('SIMULACION 2: Aumentar en 20% el salario de los empleados que poseen salarios entre $200.000 y $400.000');
        DBMS_OUTPUT.PUT_LINE('Sueldo actual: '||v_sueldo);
        DBMS_OUTPUT.PUT_LINE('Sueldo reajustado: '||ROUND(v_sueldo*1.2));
        DBMS_OUTPUT.PUT_LINE('Reajuste: '||ROUND(v_sueldo*0.2));
END;

--caso 4-- 

SELECT desc_tipo_propiedad,id_tipo_propiedad FROM tipo_propiedad;

VAR v_tipo VARCHAR2;
EXEC :v_tipo :='A';

DECLARE
    v_tipoviv NCHAR(30);
    v_cantidad NUMBER(30);
    v_valor NUMBER(30);
    BEGIN
        SELECT 
            tip.desc_tipo_propiedad,
            COUNT(tip.id_tipo_propiedad),
            SUM(pro.valor_arriendo)
        INTO
            v_tipoviv,
            v_cantidad,
            v_valor
        FROM propiedad pro
            JOIN tipo_propiedad tip ON pro.id_tipo_propiedad = pro.id_tipo_propiedad
        WHERE tip.id_tipo_propiedad = :v_tipo
        GROUP BY tip.desc_tipo_propiedad, tip.id_tipo_propiedad;
END;


SELECT
    id_tipo_propiedad
    FROM propiedad
;