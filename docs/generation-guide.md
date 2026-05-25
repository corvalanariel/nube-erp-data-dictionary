# Generation Guide

## Purpose

This guide explains how the data dictionary CSV files are generated.

The dictionary is generated using SQL queries against the iDempiere application dictionary tables.

## Generated Files

| File | Source Script |
|---|---|
| `data/csv/DiccionarioNubeERP.csv` | `sql/generate-table-dictionary.sql` |
| `data/csv/DiccionarioNubeERP_Vistas.csv` | `sql/generate-view-dictionary.sql` |

## Recommended Process

1. Connect to the iDempiere PostgreSQL database.
2. Run `sql/generate-table-dictionary.sql`.
3. Export the result as `DiccionarioNubeERP.csv`.
4. Run `sql/generate-view-dictionary.sql`.
5. Export the result as `DiccionarioNubeERP_Vistas.csv`.
6. Save both files inside `data/csv/`.
7. Commit the updated files to Git.

## Notes

The scripts currently use the `es_PY` language where translations are available.

If a translated name is not found, the scripts fall back to the base iDempiere name.

The dictionary includes only active tables, views and columns.
