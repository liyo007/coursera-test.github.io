DECLARE
  eempno employee_1098.empno%type;
  esal employee_1098.sal%type;
  new_sal employee_1098.sal%type;
  deptno employee_1098.deptno%type;
  CURSOR c IS
    select empno, sal, deptno from employee_1098;
begin
  open c;
  loop
    fetch c into eempno, esal, deptno;
    exit when c%NOTFOUND;
    
    if deptno = 10 then
      new_sal := esal + 1000;
    elsif deptno = 20 then
      new_sal := esal + 500;
    elsif deptno = 30 THEN
      new_sal := esal + 800;
    else
      new_sal := esal;
    end if;
    
    insert into temployee1 values(eempno,esal,new_sal);

  end loop;
  
  commit;
  close c;
END;
/
