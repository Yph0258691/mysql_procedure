drop procedure if exists test_pro4;
create procedure test_pro4()
begin
declare e_id int;
declare e_age int;
declare e_sex int;
declare e_guojia int;
declare emp_result cursor for select *from test;
declare size int default 0;
declare index int default 0;

select COUNT(*) into size from test;

open emp_result;

while index <size do
		fetch emp_result into e_id,e_age,e_sex,e_guojia;
		select e_id,e_age,e_sex,e_guojia;
		set index=index+1;
end while;
 
close emp_result;

end;
