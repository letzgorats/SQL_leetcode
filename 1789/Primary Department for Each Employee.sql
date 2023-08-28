select distinct employee_id, department_id
from Employee
where primary_flag ='Y'
union
select distinct employee_id, department_id
from (
    select employee_id, department_id, count(department_id) over(partition by employee_id) cnt
    from Employee
)
where cnt = 1


-- select employee_id, department_id, count(department_id) over(partition by employee_id) cnt
-- from Employee
