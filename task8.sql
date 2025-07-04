use sqlinternship;
show tables;
select * from student2;

DELIMITER //
CREATE PROCEDURE getactivestudents()
begin
	select * from student2 where status = 'ACTIVE';
end // 

DELIMITER ;
DROP PROCEDURE IF EXISTS getactivestudents;

DELIMITER //

CREATE PROCEDURE getactivestudents()
BEGIN
    SELECT * FROM student2 WHERE status = 'ACTIVE';
END //

DELIMITER ;

CALL getactivestudents();


DELIMITER //

CREATE FUNCTION GetDeptCount(deptName VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE dept_count INT;
    SELECT COUNT(*) INTO dept_count FROM student2 WHERE dept = deptName;
    RETURN dept_count;
END //

DELIMITER ;

SELECT GetDeptCount('IT') AS IT_Dept_Students;
