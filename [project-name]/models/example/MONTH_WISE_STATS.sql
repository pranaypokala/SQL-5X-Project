
{{ config(materialized="table") }}

select sum(New_deaths) as Total_Deaths, sum(new_cases) as New_Cases, sum(New_Recovered) as New_Recoveries, 
sum(NEW_Active_Cases) as Active_Cases,concat(concat(month(to_date(date,'mm/dd/yyyy')),'/'),year(to_date(date,'mm/dd/yyyy'))) as month from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_POKALA_PRANAYKUMAR"
group by  month(to_date(date,'mm/dd/yyyy')),year(to_date(date,'mm/dd/yyyy'))