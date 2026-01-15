# Jaffle Dagster

A local development project combining **Dagster** and **dbt** for analytics
engineering using **SQL Server / Microsoft Fabric** as the data warehouse.

This project is based on the classic `jaffle_shop` dbt example and extended
to demonstrate:
- Dagster asset-based orchestration
- dbt Core integration via `dagster-dbt`
- SQL Server / Fabric-compatible dbt profiles
- Source definitions, tests, and surrogate keys

---

## 🧱 Project Structure

jaffle_dagster/
├── dagster/
│ ├── jaffle_dagster/
│ │ ├── assets/ # Dagster dbt assets
│ │ ├── resources/ # dbt CLI resource
│ │ ├── schedules/
│ │ ├── sensors/
│ │ ├── definitions.py
│ │ └── dbt_project.py
│ └── workspace.yaml
│
├── dbt/
│ └── jaffle_shop/
│ ├── models/
│ ├── sources/
│ ├── tests/
│ ├── dbt_project.yml
│ └── packages.yml
│
├── README.md
└── .gitignore


---

## 🚀 Getting Started

### 1️⃣ Create a Python virtual environment

```bash
python -m venv venv
venv\Scripts\activate

#Install dependencies
pip install dagster dagster-webserver dagster-dbt dbt-sqlserver dbt-core

# Run dbt
cd dbt/jaffle_shop
dbt deps
dbt build

# Run Dagster
$env:DAGSTER_HOME="C:\path\to\dagster_home"
dagster dev -w workspace.yaml


















### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
