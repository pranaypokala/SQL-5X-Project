
{{ config(materialized="table") }}

select NEW_Cases/Total_Cases*100 as percentage_of_cases,date from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_POKALA_PRANAYKUMAR"
where NEW_Cases>=0 and Total_Cases>=0