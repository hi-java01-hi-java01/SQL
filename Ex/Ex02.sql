/*select문 단일행 함수*/
select  initcap('aaaaaa')
from dual;


/*문자 함수*/
--initcap() 첫글자만 대문자로 변경
select  email, 
        initcap(email)
from employees;


select email, initcap(email), department_id
from employees
where department_id = 100;



--LOWER(컬럼명),  UPPER(컬럼명)
select lower('aAaAaAaAaA'), upper('aAaAaAaAaA')
from dual;

select first_name, lower(first_name), upper(first_name)
from employees
where department_id = 100;