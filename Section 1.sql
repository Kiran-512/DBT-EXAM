#Section I 

#1. Create table DEPT with the following structure:-
create table DEPT
(
DEPTNO INT(2),
DNAME VARCHAR(15),
LOC VARCHAR(10)
);

INSERT INTO DEPT VALUES
(10,'ACCOUNTING','NEW YORK'),
(20,'RESEARCH','DALLAS'),
(30,'SALES','CHICAGO'),
(40,'OPERATIONS','BOSTON');

SELECT * FROM DEPT;

#2. Create table EMP with the following structure:- 
CREATE TABLE EMP
(
EMPNO INT,
ENAME VARCHAR(10),
JOB VARCHAR(9),
HIREDATE DATE,
SAL FLOAT(7,2),
COMM FLOAT(7,2),
DEPTNO INT(2)
);

INSERT INTO EMP VALUES
(7839, 'KING', 'MANAGER', '1991-11-17', 5000, NULL, 10),
(7698, 'BLAKE', 'CLERK', '1981-05-01', 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER', '1981-06-09', 2450, NULL, 10),
(7566, 'JONES', 'CLERK', '1981-04-02', 2975, NULL, 20),
(7654, 'MARTIN', 'SALESMAN', '1981-09-28', 1250, 1400, 30),
(7499, 'ALLEN', 'SALESMAN', '1981-02-20', 1600, 300, 30);

SELECT * FROM EMP;

#3. Display all the employees where SAL between 2500 and 5000 (inclusive of both)

SELECT * FROM EMP WHERE SAL BETWEEN 2500 AND 5000;
/*
7839	KING	MANAGER	1991-11-17	5000.00		10
7698	BLAKE	CLERK	1981-05-01	2850.00		30
7566	JONES	CLERK	1981-04-02	2975.00		20
*/


#4. Display all the ENAMEs in descending order of ENAME

SELECT ENAME FROM EMP ORDER BY 1 DESC;
/*
MARTIN
KING
JONES
CLARK
BLAKE
ALLEN
*/

#5. Display all the JOBs in lowercase

SELECT LOWER(JOB) from emp;
/*
manager
clerk
manager
clerk
salesman
salesman
*/

#6. Display the ENAMEs and the lengths of the ENAMEs
select ename, length(ename) from emp;
/*
KING	4
BLAKE	5
CLARK	5
JONES	5
MARTIN	6
ALLEN	5
*/

#7. Display the DEPTNO and the count of employees who belong to that DEPTNO
select deptno, count(*) from emp
	group by deptno;
/*
10	2
30	3
20	1
*/

#8. Display the DNAMEs and the ENAMEs who belong to that DNAME.
select dname,ename from emp,dept
where dept.deptno = emp.deptno;
/*
ACCOUNTING	KING
SALES	BLAKE
ACCOUNTING	CLARK
RESEARCH	JONES
SALES	MARTIN
SALES	ALLEN
*/

#9. Display the position at which the string ‘AR’ occurs in the ename.
select instr(ename,'AR') from emp;
/*
0
0
3
0
2
0
*/

#10.  Display the HRA for each employee given that HRA is 20% of SAL.

select sal*0.2 as "HRA" from emp;
/*
1000.00
570.00
490.00
595.00
250.00
320.00
*/

