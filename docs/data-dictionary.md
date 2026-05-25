# Data Dictionary

## Overview

This document describes the structure of the generated nube ERP data dictionary files.

The dictionary was generated from iDempiere metadata tables such as:

- `AD_Table`
- `AD_Column`
- `AD_Table_Trl`
- `AD_Column_Trl`
- `AD_Element_Trl`
- `AD_Reference`
- `AD_Val_Rule`

## Table Dictionary

File:

```text
data/csv/DiccionarioNubeERP.csv
```

## Table Dictionary

File:
```text
data/csv/DiccionarioNubeERP_Vistas.csv
```

| Column                    | Description                                                   |
| ------------------------- | ------------------------------------------------------------- |
| `ad_table_id`             | Internal iDempiere table identifier                           |
| `tabla`                   | Database table name                                           |
| `vista`                   | Database view name                                            |
| `nombre_tabla`            | Functional table name                                         |
| `nombre_vista`            | Functional view name                                          |
| `descripcion_tabla`       | Table description                                             |
| `descripcion_vista`       | View description                                              |
| `es_vista`                | Indicates whether the object is a view                        |
| `ad_column_id`            | Internal iDempiere column identifier                          |
| `columna`                 | Database column name                                          |
| `nombre_columna`          | Functional column name                                        |
| `etiqueta`                | Display label                                                 |
| `descripcion_columna`     | Column description                                            |
| `ayuda_columna`           | Help text                                                     |
| `ad_reference_id`         | iDempiere reference identifier                                |
| `tipo_referencia`         | iDempiere reference type                                      |
| `longitud`                | Field length                                                  |
| `es_clave`                | Indicates whether the column is a key                         |
| `es_padre`                | Indicates whether the column is a parent reference            |
| `obligatorio`             | Indicates whether the column is mandatory                     |
| `identificador`           | Indicates whether the column is part of the record identifier |
| `traducible`              | Indicates whether the column is translatable                  |
| `actualizable`            | Indicates whether the column can be updated                   |
| `logica_solo_lectura`     | Read-only logic                                               |
| `valor_por_defecto`       | Default value                                                 |
| `callout`                 | iDempiere callout                                             |
| `ad_reference_value_id`   | Reference value identifier                                    |
| `referencia_valor`        | Reference value name                                          |
| `regla_validacion`        | Validation rule name                                          |
| `codigo_regla_validacion` | Validation rule SQL code                                      |
| `columna_sql`             | SQL expression for virtual columns                            |
| `secuencia`               | Column sequence                                               |
