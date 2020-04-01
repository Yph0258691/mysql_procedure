CREATE  FUNCTION `getNthHighestSalary`(`N` int) RETURNS int(11)
BEGIN
  set N=N-1;
	RETURN (select IFNULL((select DISTINCT Salary from employee order by Salary desc limit N,1),NULL));
END

select getNthHighestSalary(10)

#开启函数
#set global log_bin_trust_function_creators=1;

#show variables like 'log_bin_trust_function_creators';