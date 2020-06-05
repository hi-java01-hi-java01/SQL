select  initcap('aaaaaa')
from dual;

/*단일행 함수*/


/*문자 함수*/
--initcap() 첫글자만 대문자로 변경
select  email, 
        initcap(email)a
from employees;

select email, initcap(email), department_id
from employees
where department_id = 100;


--LOWER(컬럼명) / UPPER(컬럼명)
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

--LPAD(컬럼명, 자리수, ‘채울문자’) /  RPAD(컬럼명, 자리수, ‘채울문자’)
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




-------------------------------------------------------------
/*숫자 함수*/
--ROUND(숫자, 출력을 원하는 자리수) 
select  round(123.345, 2) as "r2",
        round(123.956, 0) as "r0",
        round(126.456, -1) as "r-1"
from dual;

--TRUNC(숫자, 출력을 원하는 자리수) 
select  trunc(123.349, 2) as "r2",
        trunc(123.956, 0) as "r0",
        trunc(123.456, -2) as "r-2"
from dual;

/*날짜 함수*/
--sysdate
select sysdate
from dual;

select sysdate, first_name
from employees;

--날짜함수 – MONTH_BETWEEN(d1, d2) 
select  sysdate, 
        hire_date,
        months_between(sysdate, hire_date)
from employees
where department_id = 110;

select  LAST_DAY('20/06/06'),
        LAST_DAY(sysdate)
from dual;


/*변환 함수*/

--TO_CHAR(n,fmt)
--왜 결과가 2개일까???
select  first_name, to_char(9876, '99999')
from employees
where department_id = 110;

select  to_char(9876, '99999'),
        to_char(9876, '099999'),
        to_char(9876, '$9999'),
        to_char(9876, '9999.99'),
        to_char(9876, '99,999')
from dual;


--TO_CHAR(n,fmt)
select  sysdate,
        to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS')
from dual;


--NVL(컬럼명, null일때값)/NVL2(컬럼명, null아닐때값, null일때 값)
select  first_name, 
        commission_pct,
        nvl(commission_pct, 0),
        salary * commission_pct,
        salary * nvl(commission_pct, 0),
        nvl2(commission_pct, 1234, 0)
from employees;
