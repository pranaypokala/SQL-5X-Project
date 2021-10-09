
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized="table") }}

select sum(New_deaths) as New_Deaths, sum(new_cases) as New_Cases, sum(New_Recovered) as New_Recoveries, 
sum(NEW_Active_Cases) as Active_Cases, date from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_POKALA_PRANAYKUMAR"
group by date

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
