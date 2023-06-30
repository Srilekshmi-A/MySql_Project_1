/*You are going to build a project based on Library Management System. It keeps
track of all information about books in the library, their cost, status and total
number of books available in the library.*/

#----------------Create a database named library and create following TABLES in the database:-----------------------------
#-----------------1. Branch 2. Employee 3. Customer 4. IssueStatus 5. ReturnStatus 6. Books-------------------------------
CREATE DATABASE Library;
USE Library;
/*-----------------------------------Attributes for the tables:------------------------------------------
									1. Branch
									Branch_no - Set as PRIMARY KEY
									Manager_Id
                                    Branch_address
 ----------------------------------Contact_no --------------------------------------------------------*/

CREATE TABLE Branch (Branch_no INT PRIMARY KEY NOT NULL UNIQUE,
Manager_Id INT UNIQUE,
Branch_address VARCHAR(100),
Contact_no VARCHAR(10));
INSERT INTO Branch VALUES ( 1121,101,'Thiruvalla,Pathanamthitta,Kerala','9562415874');
INSERT INTO Branch VALUES ( 1122,103,'Mallapally,Pathanamthitta,Kerala','9562415874');
INSERT INTO Branch VALUES ( 1123,104,'Ranni,Pathanamthitta,Kerala','9562415874');
INSERT INTO Branch VALUES ( 1124,107,'Adoor,Pathanamthitta,Kerala','9562415874');
INSERT INTO Branch VALUES ( 1125,112,'Pandalam,Pathanamthitta,Kerala','9562415874');
INSERT INTO Branch VALUES ( 1126,113,'Kozhencherry,Pathanamthitta,Kerala','9562415874');

INSERT INTO Branch VALUES ( 1131,102,'Kalady,Ernakulam,Kerala','9382714569');
INSERT INTO Branch VALUES ( 1132,105,'Kochi,Ernakulam,Kerala','9382714569');
INSERT INTO Branch VALUES ( 1133,110,'Muvattupuzha,Ernakulam,Kerala','9382714569');
INSERT INTO Branch VALUES ( 1134,111,'Angamaly,Ernakulam,Kerala','9382714569');
INSERT INTO Branch VALUES ( 1135,114,'Perumbavoor,Ernakulam,Kerala','9382714569');
INSERT INTO Branch VALUES ( 1136,115,'Piravom,Ernakulam,Kerala','9382714569');

INSERT INTO Branch VALUES ( 1141,106,'Nattakom,Kottayam,Kerala','9876543211');
INSERT INTO Branch VALUES ( 1142,109,'vaikom,Kottayam,Kerala','9876543211');
INSERT INTO Branch VALUES ( 1143,116,'puthupally,Kottayam,Kerala','9876543211');

INSERT INTO Branch VALUES ( 1151,108,'Attingal,Trivandrum,Kerala','9988456214');
INSERT INTO Branch VALUES ( 1152,117,'varkala,Trivandrum,Kerala','9988456214');
INSERT INTO Branch VALUES ( 1153,118,'Kilimanoor,Trivandrum,Kerala','9988456214');

INSERT INTO Branch VALUES ( 1161,119,'Cherthala,Alappuzha,Kerala','8574965214');

INSERT INTO Branch VALUES ( 1171,120,'Thalassery,Kannur,Kerala','7894561236');
SELECT * FROM Branch;

/*---------------------------------2. Employee---------------------------------------
                            Emp_Id – Set as PRIMARY KEY
                                   Emp_name
                                   Position
                                    Salary
 ------------------------Please Note: Manager_Id from Branch table can be considered as Emp_Id in Employee table.------------------*/
 
 CREATE TABLE Employee (
 Emp_Id INT UNIQUE PRIMARY KEY NOT NULL ,
 Emp_name VARCHAR(30), 
 Position VARCHAR(30),
 Salary DECIMAL,
 FOREIGN KEY(Emp_Id)  REFERENCES Branch(Manager_id) ON DELETE CASCADE);
 


INSERT INTO Employee VALUES(101,'Adya K','Librarian', 60000);
INSERT INTO Employee VALUES(102,'Anish V','Librarian', 60000);
INSERT INTO Employee VALUES(103,'Pradeep B','Library assistant', 40000);
INSERT INTO Employee VALUES(104,'Preeti M','Library assistant ', 40000);
INSERT INTO Employee VALUES(105,'Sindhu B','Library assistant ', 40000);
INSERT INTO Employee VALUES(106,'Srividya N','Librarian ', 60000);
INSERT INTO Employee VALUES(107,'Reji M','Library assistant', 40000);
INSERT INTO Employee VALUES(108,'Ram S','Librarian', 60000);
INSERT INTO Employee VALUES(109,'Sree U','Library assistant', 40000);
INSERT INTO Employee VALUES(110,'Krishna L','Library assistant', 40000);
INSERT INTO Employee VALUES(111,'Alex Y','Library assistant', 40000);
INSERT INTO Employee VALUES(112,'Jobin D','Library clerk', 25000);
INSERT INTO Employee VALUES(113,'Charlie C','Library clerk', 25000);
INSERT INTO Employee VALUES(114,'Leela M','Library clerk ', 25000);
INSERT INTO Employee VALUES(115,'Manu P','Library clerk', 25000);
INSERT INTO Employee VALUES(116,'Radha T','Library clerk', 25000);
INSERT INTO Employee VALUES(117,'Amba R','Library assistant ', 40000);
INSERT INTO Employee VALUES(118,'Bheem K','Library clerk', 25000);
INSERT INTO Employee VALUES(119,'Sona G','Librarian ', 60000);
INSERT INTO Employee VALUES(120,'Radhika A','Librarian', 60000);

SELECT * FROM Employee;

/*------------------------------------------3. Customer----------------------------------------
                                     Customer_Id - Set as PRIMARY KEY
                                           Customer_name
                                            Customer_address
 --------------------------------------------Reg_date-----------------------------------------------*/
CREATE TABLE Customer (
Customer_Id INT NOT NULL PRIMARY KEY, 
Customer_name VARCHAR(30), 
Customer_address VARCHAR(100), 
Reg_date DATETIME);

INSERT INTO Customer VALUES (123,'Charu S','Pandalam,Pathanamthitta, Kerala' ,'2022-01-03'); 
INSERT INTO Customer VALUES (124,'Deepa G','Kumbazha Rd,Pathanamthitta, Kerala', '2023-01-07'); 
INSERT INTO Customer VALUES (125,'Aadav J','AM Road,Perumbavoor, Kerala', '2022-06-08'); 
INSERT INTO Customer VALUES (126,'Kashi H','Logos Junction,Kottayam, Kerala', '2023-01-06'); 
INSERT INTO Customer VALUES (127,'Mithul G ','Gandhinagar,Kochi, Kerala', '2021-04-26'); 
INSERT INTO Customer VALUES (128,'Nayan P','Changanacherry, Kerala', '2023-03-14'); 
INSERT INTO Customer VALUES (129,' Devi K','Kamaleshwaram,Trivandrum, Kerala' ,'2022-12-20'); 
INSERT INTO Customer VALUES (130,'Pankaj R','Hill View,Nagercoil, Kerala' ,'2022-11-22'); 
INSERT INTO Customer VALUES (131,'Fida S','Kadavanthra,Cochin, Kerala ', '2023-02-19'); 
INSERT INTO Customer VALUES (132,' Martin F','Calicut, Kerala', '2023-05-18'); 
INSERT INTO Customer VALUES (133,' Joji P','Aranmula,Pathanamthitta',' 2021-10-25'); 
INSERT INTO Customer VALUES (134,'Isha L','Kalady,Ernakulam,Kerala', '2021-09-26'); 
INSERT INTO Customer VALUES (135,'Thomas D','Pallicathodu,Kottayam,Kerala' ,'2021-12-13'); 

SELECT * FROM Customer;



/*------------------------------------------6. Books------------------------------
                                     ISBN - Set as PRIMARY KEY
                                        Book_title
                                         Category
                                     Rental_Price
                            Status [Give yes if book available and no if book not available]
                                              Author
----------------------------------------------- Publisher--------------------------------*/
 CREATE TABLE Books(
 ISBN VARCHAR(30) PRIMARY KEY, 
 Book_title VARCHAR(100), 
 Category VARCHAR(30), 
 Rental_Price DECIMAL, 
 Status_ VARCHAR(30),
 Author VARCHAR(30), 
 Publisher VARCHAR (30));
 
 INSERT INTO Books VALUES(801,'Many lives many masters','Self-Help',25,'yes','Dr Brian Weiss','‎Piatkus');
 INSERT INTO Books VALUES(802,'Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones','Self-Help',25,'yes','James Clear','Random House Business');
 INSERT INTO Books VALUES(803,'The Secret ','Self-Help',25,'yes','Rhonda Byrne','‎Simon & Schuster.');
 
INSERT INTO Books VALUES(804,'Sapiens: A Brief History of Humankinds','History',30,'no','Yuval Noah Harari','‎Harper');
INSERT INTO Books VALUES(805,'Guns, Germs, and Steel','History',30,'no','Jared Diamond','W.W.Norton and Company');
INSERT INTO Books VALUES(806,'The Last Mughal','History',30,'no','William Dalrymple','‎Penguin India');
 
INSERT INTO Books VALUES(807,'The Alchemist','Fiction',20,'yes','Paulo Coelho','‎Harper');
INSERT INTO Books VALUES(808,'The Four Winds: A Novel','Fiction',20,'yes','Kristin Hannah','‎Macmillans');
INSERT INTO Books VALUES(809,'The Da Vinci Code','Fiction',20,'yes','Dan Brown','‎Kadokawa Corporation');
  
INSERT INTO Books VALUES(810,'When Breath Becomes Air','Non-Fiction',20,'yes','Paul Kalanithi','‎Random House');
INSERT INTO Books VALUES(811,'A Brief History of Time','Non-Fiction',20,'yes','Stephen Hawking','‎Bantam');
INSERT INTO Books VALUES(812,'Thinking, Fast and Slow','Non-Fiction',20,'yes','Daniel Kahneman','‎‎Penguin Books Ltd');
 
INSERT INTO Books VALUES(813,'Odyssey','Poetry',10,'yes','Homer','Simon & Schuster.');
INSERT INTO Books VALUES(814,'The Collected Poems','Poetry',10,'yes','Sylvia Plath','‎Faber and Faber');

SELECT * FROM Books;
/*-----------------------------------------4. IssueStatus---------------------------------------------------------------
                                 Issue_Id - Set as PRIMARY KEY
                    Issued_cust – Set as FOREIGN KEY and it refer customer_id in CUSTOMER table
                                        Issued_book_name
                                          Issue_date
 ---------------------------------Isbn_book – Set as FOREIGN KEY and it should refer isbn in BOOKS table---------------------*/
 
 
 
 CREATE TABLE IssueStatus( 
 Issue_Id INT NOT NULL PRIMARY KEY, 
 Issued_cust INT NOT NULL , 
 Issued_book_name VARCHAR(100), 
 Issue_date DATETIME, 
 Isbn_book VARCHAR(30),
 FOREIGN KEY (Issued_cust) REFERENCES  CUSTOMER ( customer_id) ON DELETE CASCADE,
 FOREIGN KEY(Isbn_book )REFERENCES BOOKS(isbn) ON DELETE CASCADE);
 
 
 
 INSERT INTO IssueStatus VALUES(1111,123,'Many lives Many Masters','2023-01-06',801);
 INSERT INTO IssueStatus VALUES(2222,128,'Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones','2023-01-06',802);
 INSERT INTO IssueStatus VALUES(3333,129,'The Secret','2023-04-06',803);
 INSERT INTO IssueStatus VALUES(4444,125,'Sapiens: A Brief History of Humankinds','2023-06-06',804);
 INSERT INTO IssueStatus VALUES(5555,130,'Guns, Germs, and Steel','2023-06-08',805);
 INSERT INTO IssueStatus VALUES(6666,131,'The Last Mughal','2023-05-06',806);
 INSERT INTO IssueStatus VALUES(7777,124,'The Alchemist','2023-04-06',807);
 INSERT INTO IssueStatus VALUES(8888,126,'The Four Winds: A Novel','2023-03-06',808);
 INSERT INTO IssueStatus VALUES(9999,132,'The Da Vinci Code','2023-03-06',809);

SELECT * FROM IssueStatus;

/*-----------------------------------------------5. ReturnStatus-----------------------------
                                      Return_Id - Set as PRIMARY KEY
                                               Return_cust
                                               Return_book_name
                                                  Return_date
 ------------------Isbn_book2 - Set as FOREIGN KEY and it should refer isbn in BOOKS table----------------------*/
 CREATE TABLE ReturnStatus(
 Return_Id INT NOT NULL PRIMARY KEY, 
 Return_cust INT, 
 Return_book_name VARCHAR (100),
 Return_date DATETIME, 
 Isbn_book2 VARCHAR(30), 
FOREIGN KEY(Isbn_book2) REFERENCES   BOOKS (isbn) ON DELETE CASCADE );

INSERT INTO ReturnStatus VALUES(1212,123,'Many lives Many Masters','2023-02-06',801);
INSERT INTO ReturnStatus VALUES(1313,128,'Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones','2023-02-06',802);
INSERT INTO ReturnStatus VALUES(1414,129,'The Secret','2023-05-06',803);
INSERT INTO ReturnStatus VALUES(1515,124,'The Alchemist','2023-05-06',807);
INSERT INTO ReturnStatus VALUES(1616,126,'The Four Winds: A Novel','2023-04-06',808);
INSERT INTO ReturnStatus VALUES(1617,132,'The Da Vinci Code','2023-04-06',809);

SELECT * FROM ReturnStatus;
 
#Write the queries for the following:

#  1. Retrieve the book title, category, and rental price of all available books.
SELECT Book_title,Category,Rental_Price FROM Books WHERE Status_ = 'yes';

#  2. List the employee names and their respective salaries in descending order of salary.
SELECT Emp_name, Salary FROM Employee ORDER BY Salary DESC;

#  3. Retrieve the book titles and the corresponding customers who have issued those books.
SELECT Books.Book_title,IssueStatus.Issued_cust FROM IssueStatus INNER JOIN Books ON  IssueStatus.Issued_book_name = Books.Book_title;

#  4. Display the total count of books in each category.
SELECT Category,COUNT(Category)FROM Books GROUP BY Category  ;

#  5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
SELECT Emp_name,position FROM  Employee WHERE salary>50000;

#  6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
SELECT Customer.Customer_name,customer.reg_date,issuestatus.issue_id FROM customer LEFT JOIN issuestatus ON Customer.customer_id = Issuestatus.issued_cust WHERE issue_id IS NULL;

#  7. Display the branch numbers and the total count of employees in each branch.
SELECT Branch_no,COUNT(DISTINCT Manager_id) FROM branch GROUP BY Branch_no;

#  8. Display the names of customers who have issued books in the month of June 2023.
SELECT Customer.Customer_name,Issuestatus.Issue_date FROM customer INNER JOIN  Issuestatus ON Customer.customer_id = Issuestatus.issued_cust WHERE Issue_date BETWEEN '2023-06-01' AND '2023-06-30' ;

#  9. Retrieve book_title from book table containing history.
SELECT book_title FROM Books WHERE  Category ='history' ;

#  10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.
SELECT branch_no,count(Manager_id) FROM branch GROUP BY branch_no HAVING count(manager_id) >5;













