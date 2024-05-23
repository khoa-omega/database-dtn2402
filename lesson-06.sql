-- STORED PROCEDURE: Thủ tục lưu trữ

-- Xóa thủ tục lưu trữ nếu tồn tại
DROP PROCEDURE IF EXISTS sp_01;

-- Tạo thủ tục lưu trữ lấy phòng ban theo id
DELIMITER $$
CREATE PROCEDURE sp_01 (IN in_department_id INT)
BEGIN
	SELECT *
    FROM department
    WHERE department_id = in_department_id;
END $$
DELIMITER ;

CALL sp_01 (5);




