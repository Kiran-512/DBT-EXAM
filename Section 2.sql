#Section 2
/*
Write a stored procedure by the name of PROC1 that accepts two varchar strings
as parameters. Your procedure should then determine if the first varchar string
exists inside the varchar string. For example, if string1 = ‘DAC’ and string2 =
‘CDAC, then string1 exists inside string2. The stored procedure should insert the
appropriate message into a suitable TEMPP output table. Calling program for the
stored procedure need not be written.
*/

#OUTPUT TABLE
create table tempp
(
Result varchar(15)
);

delimiter //
create procedure PROC1(Str1 varchar(10),Str2 varchar(20))
begin
    if instr(str2,str1) then insert into tempp values('EXIST');
    else
    insert into tempp values('NOT EXIST');
    END IF;
end; //
delimiter ;

CALL PROC1('DAC','CDAC');   CALL PROC1('DAC','Random');   SELECT * FROM TEMPP;
/*
EXIST
NOT EXIST
*/

/*
. Create a stored function by the name of FUNC1 to take three parameters, the
sides of a triangle. The function should return a Boolean value:- TRUE if the
triangle is valid, FALSE otherwise. A triangle is valid if the length of each side is
less than the sum of the lengths of the other two sides. Check if the dimensions
entered can form a valid triangle. Calling program for the stored function need not
be written.
*/

delimiter //
create function FUNC1(side1 int, side2 int, side3 int)
returns boolean
deterministic
begin
	IF side1 < (side2 + side3) and side2 < (side1 + side3) and side3 < (side2 + side1) then return true;
    else return false;
    end if;
end; // 
delimiter ;

select FUNC1(4,3,6) FROM DUAL; -- OP is 1 which shows valid triangle

select FUNC1(10,3,6) FROM DUAL; -- OP is 0 which shows invalid triangle








