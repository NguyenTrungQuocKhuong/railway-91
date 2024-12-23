DROP DATABASE IF EXISTS assignment_01;
CREATE DATABASE assignment_01;
USE assignment_01;
-- Table 1:Department
	-- DepartmentID: định danh của phòng ban (auto increment)
	-- DepartmentName: tên đầy đủ của phòng ban (VD: sale, marketing, ...)
DROP TABLE IF EXISTS Department;
CREATE TABLE Department(
	department_id INT,
    department_name VARCHAR(50)
);
-- Table 2: Position
	-- PositionID: định danh của chức vụ (auto increment)
	-- PositionName: tên chức vụ (Dev, Test, Scrum Master, PM)
DROP TABLE IF EXISTS Position;
CREATE TABLE `Position`(
	position_id INT,
    position_name ENUM("Dev","Test","Scrum","Master","PM")
);
-- Table 3: Account
	-- AccountID: định danh của User (auto increment)
	-- Email:
	-- Username:
	-- FullName:
	-- DepartmentID: phòng ban của user trong hệ thống
	-- PositionID: chức vụ của User
	-- CreateDate: ngày tạo tài khoản
DROP TABLE IF EXISTS `Account`;
CREATE TABLE `Account`(
	account_id INT,
    email VARCHAR(50),
    username VARCHAR(50),
    fullname VARCHAR(50),
    department_id INT,
    position_id INT,
    createdate DATE
);
-- Table 4: Group
	-- GroupID: định danh của nhóm (auto increment)
	-- GroupName: tên nhóm
	-- CreatorID: id của người tạo group
	-- CreateDate: ngày tạo group
DROP TABLE IF EXISTS `Group`;
CREATE TABLE `Group`(
	group_id INT,
    group_name VARCHAR(50),
    creator_id INT,
    createdate DATE
);
-- Table 5: GroupAccount
	-- GroupID: định danh của nhóm
	-- AccountID: định danh của User
	-- JoinDate: Ngày user tham gia vào nhóm
DROP TABLE IF EXISTS `GroupAccount`;
CREATE TABLE `GroupAccount`(
	group_id INT,
    account_id INT,
    joindate DATE
);
-- Table 6: TypeQuestion
	-- TypeID: định danh của loại câu hỏi (auto increment)
	-- TypeName: tên của loại câu hỏi (Essay, Multiple-Choice)
DROP TABLE IF EXISTS `TypeQuestion`;
CREATE TABLE `TypeQuestion`(
	type_id INT,
    type_name VARCHAR(50)
);   
-- Table 7: CategoryQuestion
	-- CategoryID: định danh của chủ đề câu hỏi (auto increment)
	-- CategoryName: tên của chủ đề câu hỏi (Java, NET, SQL, Postman, Ruby,...)
DROP TABLE IF EXISTS `CategoryQuestion`;
CREATE TABLE `CategoryQuestion`(
	category_id INT,
    category_name ENUM("Java","NET","Postman","Ruby")
);   
-- Table 8: Question
	-- QuestionID: định danh của câu hỏi (auto increment)
	-- Content: nội dung của câu hỏi
	-- CategoryID: định danh của chủ đề câu hỏi
	-- TypeID: định danh của loại câu hỏi
	-- CreatorID: id của người tạo câu hỏi
	-- CreateDate: ngày tạo câu hỏi
DROP TABLE IF EXISTS Question;
CREATE TABLE Question(
	question_id INT,
    content	VARCHAR(255),
    category_id INT,
    type_id INT,
    creator_id INT,
    createdate DATE
);
-- Table 9: Answer
	-- AnswerID: định danh của câu trả lời (auto increment)
	-- Content: nội dung của câu trả lời
	-- QuestionID: định danh của câu hỏi
	-- isCorrect: câu trả lời này đúng hay sai
DROP TABLE IF EXISTS Answer;
CREATE TABLE Answer(
	answer_id INT,
    content	VARCHAR(255),
    question_id INT,
    iscorrect BOOLEAN
);
-- Table 10: Exam
	-- ExamID: định danh của đề thi (auto increment)
	-- Code: mã đề thi
	-- Title: tiêu đề của đề thi
	-- CategoryID: định danh của chủ đề thi
	-- Duration: thời gian thi
	-- CreatorID: id của người tạo đề thi
	-- CreateDate: ngày tạo đề thi
DROP TABLE IF EXISTS Exam;
CREATE TABLE Exam(
	exam_id INT,
    `code` VARCHAR(10),
    title VARCHAR(50),
    category_id INT,
    duration INT,
    create_id INT,
    createdate DATE
);
-- Table 11: ExamQuestion
	-- ExamID: định danh của đề thi
	-- QuestionID: định danh của câu hỏi
DROP TABLE IF EXISTS ExamQuestion;
CREATE TABLE ExamQuestion(  
	exam_id INT,
    question_id INT
);