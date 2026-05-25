# nube ERP Data Dictionary

Technical data dictionary for nube ERP based on iDempiere.

## Purpose

This repository contains metadata extracted from the iDempiere application dictionary and database dictionary.

The objective is to provide technical documentation for ERP implementation, BI reporting, support, development and database analysis.

## Repository Structure

```text
data/
└── csv/
    ├── DiccionarioNubeERP.csv
    └── DiccionarioNubeERP_Vistas.csv

sql/
├── generate-table-dictionary.sql
└── generate-view-dictionary.sql

docs/
├── data-dictionary.md
└── generation-guide.md
```

Available Files
| File                                     | Description                                             |
| ---------------------------------------- | ------------------------------------------------------- |
| `data/csv/DiccionarioNubeERP.csv`        | Data dictionary for active iDempiere tables and columns |
| `data/csv/DiccionarioNubeERP_Vistas.csv` | Data dictionary for active iDempiere views and columns  |
| `sql/generate-table-dictionary.sql`      | SQL script used to generate the table dictionary        |
| `sql/generate-view-dictionary.sql`       | SQL script used to generate the view dictionary         |

Current Coverage
| Dataset       |  Count |
| ------------- | -----: |
| Tables        |    832 |
| Table columns | 17,511 |
| Views         |    110 |
| View columns  |  7,592 |

ncluded Metadata

The dictionary includes:

Table or view name
Functional name
Description
Column name
Column label
Column description and help
iDempiere reference type
Field length
Key, parent, mandatory and identifier flags
Updateable and translated flags
Default values
Callouts
Reference values
Validation rules
SQL columns
Column sequence
Use Cases
ERP technical documentation
BI and reporting support
SQL query analysis
Pentaho report development
Developer onboarding
Support and implementation guides
BookStack documentation
Security Notice

This repository contains metadata only.

It does not include production data, customer records, credentials, tokens, IP addresses or database connection strings.
