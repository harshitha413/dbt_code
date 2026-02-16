{{ config(
materialized='table')
 }}

with emp_data as (
   select 
Emp_ID,
        FirstName,
        cast(salary as number)     as salary,
        cast(tax_amount as number) as tax_amount,

({{calculate_amount("salary","tax_amount")}}) as total_amount
     from
{{source('datafeed_shared_schema','emp_sal')}}
)
select * from emp_data