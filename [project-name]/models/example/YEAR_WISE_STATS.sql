{{ config(materialized="table") }}

select sum(New_deaths) as New_Deaths, sum(new_cases) as New_Cases, sum(New_Recovered) as New_Recoveries, 
sum(NEW_Active_Cases) as Active_Cases,  year(to_date(date,'mm/dd/yyyy')) as year from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_POKALA_PRANAYKUMAR"
group by  year(to_date(date,'mm/dd/yyyy')) 