SELECT * FROM empleado;

/*
VAR v_porc_movilnormal NUMBER;
VAR v_valor_movilnormal NUMBER;
VAR v_valor_moviladic NUMBER;
VAR v_totalmovil NUMBER;

EXEC :v_porcmovilnormal:= SUBSTR(sueldo_base,0,2);
EXEC :v_valormovilnormal := ((sueldo_base*:v_porcmovilnormal)/100);
EXEC :v_valormoviladic:=*/  



VAR numrut_consulta NUMBER;
VAR dvrut_consulta CHAR;

EXEC :numrut_consulta:= '11846972';
EXEC :dvrut_consulta := '5';

DECLARE 
    v_anno              NUMBER(4);
    v_numrun            NUMBER(8);
    v_dvemp             CHAR (1);
    v_nombrecompleto    VARCHAR(200);
    v_sueldo            empleado.sueldo_base%TYPE;
    v_porcmovil         NUMBER (3);
    v_valor_movil       empleado.sueldo_base%TYPE;
    v_valor_movil_adic  empleado.sueldo_base%TYPE;
    v_total             empleado.sueldo_base%TYPE;
BEGIN 
    SELECT
        EXTRACT(YEAR FROM(SYSDATE)) AS "ANIO_PROCESO",
        e.numrun_emp AS "RUN_EMPLEADO",
        e.dvrun_emp AS "DV_EMPLEADO",
        (e.pnombre_emp||' '||e.snombre_emp||' '||e.appaterno_emp||' '||e.apmaterno_emp) AS "NOMBRE_EMPLEADO",
        e.sueldo_base,
        TRUNC(e.sueldo_base / 100000) AS "PORC. MOVIL_NORMAL",
        /*c.nombre_comuna,*/
        CASE c.nombre_comuna
            WHEN 'María Pinto' THEN 20000
            WHEN 'Curacaví' THEN 25000
            WHEN 'Talagante' THEN 30000
            WHEN 'El Monte' THEN 35000
            WHEN 'Buin' THEN 40000
            ELSE 0
        END AS "VALOR_MOVIL_ADIC"
      INTO v_anno,v_anno,v_numrun,v_dvemp,v_nombrecompleto,v_sueldo,v_porcmovil,v_valor_movil, v_valor_movil_adic,v_total     
    /*INTO
        v_anno,
        v_numrunemp,
        v_dvemp,
        v_sueldobase*/
    FROM empleado e, comuna c
    WHERE e.id_comuna = c.id_comuna
            AND numrun_emp = :numrut_consulta
            AND dvrun_emp = dvrut_consulta;
END;    
        
------------------------------------------------------------------------------------------------------------------------------
SELECT 
    EXTRACT(YEAR FROM(SYSDATE)) AS "ANNO",
    e.numrun_emp AS "RUN_EMPLEADO",
    e.dvrum_emp AS "DV_RUN_EMP",
    (e.pnombre_emp||' '||e.snombre_emp||' '||
        e.appaterno_emp||' '||e.apmaterno_emp) AS "NOMBRE_EMPLEADO",
    e.sueldo_base AS "SUELDO",
    (e.sueldo_base/100000) AS "PORC_MOVIL",
    (e.PORC_MOVIL*sueldo_base)/100 AS "TOTAL_MOVILIZACION",
    CASE c.nombre_comuna
        WHEN 'María Pinto' THEN 20000
        WHEN 'Curacaví' THEN 25000
        WHEN 'Talagante' THEN 30000
        WHEN 'El Monte' THEN 35000
        WHEN 'Buin' THEN 40000
        ELSE 0
    END AS "VALOR_MOVIL_ADICIONAL"
FROM empleado e
    JOIN comuna c ON e.id_comuna = c.id_comuna
;
        
    
 --------------------------------------------------
 -----EJERCICIO2-----
 SELECT 
    EXTRACT(DAY FROM(SYSDATE))||EXTRACT(YEAR FROM(SYSDATE)) AS "MES_ANNO",
    e.numrun_emp AS "NUM_RUN",
    e.dvrun_emp AS "DVRUN_EMP",
    e.pnombre_emp||' '||e.snombre_emp||' '||appaterno_emp||' '||apmaterno_emp AS "NOMBRE_EMPLEADO",
    SUBSTR(e.pnombre_emp,0,3)||LENGTH(pnombre_emp)||'*'||SUBSTR(e.sueldo_base,-1)||e.dvrun_emp AS "NOMBRE USUAARIO",
    SUBSTR(e.numrun_emp,3,1)||EXTRACT(YEAR FROM(e.fecha_nac))+2||SUBSTR(e.sueldo_base,-3,3)
    
 FROM empleado e
 ;
 
 select 
    fecha_contrato
FROM empleado;
    