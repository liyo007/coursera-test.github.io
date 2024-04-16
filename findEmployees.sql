 declare
    cursor E is
    select empno,ename,job,deptno from employee_1098 where deptno = '10';
    Eempno employee_1098.empno%type;
    Eename employee_1098.ename%type;
    Ejob employee_1098.job%type;
    Edeptno employee_1098.deptno%type;
 begin
open E;
loop
 fetch E into Eempno, Eename, Ejob, Edeptno;
 Exit when E%notfound;
dbms_output.put_line(Eempno||' '||Eename||' '||Ejob||' '||Edeptno);
end loop; 

close E;
end;
/
