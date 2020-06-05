/*select문 단일행 함수*/
select  initcap('aaaaaa')
from dual;


/*문자 함수*/
--initcap() 첫글자만 대문자로 변경
select  email, 
        initcap(email)
from employees;



