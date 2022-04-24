--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name, salary.monthly_salary from employees 
join employee_salary on employees.id=employee_salary.employee_id  
join salary on salary.id=employee_salary.salary_id;


-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employees.employee_name, salary.monthly_salary from employees 
join employee_salary on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id 
where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary.monthly_salary from employee_salary
left join employees on employee_salary.employee_id=employees.id
join salary on salary.id=employee_salary.salary_id 
where employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary.monthly_salary from employee_salary 
left join employees on employee_salary.employee_id=employees.id  
join salary on salary.id=employee_salary.salary_id
where employee_name is null and monthly_salary < 2000;


-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employees.employee_name, salary.monthly_salary from employees
left join employee_salary on employee_salary.employee_id=employees.id
left join salary on salary.id=employee_salary.salary_id
where monthly_salary is null;


-- 6. ������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles.role_name  from employees 
left join roles_employee on employees.id=roles_employee.employee_id
left join roles on roles.id=roles_employee.role_id;

-- 7. ������� ����� � ��������� ������ Java �������������.
select employees.employee_name, roles.role_name from employees
left join roles_employee on employees.id=roles_employee.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like '%Java %';

-- 8. ������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_name from employees
left join roles_employee on employees.id=roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%Python%';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles.role_name from roles_employee
right join employees on employees.id=roles_employee.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like '%QA%';

-- 10. ������� ����� � ��������� ������ QA ���������.
select employees.employee_name, roles.role_name from employees
left join roles_employee on employees.id=roles_employee.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like '%Manual%';

-- 11. ������� ����� � ��������� ��������������� QA
select employees.employee_name, roles.role_name from employees 
left join roles_employee on employees.id=roles_employee.employee_id
join roles on roles.id=roles_employee.role_id 
where role_name like '%Automation%';


-- 12. ������� ����� � �������� Junior ������������
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id=roles_employee.employee_id
join roles on roles.id=roles_employee.role_id
where role_name like '%Junior%';

-- 13. ������� ����� � �������� Middle ������������
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id=roles_employee.employee_id
join roles on roles.id=roles_employee.role_id
where role_name like '%Middle%';

-- 14. ������� ����� � �������� Senior ������������
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id=roles_employee.employee_id
join roles on roles.id=roles_employee.role_id
where role_name like '%Senior%';


-- 15. ������� �������� Java �������������
select roles.role_name, salary.monthly_salary from roles 
join roles_employee on roles.id=roles_employee.role_id 
join employee_salary on roles_employee.employee_id=employee_salary.employee_id 
join salary on employee_salary.salary_id=salary.id 
join employees on employees.id=employee_salary.employee_id 
where role_name like '%Java %';


-- 16. ������� �������� Python �������������
select roles.role_name, salary.monthly_salary from roles 
join roles_employee on roles.id=roles_employee.role_id 
join employee_salary on roles_employee.employee_id=employee_salary.employee_id
join salary on salary.id=employee_salary.salary_id 
where role_name like '%Python%';

-- 17. ������� ����� � �������� Junior Python �������������
select roles.role_name, employees.employee_name, salary.monthly_salary from employees  
join employee_salary on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id 
join roles_employee on employees.id=roles_employee.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like '%Junior%' and role_name like '%Python%';

-- 18. ������� ����� � �������� Middle JS �������������
select roles.role_name, employees.employee_name, salary.monthly_salary from employees 
join employee_salary on employees.id=employee_salary.employee_id
join salary on salary.id=employee_salary.salary_id 
join roles_employee on employees.id=roles_employee.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like '%Middle%' and role_name like '%JavaSc%';


-- 19. ������� ����� � �������� Senior Java �������������
select roles.role_name, salary.monthly_salary, employees.employee_name from employees 
join employee_salary on employees.id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id
join roles_employee on employees.id=roles_employee.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like '%Senior%' and role_name like '%Java %';

-- 20. ������� �������� Junior QA ���������
select roles.role_name, salary.monthly_salary from roles 
join roles_employee on roles.id=roles_employee.role_id 
join employee_salary on roles_employee.employee_id=employee_salary.employee_id 
join salary on employee_salary.salary_id=salary.id
where role_name like '%Junior%' and role_name like '%QA%';


-- 21. ������� ������� �������� ���� Junior ������������
select AVG(salary.monthly_salary) as Jun_salary from roles
join roles_employee on roles.id=roles_employee.role_id 
join employee_salary on roles_employee.employee_id=employee_salary.employee_id
join salary on salary.id=employee_salary.salary_id
where role_name like '%Junior%';


-- 22. ������� ����� ������� JS �������������
select sum(salary.monthly_salary) as sum_JS from roles 
join roles_employee on roles.id=roles_employee.role_id 
join employee_salary on roles_employee.employee_id=employee_salary.employee_id 
join salary on employee_salary.salary_id=salary.id
where role_name like '%JavaSc%';

-- 23. ������� ����������� �� QA ���������
select min(salary.monthly_salary) as min_QA from roles 
join roles_employee on roles.id=roles_employee.role_id 
join employee_salary on roles_employee.employee_id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id 
where role_name like '%QA%';


-- 24. ������� ������������ �� QA ���������
select max(salary.monthly_salary) as max_QA from roles 
join roles_employee on roles.id=roles_employee.role_id 
join employee_salary on roles_employee.employee_id=employee_salary.employee_id 
join salary on salary.id=employee_salary.salary_id 
where role_name like '%QA%';


-- 25. ������� ���������� QA ���������
select count(employees.employee_name) from roles_employee
join employees on employees.id=roles_employee.employee_id 
join roles on roles.id=roles_employee.role_id 
where role_name like '%QA%';


-- 26. ������� ���������� Middle ������������.
select count(employees.employee_name) from roles_employee
join employees on employees.id=roles_employee.employee_id 
join roles on roles.id=roles_employee.role_id
where role_name like '%Middle%';


-- 27. ������� ���������� �������������
select count(roles.role_name) as count_developer from roles
join roles_employee on roles.id=roles_employee.role_id 
where roles.role_name like '%developer%';

-- 28. ������� ���� (�����) �������� �������������.
select sum(salary.monthly_salary) from roles
join roles_employee on roles.id=roles_employee.role_id 
join employee_salary on roles_employee.employee_id=employee_salary.employee_id 
join salary on employee_salary.salary_id=salary.id 
where roles.role_name like '%developer%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employee_name, roles.role_name, salary.monthly_salary from employees 
join employee_salary on employees.id=employee_salary.employee_id
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
join roles on roles.id=roles_employee.role_id 
join salary on salary.id=employee_salary.salary_id
order by salary.monthly_salary;


-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from employees 
join employee_salary on employees.id=employee_salary.employee_id
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
join roles on roles.id=roles_employee.role_id 
join salary on salary.id=employee_salary.salary_id
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary;


-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from employees 
join employee_salary on employees.id=employee_salary.employee_id
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
join roles on roles.id=roles_employee.role_id 
join salary on salary.id=employee_salary.salary_id
where salary.monthly_salary < 2300
order by salary.monthly_salary;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary from employees 
join employee_salary on employees.id=employee_salary.employee_id
join roles_employee on employee_salary.employee_id=roles_employee.employee_id 
join roles on roles.id=roles_employee.role_id 
join salary on salary.id=employee_salary.salary_id
where salary.monthly_salary in (1100, 1500, 2000)
order by salary.monthly_salary;
