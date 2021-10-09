
{{ config(materialized="table") }}

select date,Island,Country,Continent,NEW_CASES as 
highest_no_of_cases from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_POKALA_PRANAYKUMAR" 
where NEW_CASES=(select max(NEW_Cases) 
from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_POKALA_PRANAYKUMAR" where Island is not null)