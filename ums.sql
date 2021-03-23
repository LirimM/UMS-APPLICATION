CREATE DATABASE ums;
use ums;
CREATE TABLE users (id INT AUTO_INCREMENT, 
					name VARCHAR(20),
                    email VARCHAR(320),
                    gender CHAR(1),
                    address VARCHAR(20),
                    username varchar(20),
                    password varchar(50),
                    roles char(1),
                    createdate date,
                    primary key (id)
                    );
					
CREATE TABLE university(id INT, 
					name VARCHAR(20),
					email VARCHAR(320),
					address VARCHAR(20),
					tel varchar(20),
                    students int,
					size int,
					createdate VARCHAR(10),
                    primary key (id)
                    );

/* Students (Id, Name, Address, Email, Tel, Gender, Place, Age, CreateDate) */
 CREATE TABLE students (studentid BIGINT, 
					name VARCHAR(20),
                    address VARCHAR(20),
                    email VARCHAR(20),
                    tel varchar(20),
                    gender CHAR(1),
                    place varchar(20),
                    age int,
                    createdate date,
                    uni integer,
                    primary key (studentid),
                    FOREIGN KEY(uni) REFERENCES university(id)
                    );

INSERT INTO users(name, email, gender, address, username,password, roles, createdate) VALUES('Admin', 'admin@ums.com', 'F', 'North America','admin',md5('admin'),'A','1998-05-02');
INSERT INTO users(name, email, gender, address, username,password, roles, createdate) VALUES('Manager', 'manager@ums.com', 'M', 'North America','manager',md5('manager'),'M','1996-05-02');
