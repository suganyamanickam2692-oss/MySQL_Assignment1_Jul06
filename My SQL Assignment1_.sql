Drop database if Exists Employee;
Create database Employee;
Use Employee;

Create Table Departments(
Department_Id int Primary key,
Department_Name Varchar(30) unique not null);

Create Table Location(
Location_Id int Primary Key auto_increment,
Location_Name Varchar(50) unique not null);

Create table Employees(
Employee_Id int Primary Key,
Employee_Name varchar(50) Unique Not Null,
Gender ENUM("M","F"),
Age int check(Age>=18),
Hire_Date date default(current_date()),
Designation varchar(30),
Salary int,
Department_Id int,
Location_Id int,
constraint fk_Department_Id foreign key(Department_ID) references Departments(Department_ID),
constraint fk_Location_Id foreign key(Location_ID) references Location(Location_Id));

Alter table Employees add Email varchar(50);
Alter table Employees modify Column Designation varchar(100);
Alter table Employees Drop Column Age;
Alter table Employees Rename Column Hire_Date to Date_Of_Joining;

Rename table Departments to Departments_Info;
Rename table Location to Locations;

Truncate table Employees;
Drop table Employees;
Drop database Employee;


