use test1;


create table product123(pid int primary key ,amouny int);
insert into product123 values(101,876),(102,745);
select * from product123;

create table order123(oid int, city varchar(20),product_id int,
foreign key (product_id) references product123(pid) );

insert into order123 values(9632 , 'jaipur',101);
insert into order123 values(9634 , 'jaipur',102); 
insert into order123 values(9634 , 'jaipur',108);   -- it shows  error 108 not present in reference table 
select * from order123;

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(200)
);


INSERT INTO Authors (AuthorID, AuthorName) VALUES (1, 'John Doe');
INSERT INTO Authors (AuthorID, AuthorName) VALUES (2, 'Minal Pandey');
INSERT INTO Authors (AuthorID, AuthorName) VALUES (3, 'Mahi Pandey');

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID) ON DELETE CASCADE
);

INSERT INTO Books (BookID, Title, AuthorID) VALUES (101, 'Introduction to SQL', 1);
INSERT INTO Books (BookID, Title, AuthorID) VALUES (102, 'Database Fundamentals', 2);
INSERT INTO Books (BookID, Title, AuthorID) VALUES (103, 'Advanced SQL', 2);
INSERT INTO Books (BookID, Title, AuthorID) VALUES (104, 'Web Development', 3);

SELECT * FROM Books;

-- on delete cascade
DELETE FROM Authors WHERE AuthorID = 2;
SELECT * FROM Authors;

-- on udpate cascade
UPDATE Authors SET AuthorID = 1 WHERE AuthorID = 2;
SELECT * FROM Authors;


SELECT * FROM Books;



