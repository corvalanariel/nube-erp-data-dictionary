SELECT
    t.ad_table_id,
    t.tablename AS vista,
    COALESCE(tt.name, t.name) AS nombre_vista,
    t.description AS descripcion_vista,
    t.isview AS es_vista,

    c.ad_column_id,
    c.columnname AS columna,
    COALESCE(ct.name, c.name) AS nombre_columna,
    COALESCE(et.printname, et.name, ct.name, c.name) AS etiqueta,
    COALESCE(et.description, c.description) AS descripcion_columna,
    COALESCE(et.help, c.help) AS ayuda_columna,

    c.ad_reference_id,
    r.name AS tipo_referencia,
    c.fieldlength AS longitud,

    c.iskey AS es_clave,
    c.isparent AS es_padre,
    c.ismandatory AS obligatorio,
    c.isidentifier AS identificador,
    c.istranslated AS traducible,
    c.isupdateable AS actualizable,

    c.readonlylogic AS logica_solo_lectura,
    c.defaultvalue AS valor_por_defecto,
    c.callout,

    c.ad_reference_value_id,
    rv.name AS referencia_valor,

    vr.name AS regla_validacion,
    vr.code AS codigo_regla_validacion,

    c.columnsql AS columna_sql,
    c.seqno AS secuencia

FROM ad_table t
JOIN ad_column c
    ON c.ad_table_id = t.ad_table_id

LEFT JOIN ad_table_trl tt
    ON tt.ad_table_id = t.ad_table_id
   AND tt.ad_language = 'es_PY'

LEFT JOIN ad_column_trl ct
    ON ct.ad_column_id = c.ad_column_id
   AND ct.ad_language = 'es_PY'

LEFT JOIN ad_element_trl et
    ON et.ad_element_id = c.ad_element_id
   AND et.ad_language = 'es_PY'

LEFT JOIN ad_reference r
    ON r.ad_reference_id = c.ad_reference_id

LEFT JOIN ad_reference rv
    ON rv.ad_reference_id = c.ad_reference_value_id

LEFT JOIN ad_val_rule vr
    ON vr.ad_val_rule_id = c.ad_val_rule_id

WHERE t.isactive = 'Y'
  AND c.isactive = 'Y'
  AND t.isview = 'Y'

ORDER BY
    t.tablename,
    c.seqno,
    c.columnname;
