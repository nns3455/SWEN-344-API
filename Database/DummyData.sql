/* This script is intended only for testing purposes and will insert a bunch of dummy data into 
the tables. For usersnames and passwords see the inserts below 
The password used for each user is 'password' with no quotes, encrypted using password_hash()
*/

/*
Drop existing data
*/
DELETE FROM User;
DELETE FROM Student;
DELETE FROM Professor;
DELETE FROM CoopCompany;
DELETE FROM CoopEmployee;
DELETE FROM StudentEval;
DELETE FROM EmployeeEval;
DELETE FROM Course;
DELETE FROM Section;
DELETE FROM Student_Section;
DELETE FROM Waitlist;
DELETE FROM Schedule;
DELETE FROM Term;
DELETE FROM Prerequisite;
DELETE FROM Publisher;
DELETE FROM Book;
DELETE FROM Author;
DELETE FROM BookAuthor;
DELETE FROM SectionBook;
DELETE FROM Classroom;
DELETE FROM UniversityEmployee;
DELETE FROM Grade;
DELETE FROM Comment;

/* 
User data
*/

INSERT INTO User (USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES ("Student1", "$2y$10$OPdL0s8h6N61JJHQIpmhGOmy9yuzi38azcjcF/pojNsnBFn0tDcKm", "John", "Doe", "JDoe@email.com", "Student");
INSERT INTO User (USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES ("Student2", "$2y$10$OPdL0s8h6N61JJHQIpmhGOmy9yuzi38azcjcF/pojNsnBFn0tDcKm", "Jane", "Doe", "JaDoe@email.com", "Student");
INSERT INTO User (USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES ("Student3", "$2y$10$OPdL0s8h6N61JJHQIpmhGOmy9yuzi38azcjcF/pojNsnBFn0tDcKm", "John", "Smith", "Smithe@email.com", "Student");
INSERT INTO User (USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES ("Student4", "$2y$10$OPdL0s8h6N61JJHQIpmhGOmy9yuzi38azcjcF/pojNsnBFn0tDcKm", "Jane", "Smith", "Smithe@email.com", "Student");
INSERT INTO User (USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES ("Student5", "$2y$10$OPdL0s8h6N61JJHQIpmhGOmy9yuzi38azcjcF/pojNsnBFn0tDcKm", "Bill", "Smith", "Smithe@email.com", "Student");
INSERT INTO User (USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES ("Student6", "$2y$10$OPdL0s8h6N61JJHQIpmhGOmy9yuzi38azcjcF/pojNsnBFn0tDcKm", "Sophie", "Smith", "Smithe@email.com", "Student");
INSERT INTO User (USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES ("Student8", "$2y$10$OPdL0s8h6N61JJHQIpmhGOmy9yuzi38azcjcF/pojNsnBFn0tDcKm", "John", "Smith", "Smithe@email.com", "Student");
INSERT INTO User (USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES ("Student3", "$2y$10$OPdL0s8h6N61JJHQIpmhGOmy9yuzi38azcjcF/pojNsnBFn0tDcKm", "John", "Smith", "Smithe@email.com", "Student");
INSERT INTO User (USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES ("Admin1", "$2y$10$OPdL0s8h6N61JJHQIpmhGOmy9yuzi38azcjcF/pojNsnBFn0tDcKm", "Sammy", "Gray", "Gray@email.com", "Admin");
INSERT INTO User (USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES ("Professor1", "$2y$10$OPdL0s8h6N61JJHQIpmhGOmy9yuzi38azcjcF/pojNsnBFn0tDcKm", "Superman", "Clark", "Clark@email.com", "Professor");
INSERT INTO User (USERNAME, PASSWORD, FIRSTNAME, LASTNAME, EMAIL, ROLE) VALUES ("Professor2", "$2y$10$OPdL0s8h6N61JJHQIpmhGOmy9yuzi38azcjcF/pojNsnBFn0tDcKm", "Bruce", "Willis", "BWilly@email.com", "Professor");

INSERT INTO Student (USER_ID, YEAR_LEVEL, GPA) VALUES (1, 3, 3.4);
INSERT INTO Student (USER_ID, YEAR_LEVEL, GPA) VALUES (2, 1, 1.9);
INSERT INTO Student (USER_ID, YEAR_LEVEL, GPA) VALUES (3, 5, 4.0);
INSERT INTO Student (USER_ID, YEAR_LEVEL, GPA) VALUES (4, 2, 4.0);
INSERT INTO Student (USER_ID, YEAR_LEVEL, GPA) VALUES (5, 2, 4.0);
INSERT INTO Student (USER_ID, YEAR_LEVEL, GPA) VALUES (6, 2, 4.0);
INSERT INTO Student (USER_ID, YEAR_LEVEL, GPA) VALUES (7, 2, 4.0);

INSERT INTO Professor (USER_ID) VALUES (1);
INSERT INTO Professor (USER_ID) VALUES (2);

INSERT INTO Admin (USER_ID) VALUES (1);
INSERT INTO Admin (USER_ID) VALUES (2);
INSERT INTO Admin (USER_ID) VALUES (3);

/*
Co-op Eval Data
*/

INSERT INTO CoopCompany (STUDENTID, NAME, ADDRESS) VALUES (1, "Company", "Address");
INSERT INTO CoopCompany (STUDENTID, NAME, ADDRESS) VALUES (2, "Company1", "Address1");
INSERT INTO CoopCompany (STUDENTID, NAME, ADDRESS) VALUES (3, "Company2", "Address2");

INSERT INTO CoopEmployee (COMPANYID, FIRSTNAME, LASTNAME, EMAIL) VALUES (1, "Bob", "TheMan", "BobTheMan@bob.com");
INSERT INTO CoopEmployee (COMPANYID, FIRSTNAME, LASTNAME, EMAIL) VALUES (2, "Bill", "Dodo", "Dodo@bob.com");
INSERT INTO CoopEmployee (COMPANYID, FIRSTNAME, LASTNAME, EMAIL) VALUES (3, "Jill", "jill", "Jill@jill.com");

INSERT INTO StudentEval (STUDENTID, COMPANYID, COMPLETE) VALUES (1, 1, 0);
INSERT INTO EmployeeEval (EMPLOYEEID, COMPANYID, COMPLETE) VALUES (2, 3, 0);

/*
Enrollment Data
*/
INSERT INTO Course (COURSE_CODE, NAME, CREDITS, MIN_GPA, AVAILABILITY) VALUES ("SWEN-344", "Web Engineering", 3, 3, 1);
INSERT INTO Course (COURSE_CODE, NAME, CREDITS, MIN_GPA, AVAILABILITY) VALUES ("SWEN-444", "Human Requirements and Design", 3, 3, 0);
INSERT INTO Course (COURSE_CODE, NAME, CREDITS, MIN_GPA, AVAILABILITY) VALUES ("BEER-101", "Beers of the World", 1, 2, 1);
INSERT INTO Course (COURSE_CODE, NAME, CREDITS, MIN_GPA, AVAILABILITY) VALUES ("WINE-101", "Wines of the World", 1 , 2, 1);
INSERT INTO Section (MAX_STUDENTS, PROFESSOR_ID, COURSE_ID, TERM_ID, CLASSROOM_ID, AVAILABILITY) VALUES (20, 1, 1, 1, 1, 1);
INSERT INTO Section (MAX_STUDENTS, PROFESSOR_ID, COURSE_ID, TERM_ID, CLASSROOM_ID, AVAILABILITY) VALUES (15, 1, 2, 1, 3, 1);
INSERT INTO Section (MAX_STUDENTS, PROFESSOR_ID, COURSE_ID, TERM_ID, CLASSROOM_ID, AVAILABILITY) VALUES (100, 1, 3, 2, 2, 1);
INSERT INTO Section (MAX_STUDENTS, PROFESSOR_ID, COURSE_ID, TERM_ID, CLASSROOM_ID, AVAILABILITY) VALUES (30, 1, 3, 2, 2, 1);
INSERT INTO Section (MAX_STUDENTS, PROFESSOR_ID, COURSE_ID, TERM_ID, CLASSROOM_ID, AVAILABILITY) VALUES (10, 1, 2, 2, 2, 0);

INSERT INTO Student_Section (STUDENT_ID, SECTION_ID) VALUES (1, 1);
INSERT INTO Student_Section (STUDENT_ID, SECTION_ID) VALUES (2, 1);
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> origin/master
INSERT INTO Student_Section (STUDENT_ID, SECTION_ID) VALUES (2, 3);
INSERT INTO Student_Section (STUDENT_ID, SECTION_ID) VALUES (2, 2);
INSERT INTO Student_Section (STUDENT_ID, SECTION_ID) VALUES (5, 4);
INSERT INTO Student_Section (STUDENT_ID, SECTION_ID) VALUES (3, 1);
INSERT INTO Student_Section (STUDENT_ID, SECTION_ID) VALUES (4, 6);
<<<<<<< HEAD
>>>>>>> refs/remotes/roda0313/master
=======
>>>>>>> origin/master

INSERT INTO Waitlist (SECTION_ID, STUDENT_ID, ADDED_DATE) VALUES (1, 1, "2017-09-29 00:00:00.000");
INSERT INTO Waitlist (SECTION_ID, STUDENT_ID, ADDED_DATE) VALUES (1, 2, "2017-09-15 00:00:00.000");
INSERT INTO Schedule (SECTION_ID, DAY_OF_WEEK, START_TIME, END_TIME) VALUES (1, "Monday", "18:00", "19:00");
INSERT INTO Schedule (SECTION_ID, DAY_OF_WEEK, START_TIME, END_TIME) VALUES (2, "Tuesday", "18:00", "19:00");

INSERT INTO Term (CODE, START_DATE, END_DATE) VALUES ("20161", "2017-01-23 00:00:00.000", "2017-05-15 00:00:00.000");
INSERT INTO Term (CODE, START_DATE, END_DATE) VALUES ("20162", "2017-08-25 00:00:00.000", "2017-12-15 00:00:00.000");

INSERT INTO Prerequisite (COURSE_ID, PREREQ_COURSE_ID) VALUES (2, 1);
INSERT INTO Prerequisite (COURSE_ID, PREREQ_COURSE_ID) VALUES (4, 3);
INSERT INTO Prerequisite (COURSE_ID, PREREQ_COURSE_ID) VALUES (4, 1);



/*
Book store Data
*/
INSERT INTO Publisher (NAME, ADDRESS, WEBSITE) VALUES ("RIT", "123 Main St", "example.com");
INSERT INTO Publisher (NAME, ADDRESS, WEBSITE) VALUES ("Scholastic", "12 Main St", "hello.com");

INSERT INTO Book (TITLE, PUBLISHER_ID, PRICE, AVAILABLE, COUNT) VALUES ("Intro to Web Engineering", 1, 4.99, 1, 50);
INSERT INTO Book (TITLE, PUBLISHER_ID, PRICE, AVAILABLE, COUNT) VALUES ("Intro to Home brewing", 2, 2.99, 1, 25);
INSERT INTO Book (TITLE, PUBLISHER_ID, PRICE, AVAILABLE, COUNT) VALUES ("Dan Is Cool", 1, 49.99, 0, 0);

INSERT INTO Author (FIRST_NAME, LAST_NAME) VALUES ("Dan", "Krutz");
INSERT INTO Author (FIRST_NAME, LAST_NAME) VALUES ("Sam", "Malachowsky");

INSERT INTO BookAuthor (BOOK_ISBN, AUTHOR_ID) VALUES (1, 1);
INSERT INTO BookAuthor (BOOK_ISBN, AUTHOR_ID) VALUES (2, 1);
INSERT INTO BookAuthor (BOOK_ISBN, AUTHOR_ID) VALUES (3, 2);



INSERT INTO SectionBook (SECTION_ID, BOOK_ISBN) VALUES (1, 1);
INSERT INTO SectionBook (SECTION_ID, BOOK_ISBN) VALUES (3, 2);
INSERT INTO SectionBook (SECTION_ID, BOOK_ISBN) VALUES (1, 3);
/*
Facility Management Data
*/
INSERT INTO Classroom (CAPACITY, ROOM_NUM, BUILDING_ID) VALUES (20, 2010, 70);
INSERT INTO Classroom (CAPACITY, ROOM_NUM, BUILDING_ID) VALUES (100, 1010, 20);
INSERT INTO Classroom (CAPACITY, ROOM_NUM, BUILDING_ID) VALUES (10, 3050, 70);

/*
HR Data
*/
INSERT INTO UniversityEmployee (USER_ID, MANAGER_ID, TITLE, ADDRESS, PHONE, SALARY) VALUES (1, 1, "Admin", "Address", "8461226487", 2000000.0);
INSERT INTO UniversityEmployee (USER_ID, MANAGER_ID, TITLE, ADDRESS, PHONE, SALARY) VALUES (2, 4, "Manager", "Address1", "6481585522", 75000.0);
INSERT INTO UniversityEmployee (USER_ID, MANAGER_ID, TITLE, ADDRESS, PHONE, SALARY) VALUES (3, 2, "Employee", "Address2", "5851354846", 50000.0);
INSERT INTO UniversityEmployee (USER_ID, MANAGER_ID, TITLE, ADDRESS, PHONE, SALARY) VALUES (4, 1, "Employee", "Address3", "3153648154", 1000000.0);

/*
Grading Data
*/
INSERT INTO Grade (VALUE, IS_LOCKED, STUDENT_SECTION_ID) VALUES (90, 0, 1);
INSERT INTO Grade (VALUE, IS_LOCKED, STUDENT_SECTION_ID) VALUES (75, 0, 2);

INSERT INTO Comment (USER_ID, GRADE_ID, CONTENT) VALUES (1, 1, "I can't believe you didn't give me an A+!");
INSERT INTO Comment (USER_ID, GRADE_ID, CONTENT) VALUES (2, 2, "I can't believe you didn't give me an A+!");
