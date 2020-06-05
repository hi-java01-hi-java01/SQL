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



--SUBSTR(컬럼명, 시작위치, 글자수)
select substr('abcdefg', 3, 2)
from dual;

select  first_name,
        substr(first_name, 1, 3),
        substr(first_name, -3, 2)
from employees
where department_id = 100;

--LPAD(컬럼명, 자리수, ‘채울문자’),   RPAD(컬럼명, 자리수, ‘채울문자’)
select  first_name,
        lpad(first_name, 10, '*'),
        rpad(first_name, 10, '*')
from employees;

--REPLACE (컬럼명, 문자1, 문자2)
select  first_name,
        replace(first_name, 'a', '*')
from employees
where department_id = 100;

select  first_name,
        replace(first_name, 'a', '*'),
        substr(first_name, 2, 3),
        replace(first_name, substr(first_name, 2, 3), '***')
from employees
where department_id =100;

--trim() ltrim() rtrim()
select  ltrim('     aaaa       ') || '-----',
        rtrim('     aaaa       ') || '-----',
        trim('     aaaa       ') || '-----'
from dual;