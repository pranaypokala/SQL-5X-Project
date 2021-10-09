
{{ config(materialized="table") }}

select date,Island,Country,Continent,Total_Deaths as Highest_no_of_deaths from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_POKALA_PRANAYKUMAR" 
where Total_Deaths=(select max(Total_Deaths) from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_POKALA_PRANAYKUMAR" where Island is not null)