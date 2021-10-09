
{{ config(materialized="table") }}

select sum(New_deaths) as New_Deaths, sum(new_cases) as New_Cases, sum(New_Recovered) as New_Recoveries, 
sum(NEW_Active_Cases) as Active_Cases, Country,Continent,Island 
from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_POKALA_PRANAYKUMAR"
group by (Country,Continent,Island) having Island is not null