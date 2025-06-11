
CREATE TABLE borrower(
CardNum int,
BorrowerName varchar(100),
BorrowerAddress varchar(200),
BorrowerPhone varchar(50),
Src_Update_date DATETIME,
create_timestamp DateTime,
is_active char(1)
);

CREATE TABLE library_branch(
BranchID int,
BranchName varchar(50),
BranchAddress varchar(50),
LocationID int,
Src_Update_date DATETIME,
create_timestamp DateTime
);

CREATE TABLE book(
BookID int,
Title varchar(50),
PublisherName varchar(50),
AuthorID int,
is_active CHAR(1),
Src_Update_date DATETIME,
create_timestamp DateTime
);

CREATE TABLE book_authors(
AuthorID int,
BookID int,
Src_Update_date DATETIME,
create_timestamp DateTime
);  

CREATE TABLE book_loans(
loansID int,
CardNum int,
BookID int,
BranchID int,
DateOut DATETIME,
DueDate  DATETIME,
ReturnDate DATETIME,
last_update DATETIME,
Src_Update_date DATETIME,
create_timestamp DateTime
);

CREATE TABLE publisher(
PublisherName varchar(50),
publisherAddress varchar(100),
PublisherPhone varchar(20),
Src_Update_date DATETIME,
create_timestamp DateTime,
is_active char(1)
);

CREATE TABLE location (
    LocationID int PRIMARY KEY,
    Country varchar(50),
    State varchar(50),
    City varchar(50),
    PostalCode varchar(20),
    Region varchar(50),
    Src_Update_date DATETIME,
	create_timestamp DateTime,
    active CHAR(1) DEFAULT 'Y',
    is_last BIT DEFAULT 1
);

CREATE TABLE author (
    AuthorID int PRIMARY KEY,
    AuthorName varchar(100),
    AuthorAddress varchar(200),
    AuthorPhone varchar(50),
    active CHAR(1),
	Src_Update_date DATETIME,
	create_timestamp DateTime
);


CREATE TABLE Conf_Table(
table_name varchar(30)
,last_extract_date DATETIME,
);
INSERT INTO Conf_Table VALUES
	('borrower', '1950-01-01'),
	('book', '1950-01-01'),
	('book_loans', '1950-01-01'),
	('library_branch', '1950-01-01'),
	('book_authors', '1950-01-01'),
	('publisher', '1950-01-01')
	
	
INSERT INTO Conf_Table VALUES
  ('location', '1950-01-01')

UPDATE Conf_Table
SET last_extract_date = '1950-01-01T10:00:00.000'
WHERE table_name  = 'location';


UPDATE Conf_Table
SET last_extract_date = '1950-01-01T10:00:00.000'
WHERE table_name  = 'borrower';

UPDATE Conf_Table
SET last_extract_date = '1950-01-01T12:30:00.000'
WHERE table_name  = 'book';

UPDATE Conf_Table
SET last_extract_date= '1950-01-01T14:45:00.000'
WHERE table_name  = 'book_loans';

UPDATE Conf_Table
SET last_extract_date = '1950-01-01T16:15:00.000'
WHERE table_name = 'library_branch';

UPDATE Conf_Table
SET last_extract_date = '1950-01-01T10:00:00.000'
WHERE table_name  = 'author'

	

