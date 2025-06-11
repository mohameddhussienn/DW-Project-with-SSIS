

-- 1. Borrower Table
CREATE TABLE borrower(
CardNum int Primary Key
,BorrowerName varchar(100) 
,BorrowerAddress varchar(200) 
,BorrowerPhone varchar(50),
last_update DATETIME,
active CHAR(1) NOT NULL DEFAULT 'Y'
);

INSERT INTO borrower (CardNum, BorrowerName, BorrowerAddress, BorrowerPhone, last_update) VALUES
(100, 'Gregoire Clapp', '6 Dennis Street', '559-22-9935', '2006-02-15T04:44:00.000'),
(101, 'Cirillo Gerty', '28051 Bunting Center', '434-70-0608', '2006-02-15T04:44:00.000'),
(102, 'Pierre Rosenfrucht', '37103 Oak Valley Trail', '662-07-1169', '2006-02-15T04:44:00.000'),
(103, 'Anya Munehay', '71731 Corry Crossing', '408-97-5190', '2006-02-15T04:44:00.000'),
(104, 'Brady Curtiss', '7 Farmco Terrace', '398-85-4786', '2006-02-15T04:44:00.000'),
(105, 'Fleurette Kleeborn', '5 Orin Hill', '495-72-4413', '2006-02-15T04:44:00.000'),
(106, 'Beilul Keady', '137 Straubel Court', '512-43-5516', '2006-02-15T04:44:00.000'),
(107, 'Pam Carson', '45 Lotheville Trail', '875-59-8824', '2006-02-15T04:44:00.000'),
(108, 'Boony Trevaskis', '58 Delaware Hill', '497-37-9389', '2006-02-15T04:44:00.000'),
(109, 'Mattheus Hovard', '84 Pawling Park', '321-15-8335', '2006-02-15T04:44:00.000'),
(110, 'Eugenia Worrall', '2 Logan Pass', '429-93-4539', '2006-02-15T04:44:00.000'),
(111, 'Cordell Fairnington', '308 Sunbrook Circle', '323-17-0918', '2006-02-15T04:44:00.000'),
(112, 'Leodora Krzysztof', '64774 Kennedy Way', '739-22-1107', '2006-02-15T04:44:00.000'),
(113, 'Stacee Antyukhin', '43252 Westerfield Crossing', '105-65-2833', '2006-02-15T04:44:00.000'),
(114, 'Herminia Maddison', '833 New Castle Parkway', '554-12-7613', '2006-02-15T04:44:00.000'),
(115, 'Tressa Champe', '12283 Maywood Circle', '536-70-9550', '2006-02-15T04:44:00.000'),
(116, 'Kath Griffen', '63 Esch Plaza', '514-85-5537', '2006-02-15T04:44:00.000'),
(117, 'Sybyl Deem', '734 Mariners Cove Pass', '874-60-6130', '2006-02-15T04:44:00.000'),
(118, 'Nessy Waterfield', '3 Muir Lane', '108-31-1366', '2006-02-15T04:44:00.000'),
(119, 'Claudell Dipple', ' 0 Clarendon Parkway', '199-92-0098', '2006-02-15T04:44:00.000'),
(120, 'Blaine Basnett', '847 Little Fleur Alley', '875-17-8408', '2006-02-15T04:44:00.000'),
(121, 'Rowen McGuane', '771 Reinke Road', '268-63-5103', '2006-02-15T04:44:00.000'),
(122, 'Kailey Yendle', '8 Leroy Terrace', '154-14-9915', '2006-02-15T04:44:00.000'),
(123, 'Storm Edgeller', '21 Del Sol Way', '659-39-6035', '2006-02-15T04:44:00.000'),
(124, 'Obadias Groucock', '5553 Oneill Junction', '424-02-0383', '2006-02-15T04:44:00.000'),
(125, 'Bernetta Rubinowicz', '660 Menomonie Alley', '163-94-9018', '2006-02-15T04:44:00.000'),
(126, 'Jacintha Blackly', '7219 Knutson Park', '597-26-2733', '2006-02-15T04:44:00.000'),
(127, 'Richmound Falcus', '2 Meadow Valley Alley', '364-78-6860', '2006-02-15T04:44:00.000'),
(128, 'Margo Ellerker', '97 Loomis Park', '899-53-6820', '2006-02-15T04:44:00.000'),
(129, 'Baird Diggin', '03 Moulton Place', '767-67-5121', '2006-02-15T04:44:00.000'),
(130, 'Chastity Senogles', '57 Eggendart Street', '633-89-6974', '2006-02-15T04:44:00.000'),
(131, 'Ulysses Landman', '589 Mifflin Alley', '623-30-7734', '2006-02-15T04:44:00.000'),
(132, 'Danna Fowden', '2 Lerdahl Plaza', '766-70-4212', '2006-02-15T04:44:00.000'),
(133, 'Malena Fawbert', '91496 Quincy Drive', '172-80-2248', '2006-02-15T04:44:00.000'),
(134, 'Damara Irvine', '02 Morningstar Circle', '174-23-2834', '2006-02-15T04:44:00.000'),
(135, 'Licha Inglese', '2 Ryan Court', '750-71-9982', '2006-02-15T04:44:00.000');


-- 2. CLOCATION TABLE
CREATE TABLE location (
    LocationID int PRIMARY KEY,
    Country varchar(50) NOT NULL,
    State varchar(50),
    City varchar(50) NOT NULL,
    PostalCode varchar(20),
    Region varchar(50),
    last_update DATETIME
);

INSERT INTO location (LocationID, Country, State, City, PostalCode, Region, last_update) VALUES
(1, 'USA', 'NY', 'New York', '10012', 'Northeast', '2006-02-15T04:44:00.000'),
(2, 'USA', 'NY', 'New York', '10014', 'Northeast', '2006-02-15T04:44:00.000'),
(3, 'USA', 'MI', 'Saline', '48176', 'Midwest', '2006-02-15T04:44:00.000'),
(4, 'USA', 'MI', 'Ann Arbor', '48104', 'Midwest', '2006-02-15T04:44:00.000'),
(5, 'USA', 'NY', 'New York', '10019', 'Northeast', '2006-02-15T04:44:00.000'),
(6, 'USA', 'NY', 'New York', '10018', 'Northeast', '2006-02-15T04:44:00.000'),
(7, 'Australia', 'NSW', 'Crows Nest', '2065', 'Sydney Metro', '2006-02-15T04:44:00.000'),
(8, 'USA', 'NY', 'New York', '10016', 'Northeast', '2006-02-15T04:44:00.000'),
(9, 'USA', 'NY', 'New York', '10007', 'Northeast', '2006-02-15T04:44:00.000'),
(10, 'USA', 'NY', 'New York', '10010', 'Northeast', '2006-02-15T04:44:00.000'),
(11, 'Japan', 'Tokyo', 'Chiyoda-ku', '101-0064', 'Kanto', '2006-02-15T04:44:00.000'),
(12, 'USA', 'NY', 'New York', '10110', 'Northeast', '2006-02-15T04:44:00.000');



ALTER TABLE location
ADD active CHAR(1) NOT NULL DEFAULT 'Y';

UPDATE location 
SET active = 'N'
where LocationID % 5 = 0;


UPDATE location SET last_update = '2006-02-15T04:44:00.000'
WHERE LocationID BETWEEN 1 AND 12;

-- 3. Library_branch TABLE
CREATE TABLE library_branch(
BranchID int primary key
,BranchName varchar(50)
,BranchAddress varchar(50),
last_update DATETIME
);

Insert Into library_branch (BranchID,BranchName,BranchAddress,last_update)
VALUES
(1,'Sharpstown',	'32 Corner Road, New York, NY 10012', '2006-02-15T04:44:00.000'),
(2,	'Central',	'491 3rd Street, New York, NY 10014', '2006-02-15T04:44:00.000'),
(3,'Saline'	,'40 State Street, Saline, MI 48176', '2006-02-15T04:44:00.000'),
(4,'Ann Arbor',	'101 South University, Ann Arbor, MI 48104', '2006-02-15T04:44:00.000')

ALTER TABLE library_branch
ADD LocationID int REFERENCES location(LocationID);

UPDATE library_branch SET LocationID = 1 WHERE BranchID = 1; -- Sharpstown -> NY 10012
UPDATE library_branch SET LocationID = 2 WHERE BranchID = 2; -- Central -> NY 10014
UPDATE library_branch SET LocationID = 3 WHERE BranchID = 3; -- Saline -> MI 48176
UPDATE library_branch SET LocationID = 4 WHERE BranchID = 4; -- Ann Arbor -> MI 48104

ALTER TABLE library_branch
ADD active CHAR(1) NOT NULL DEFAULT 'Y';

UPDATE library_branch 
SET active = 'N'
where BranchID = 3;

-- 4. Puplisher TABLE
CREATE TABLE publisher(
PublisherName varchar(50) primary key
,publisherAddress varchar(100)
,PublisherPhone varchar(20),
last_update DATETIME,
active CHAR(1) NOT NULL DEFAULT 'Y'
);

INSERT INTO publisher (PublisherName, PublisherAddress, PublisherPhone, last_update) VALUES
('Alfred A. Knopf', 'The Knopf Doubleday Group, 45 Broadway, New York, NY 10019', '212-940-7390', '2006-02-15T04:44:00.000'),
('Bantam', '375 Hudson Street, New York, NY 10014', '212-366-2000', '2006-02-15T04:44:00.000'),
('Bloomsbury', 'Bloomsbury Publishing Inc., 1385 Broadway, 5th Floor, New York, NY 10018', '212-419-5300', '2006-02-15T04:44:00.000'),
('Chalto & Windus', '375 Hudson Street, New York, NY 10014', '212-366-2000', '2006-02-15T04:44:00.000'),
('Chilton Books', 'Not Available', 'Not Available', '2006-02-15T04:44:00.000'),
('DAW Books', '375 Hudson Street, New York, NY 10014', '212-366-2000', '2006-02-15T04:44:00.000'),
('George Allen & Unwin', '83 Alexander Ln, Crows Nest NSW 2065, Australia', '+61-2-8425-0100', '2006-02-15T04:44:00.000'),
('Harcourt Brace Jovanovich', '3 Park Ave, New York, NY 10016', '212-420-5800', '2006-02-15T04:44:00.000'),
('Harper and Row', 'HarperCollins Publishers, 195 Broadway, New York, NY 10007', '212-207-7000', '2006-02-15T04:44:00.000'),
('Pan Books', '175 Fifth Avenue, New York, NY 10010', '646-307-5745', '2006-02-15T04:44:00.000'),
('Picador USA', '175 Fifth Avenue, New York, NY 10010', '646-307-5745', '2006-02-15T04:44:00.000'),
('Scholastic', '557 Broadway, New York, NY 10012', '800-724-6527', '2006-02-15T04:44:00.000'),
('Shinchosa', 'Oga Bldg. 8, 2-5-4 Sarugaku-cho, Chiyoda-ku, Tokyo 101-0064 Japan', '+81-3-5577-6507', '2006-02-15T04:44:00.000'),
('Signet Books', '375 Hudson Street, New York, NY 10014', '212-366-2000', '2006-02-15T04:44:00.000'),
('Viking', '375 Hudson Street, New York, NY 10014', '212-366-2000', '2006-02-15T04:44:00.000'),
('W.W. Norton', ' W. W. Norton & Company, Inc., 500 Fifth Avenue, New York, New York 10110', '212-354-5500', '2006-02-15T04:44:00.000');

-- 5. AUTHOR TABLE
CREATE TABLE author (
    AuthorID int PRIMARY KEY,
    AuthorName varchar(100) NOT NULL,
    AuthorAddress varchar(200),
    AuthorPhone varchar(50),
    last_update DATETIME,
    active CHAR(1) NOT NULL DEFAULT 'Y'
);

INSERT INTO author (AuthorID, AuthorName, AuthorAddress, AuthorPhone, last_update, active) VALUES
(1, 'Patrick Rothfuss', '123 Fantasy Lane, Colorado', '555-111-2222', '2006-02-15T04:44:00.000', 'Y'),
(2, 'Stephen King', '47 Horror Street, Maine', '555-222-3333', '2006-02-15T04:44:00.000', 'Y'),
(3, 'Frank Herbert', '84 Desert Road, Oregon', '555-333-4444', '2006-02-15T04:44:00.000', 'Y'),
(4, 'J.R.R. Tolkien', 'Oxford University, UK', NULL, '2006-02-15T04:44:00.000', 'N'),
(5, 'Christopher Paolini', '678 Dragon Trail, Montana', '555-444-5555', '2006-02-15T04:44:00.000', 'Y'),
(6, 'J.K. Rowling', '12 Wizard Way, Edinburgh, UK', '555-555-6666', '2006-02-15T04:44:00.000', 'Y'),
(7, 'Haruki Murakami', '9 Cat Street, Tokyo, Japan', '555-666-7777', '2006-02-15T04:44:00.000', 'Y'),
(8, 'Shel Silverstein', '18 Giving Circle, Illinois', NULL, '2006-02-15T04:44:00.000', 'N'),
(9, 'Douglas Adams', '42 Galaxy Road, London, UK', '555-777-8888', '2006-02-15T04:44:00.000', 'N'),
(10, 'Aldous Huxley', '1984 Future Street, Los Angeles', NULL, '2006-02-15T04:44:00.000', 'N'),
(11, 'William Goldman', '77 Princess Avenue, New York', '555-888-9999', '2006-02-15T04:44:00.000', 'Y'),
(12, 'Chuck Palahniuk', '1 Fight Club Alley, Portland', '555-999-0000', '2006-02-15T04:44:00.000', 'Y'),
(13, 'Louis Sachar', '5 Hole Drive, Texas', '555-000-1111', '2006-02-15T04:44:00.000', 'Y'),
(14, 'George R.R. Martin', '354 Winter Road, New Mexico', '555-123-4567', '2006-02-15T04:44:00.000', 'Y'),
(15, 'Mark Lee', '20 Lost Path, California', '555-765-4321', '2006-02-15T04:44:00.000', 'Y');

-- 6. Book TABLE
CREATE TABLE book(
BookID int primary key
,Title varchar(50)
,PublisherName varchar(50) REFERENCES publisher(PublisherName),
last_update DATETIME
);



ALTER TABLE book
ADD active CHAR(1) NOT NULL DEFAULT 'Y';

UPDATE book 
SET active = 'N'
where BookID % 5 = 0;

ALTER TABLE book
ADD AuthorID int REFERENCES author(AuthorID);

INSERT INTO book (BookID, Title, PublisherName, last_update) VALUES
(1, 'The Name of the Wind', 'DAW Books', '2006-02-15 04:44:00.000'),
(2, 'It', 'Viking', '2006-02-15 04:44:00.000'),
(3, 'The Green Mile', 'Signet Books', '2006-02-15 04:44:00.000'),
(4, 'Dune', 'Chilton Books', '2006-02-15 04:44:00.000'),
(5, 'The Hobbit', 'George Allen & Unwin', '2006-02-15 04:44:00.000'),
(6, 'Eragon', 'Alfred A. Knopf', '2006-02-15 04:44:00.000'),
(7, 'A Wise Mans Fear', 'DAW Books', '2006-02-15 04:44:00.000'),
(8, 'Harry Potter and the Philosophers Stone', 'Bloomsbury', '2006-02-15 04:44:00.000'),
(9, 'Hard Boiled Wonderland and The End of the World', 'Shinchosa', '2006-02-15 04:44:00.000'),
(10, 'The Giving Tree', 'Harper and Row', '2006-02-15 04:44:00.000'),
(11, 'The Hitchhikers Guide to the Galaxy', 'Pan Books', '2006-02-15 04:44:00.000'),
(12, 'Brave New World', 'Chalto & Windus', '2006-02-15 04:44:00.000'),
(13, 'The Princess Bride', 'Harcourt Brace Jovanovich', '2006-02-15 04:44:00.000'),
(14, 'Fight Club', 'W.W. Norton', '2006-02-15 04:44:00.000'),
(15, 'Holes', 'Scholastic', '2006-02-15 04:44:00.000'),
(16, 'Harry Potter and the Chamber of Secrets', 'Bloomsbury', '2006-02-15 04:44:00.000'),
(17, 'Harry Potter and the Prisoner of Azkaban', 'Bloomsbury', '2006-02-15 04:44:00.000'),
(18, 'The Fellowship of the Ring', 'George Allen & Unwin', '2006-02-15 04:44:00.000'),
(19, 'A Game of Thrones', 'Bantam', '2006-02-15 04:44:00.000'),
(20, 'The Lost Tribe', 'Picador USA', '2006-02-15 04:44:00.000');



-- 7. Book_authors TABLE
CREATE TABLE book_authors(
  AuthorID int REFERENCES author(AuthorID),  
  BookID int REFERENCES book(BookID),
  last_update DATETIME,
  PRIMARY KEY (AuthorID, BookID)
);

INSERT INTO book_authors (AuthorID, BookID, last_update) VALUES
(1, 1, '2006-02-15 04:44:00.000'),
(2, 2, '2006-02-15 04:44:00.000'),
(3, 3, '2006-02-15 04:44:00.000'),
(4, 4, '2006-02-15 04:44:00.000'),
(5, 5, '2006-02-15 04:44:00.000'),
(6, 6, '2006-02-15 04:44:00.000'),
(7, 6, '2006-02-15 04:44:00.000'),
(8, 8, '2006-02-15 04:44:00.000'),
(9, 9, '2006-02-15 04:44:00.000'),
(10, 10, '2006-02-15 04:44:00.000'),
(11, 11, '2006-02-15 04:44:00.000'),
(12, 12, '2006-02-15 04:44:00.000'),
(13, 13, '2006-02-15 04:44:00.000'),
(14, 14, '2006-02-15 04:44:00.000'),
(15, 15, '2006-02-15 04:44:00.000')

UPDATE book 
SET AuthorID = (
    SELECT TOP 1 ba.AuthorID 
    FROM book_authors ba 
    WHERE ba.BookID = book.BookID
);

-- 8.Book_loans
CREATE TABLE book_loans(
loansID int primary key
,CardNum int REFERENCES borrower(CardNum),
BookID int REFERENCES book(BookID),
BranchID int REFERENCES library_branch(BranchID),
DateOut DATETIME,
DueDate  DATETIME,
ReturnDate DATETIME,
last_update DATETIME
);

Insert Into book_loans (loansID,BookID,BranchID,CardNum,DateOut,DueDate,ReturnDate,last_update)
VALUES
(1, 1, 1, 100, '2018-01-01', '2018-02-02', '2018-01-31', '2018-02-15T04:44:00.000'),
(2, 2, 1, 100, '2018-01-01', '2018-02-02', '2018-01-30', '2018-02-15T04:44:00.000'),
(3, 3, 1, 100, '2018-01-01', '2018-02-02', '2018-01-28', '2018-02-15T04:44:00.000'),
(4, 4, 1, 100, '2018-01-01', '2018-02-02', '2018-02-05', '2018-02-15T04:44:00.000'),
(5, 5, 1, 102, '2018-01-03', '2018-02-03', '2018-01-31', '2018-02-15T04:44:00.000'),
(6, 6, 1, 102, '2018-01-03', '2018-02-03', '2018-02-01', '2018-02-15T04:44:00.000'),
(7, 7, 1, 102, '2018-01-03', '2018-02-03', '2018-01-30', '2018-02-15T04:44:00.000'),
(8, 8, 1, 102, '2018-01-03', '2018-02-03', '2018-02-04', '2018-02-15T04:44:00.000'),
(9, 9, 1, 102, '2018-01-03', '2018-02-03', '2018-02-06', '2018-02-15T04:44:00.000'),
(10, 11, 1, 102, '2018-01-03', '2018-02-03', '2018-02-07', '2018-02-15T04:44:00.000'),
(11, 12, 2, 105, '2017-12-12', '2018-01-12', '2018-01-10', '2018-02-15T04:44:00.000'),
(12, 10, 2, 105, '2017-12-12', '2017-01-12', '2017-12-15', '2018-02-15T04:44:00.000'),
(13, 20, 2, 105, '2018-02-03', '2018-03-03', '2018-02-28', '2018-02-15T04:44:00.000'),
(14, 18, 2, 105, '2018-01-05', '2018-02-05', '2018-02-10', '2018-02-15T04:44:00.000'),
(15, 19, 2, 105, '2018-01-05', '2018-02-05', '2018-02-06', '2018-02-15T04:44:00.000'),
(16, 19, 2, 100, '2018-01-03', '2018-02-03', '2018-01-30', '2018-02-15T04:44:00.000'),
(17, 11, 2, 106, '2018-01-07', '2018-02-07', '2018-02-09', '2018-02-15T04:44:00.000'),
(18, 1, 2, 106, '2018-01-07', '2018-02-07', '2018-02-08', '2018-02-15T04:44:00.000'),
(19, 2, 2, 100, '2018-01-07', '2018-02-07', '2018-02-06', '2018-02-15T04:44:00.000'),
(20, 3, 2, 100, '2018-01-07', '2018-02-07', '2018-02-05', '2018-02-15T04:44:00.000'),
(21, 5, 2, 105, '2017-12-12', '2018-01-12', '2018-01-14', '2018-02-15T04:44:00.000'),
(22, 4, 3, 103, '2018-01-09', '2018-02-09', '2018-02-07', '2018-02-15T04:44:00.000'),
(23, 7, 3, 102, '2018-01-03', '2018-02-03', '2018-01-31', '2018-02-15T04:44:00.000'),
(24, 17, 3, 102, '2018-01-03', '2018-02-03', '2018-01-30', '2018-02-15T04:44:00.000'),
(25, 16, 3, 104, '2018-01-03', '2018-02-03', '2018-01-28', '2018-02-15T04:44:00.000'),
(26, 15, 3, 104, '2018-01-03', '2018-02-03', '2018-01-29', '2018-02-15T04:44:00.000'),
(27, 15, 3, 107, '2018-01-03', '2018-02-03', '2018-02-01', '2018-02-15T04:44:00.000'),
(28, 14, 3, 104, '2018-01-03', '2018-02-03', '2018-02-05', '2018-02-15T04:44:00.000'),
(29, 13, 3, 107, '2018-01-03', '2018-02-03', '2018-02-06', '2018-02-15T04:44:00.000'),
(30, 13, 3, 102, '2018-01-03', '2018-02-03', '2018-02-08', '2018-02-15T04:44:00.000'),
(31, 19, 3, 102, '2017-12-12', '2018-01-12', '2018-01-11', '2018-02-15T04:44:00.000'),
(32, 20, 4, 103, '2018-01-03', '2018-02-03', '2018-01-30', '2018-02-15T04:44:00.000'),
(33, 1, 4, 102, '2018-01-12', '2018-02-12', '2018-02-10', '2018-02-15T04:44:00.000'),
(34, 3, 4, 107, '2018-01-03', '2018-02-03', '2018-02-02', '2018-02-15T04:44:00.000'),
(35, 18, 4, 107, '2018-01-03', '2018-02-03', '2018-02-01', '2018-02-15T04:44:00.000'),
(36, 12, 4, 102, '2018-01-04', '2018-02-04', '2018-02-03', '2018-02-15T04:44:00.000'),
(37, 11, 4, 103, '2018-01-15', '2018-02-15', '2018-02-13', '2018-02-15T04:44:00.000'),
(38, 9, 4, 103, '2018-01-15', '2018-02-15', '2018-02-14', '2018-02-15T04:44:00.000'),
(39, 7, 4, 107, '2018-01-01', '2018-02-02', '2018-01-30', '2018-02-15T04:44:00.000'),
(40, 4, 4, 103, '2018-01-01', '2018-02-02', '2018-01-29', '2018-02-15T04:44:00.000'),
(41, 1, 4, 103, '2017-02-02', '2018-03-02', '2018-02-28', '2018-02-15T04:44:00.000'),
(42, 20, 4, 103, '2018-01-03', '2018-02-03', '2018-01-30', '2018-02-15T04:44:00.000'),
(43, 1, 4, 102, '2018-01-12', '2018-02-12', '2018-02-07', '2018-02-15T04:44:00.000'),
(44, 3, 4, 107, '2018-01-13', '2018-02-13', '2018-02-09', '2018-02-15T04:44:00.000'),
(45, 18, 4, 107, '2018-01-13', '2018-02-13', '2018-02-09', '2018-02-15T04:44:00.000'),
(46, 12, 4, 102, '2018-01-14', '2018-02-14', '2018-02-08', '2018-02-15T04:44:00.000'),
(47, 11, 4, 103, '2018-01-15', '2018-02-15', '2018-02-03', '2018-02-15T04:44:00.000'),
(48, 9, 4, 103, '2018-01-15', '2018-02-15', '2018-02-17', '2018-02-15T04:44:00.000'),
(49, 7, 4, 107, '2018-01-19', '2018-02-19', '2018-01-30', '2018-02-15T04:44:00.000'),
(50, 4, 4, 103, '2018-01-19', '2018-02-19', '2018-01-30', '2018-02-15T04:44:00.000'),
(51, 1, 4, 103, '2018-01-22', '2018-02-22', '2018-01-29', '2018-02-15T04:44:00.000'),
(52, 2, 1, 108, '2018-03-01', '2018-04-01', NULL, '2018-05-15T04:44:00.000'),
(53, 3, 1, 108, '2018-03-01', '2018-04-01', NULL, '2018-05-15T04:44:00.000'),
(54, 4, 1, 108, '2018-03-02', '2018-04-02', NULL, '2018-05-15T04:44:00.000'),
(55, 5, 1, 109, '2018-03-03', '2018-04-03', NULL, '2018-05-15T04:44:00.000'),
(56, 6, 1, 109, '2018-03-03', '2018-04-03', NULL, '2018-05-15T04:44:00.000'),
(57, 7, 1, 109, '2018-03-04', '2018-04-04', NULL, '2018-05-15T04:44:00.000'),
(58, 8, 1, 110, '2018-03-05', '2018-04-05', NULL, '2018-05-15T04:44:00.000'),
(59, 9, 1, 110, '2018-03-05', '2018-04-05', NULL, '2018-05-15T04:44:00.000'),
(60, 10, 1, 110, '2018-03-06', '2018-04-06', NULL, '2018-05-15T04:44:00.000'),
(61, 11, 2, 111, '2018-03-07', '2018-04-07', NULL, '2018-05-15T04:44:00.000'),
(62, 12, 2, 111, '2018-03-08', '2018-04-08', NULL, '2018-05-15T04:44:00.000'),
(63, 13, 2, 112, '2018-03-09', '2018-04-09', NULL, '2018-05-15T04:44:00.000'),
(64, 14, 2, 113, '2018-03-10', '2018-04-10', NULL, '2018-05-15T04:44:00.000'),
(65, 15, 2, 113, '2018-03-11', '2018-04-11', NULL, '2018-05-15T04:44:00.000'),
(66, 16, 2, 114, '2018-03-12', '2018-04-12', NULL, '2018-05-15T04:44:00.000'),
(67, 17, 2, 114, '2018-03-12', '2018-04-12', NULL, '2018-05-15T04:44:00.000'),
(68, 18, 2, 115, '2018-03-13', '2018-04-13', NULL, '2018-05-15T04:44:00.000'),
(69, 19, 2, 115, '2018-03-14', '2018-04-14', NULL, '2018-05-15T04:44:00.000'),
(70, 20, 2, 115, '2018-03-15', '2018-04-15', NULL, '2018-05-15T04:44:00.000'),
(71, 1, 3, 116, '2018-03-16', '2018-04-16', NULL, '2018-05-15T04:44:00.000'),
(72, 2, 3, 116, '2018-03-17', '2018-04-17', NULL, '2018-05-15T04:44:00.000'),
(73, 3, 3, 116, '2018-03-18', '2018-04-18', NULL, '2018-05-15T04:44:00.000'),
(74, 4, 3, 117, '2018-03-19', '2018-04-19', NULL, '2018-05-15T04:44:00.000'),
(75, 5, 3, 117, '2018-03-20', '2018-04-20', NULL, '2018-05-15T04:44:00.000'),
(76, 6, 3, 117, '2018-03-20', '2018-04-20', NULL, '2018-05-15T04:44:00.000'),
(77, 7, 3, 118, '2018-03-21', '2018-04-21', NULL, '2018-05-15T04:44:00.000'),
(78, 8, 3, 118, '2018-03-21', '2018-04-21', NULL, '2018-05-15T04:44:00.000'),
(79, 9, 3, 119, '2018-03-22', '2018-04-22', NULL, '2018-05-15T04:44:00.000'),
(80, 10, 3, 119, '2018-03-23', '2018-04-23', NULL, '2018-05-15T04:44:00.000'),
(81, 11, 3, 119, '2018-03-23', '2018-04-23', NULL, '2018-05-15T04:44:00.000'),
(82, 12, 3, 120, '2018-03-24', '2018-04-24', NULL, '2018-05-15T04:44:00.000'),
(83, 13, 3, 120, '2018-03-25', '2018-04-25', NULL, '2018-05-15T04:44:00.000'),
(84, 14, 3, 121, '2018-03-26', '2018-04-26', NULL, '2018-05-15T04:44:00.000'),
(85, 15, 3, 121, '2018-03-26', '2018-04-26', NULL, '2018-05-15T04:44:00.000'),
(86, 16, 3, 121, '2018-03-27', '2018-04-27', NULL, '2018-05-15T04:44:00.000'),
(87, 17, 3, 122, '2018-03-28', '2018-04-28', NULL, '2018-05-15T04:44:00.000'),
(88, 18, 3, 122, '2018-03-28', '2018-04-28', NULL, '2018-05-15T04:44:00.000'),
(89, 19, 3, 123, '2018-03-29', '2018-04-29', NULL, '2018-05-15T04:44:00.000'),
(90, 20, 3, 123, '2018-03-30', '2018-04-30', NULL, '2018-05-15T04:44:00.000'),
(91, 1, 4, 123, '2018-03-31', '2018-04-30', NULL, '2018-05-15T04:44:00.000'),
(92, 2, 4, 124, '2018-04-01', '2018-05-01', NULL, '2018-05-15T04:44:00.000'),
(93, 3, 4, 124, '2018-04-01', '2018-05-01', NULL, '2018-05-15T04:44:00.000'),
(94, 4, 4, 125, '2018-04-02', '2018-05-02', NULL, '2018-05-15T04:44:00.000'),
(95, 5, 4, 125, '2018-04-03', '2018-05-03', NULL, '2018-05-15T04:44:00.000'),
(96, 6, 4, 125, '2018-04-03', '2018-05-03', NULL, '2018-05-15T04:44:00.000'),
(97, 7, 4, 126, '2018-04-04', '2018-05-04', NULL, '2018-05-15T04:44:00.000'),
(98, 8, 4, 126, '2018-04-05', '2018-05-05', NULL, '2018-05-15T04:44:00.000'),
(99, 9, 4, 126, '2018-04-05', '2018-05-05', NULL, '2018-05-15T04:44:00.000'),
(100, 10, 4, 127, '2018-04-06', '2018-05-06', NULL, '2018-05-15T04:44:00.000'),
(101, 11, 4, 127, '2018-04-06', '2018-05-06', NULL, '2018-05-15T04:44:00.000'),
(102, 12, 4, 127, '2018-04-07', '2018-05-07', NULL, '2018-05-15T04:44:00.000'),
(103, 13, 4, 128, '2018-04-08', '2018-05-08', NULL, '2018-05-15T04:44:00.000'),
(104, 14, 4, 128, '2018-04-08', '2018-05-08', NULL, '2018-05-15T04:44:00.000'),
(105, 15, 4, 129, '2018-04-09', '2018-05-09', NULL, '2018-05-15T04:44:00.000'),
(106, 16, 4, 129, '2018-04-10', '2018-05-10', NULL, '2018-05-15T04:44:00.000'),
(107, 17, 4, 129, '2018-04-10', '2018-05-10', NULL, '2018-05-15T04:44:00.000'),
(108, 18, 4, 130, '2018-04-11', '2018-05-11', NULL, '2018-05-15T04:44:00.000'),
(109, 19, 4, 130, '2018-04-12', '2018-05-12', NULL, '2018-05-15T04:44:00.000'),
(110, 20, 4, 131, '2018-04-12', '2018-05-12', NULL, '2018-05-15T04:44:00.000'),
(111, 1, 1, 131, '2018-04-13', '2018-05-13', NULL, '2018-05-15T04:44:00.000'),
(112, 2, 1, 132, '2018-04-14', '2018-05-14', NULL, '2018-05-15T04:44:00.000'),
(113, 3, 1, 132, '2018-04-15', '2018-05-15', NULL, '2018-05-15T04:44:00.000'),
(114, 4, 1, 133, '2018-04-16', '2018-05-16', NULL, '2018-05-15T04:44:00.000'),
(115, 5, 1, 133, '2018-04-16', '2018-05-16', NULL, '2018-05-15T04:44:00.000'),
(116, 6, 1, 133, '2018-04-17', '2018-05-17', NULL, '2018-05-15T04:44:00.000'),
(117, 7, 2, 134, '2018-04-18', '2018-05-18', NULL, '2018-05-15T04:44:00.000'),
(118, 8, 2, 134, '2018-04-18', '2018-05-18', NULL, '2018-05-15T04:44:00.000'),
(119, 9, 2, 134, '2018-04-19', '2018-05-19', NULL, '2018-05-15T04:44:00.000'),
(120, 10, 2, 135, '2018-04-20', '2018-05-20', NULL, '2018-05-15T04:44:00.000'),
(121, 11, 2, 135, '2018-04-21', '2018-05-21', NULL, '2018-05-15T04:44:00.000'),
(122, 12, 2, 135, '2018-04-21', '2018-05-21', NULL, '2018-05-15T04:44:00.000'),
(123, 13, 2, 108, '2018-04-22', '2018-05-22', NULL, '2018-05-15T04:44:00.000'),
(124, 14, 2, 108, '2018-04-23', '2018-05-23', NULL, '2018-05-15T04:44:00.000'),
(125, 15, 2, 108, '2018-04-23', '2018-05-23', NULL, '2018-05-15T04:44:00.000'),
(126, 16, 3, 109, '2018-04-24', '2018-05-24', NULL, '2018-05-15T04:44:00.000'),
(127, 17, 3, 109, '2018-04-25', '2018-05-25', NULL, '2018-05-15T04:44:00.000'),
(128, 18, 3, 109, '2018-04-26', '2018-05-26', NULL, '2018-05-15T04:44:00.000'),
(129, 19, 4, 110, '2018-04-27', '2018-05-27', NULL, '2018-05-15T04:44:00.000'),
(130, 20, 4, 110, '2018-04-28', '2018-05-28', NULL, '2018-05-15T04:44:00.000'), 
(131, 1, 4, 134, '2018-05-25', '2018-06-25', NULL, '2018-05-15T04:44:00.000'),
(132, 2, 4, 134, '2018-05-26', '2018-06-26', NULL, '2018-05-15T04:44:00.000'),
(133, 3, 4, 135, '2018-05-27', '2018-06-27', NULL, '2018-05-15T04:44:00.000'),
(134, 4, 4, 135, '2018-05-27', '2018-06-27', NULL, '2018-05-15T04:44:00.000'),
(135, 5, 4, 135, '2018-05-28', '2018-06-28', NULL, '2018-05-15T04:44:00.000');

ALTER TABLE book_loans
ADD ReturnDateInt AS (CONVERT(INT, CONVERT(VARCHAR(8), ReturnDate, 112)));


select * from library_branch;

-- testing query

SELECT 
    bl.CardNum,
    br.BorrowerName,
    bl.BranchID,
    lb.BranchName,
    COUNT(*) AS TotalBooksBorrowed
FROM 
    book_loans bl
JOIN 
    borrower br ON bl.CardNum = br.CardNum
JOIN 
    library_branch lb ON bl.BranchID = lb.BranchID
GROUP BY 
    bl.CardNum, br.BorrowerName, bl.BranchID, lb.BranchName;


SELECT 
    bl.BranchID,
    lb.BranchName,
    COUNT(DISTINCT bl.CardNum) AS TotalBorrowers
FROM 
    book_loans bl
JOIN 
    library_branch lb ON bl.BranchID = lb.BranchID
GROUP BY 
    bl.BranchID, lb.BranchName;

SELECT 
    bl.BranchID,
    lb.BranchName,
    loc.City,
    loc.State,
    COUNT(*) AS TotalLoans
FROM 
    book_loans bl
JOIN 
    library_branch lb ON bl.BranchID = lb.BranchID
JOIN 
    location loc ON lb.LocationID = loc.LocationID
GROUP BY 
    bl.BranchID, lb.BranchName, loc.City, loc.State;


SELECT 
    b.BookID,
    b.Title,
    a.AuthorID,
    a.AuthorName,
    COUNT(*) AS TotalLoans
FROM 
    book_loans bl
JOIN 
    book b ON bl.BookID = b.BookID
JOIN 
    book_authors ba ON b.BookID = ba.BookID
JOIN 
    author a ON ba.AuthorID = a.AuthorID
GROUP BY 
    b.BookID, b.Title, a.AuthorID, a.AuthorName;



UPDATE library_branch
SET BranchName = 'Sharpstown',
    BranchAddress = '32 Corner Road, New York, NY 10012',
    last_update = '2006-02-15T04:44:00.000'
WHERE BranchID = 1;

UPDATE library_branch
SET BranchName = 'Central',
    BranchAddress = '491 3rd Street, New York, NY 10014',
    last_update = '2006-02-15T04:44:00.000'
WHERE BranchID = 2;

UPDATE library_branch
SET BranchName = 'Saline',
    BranchAddress = '40 State Street, Saline, MI 48176',
    last_update = '2006-02-15T04:44:00.000'
WHERE BranchID = 3;

UPDATE library_branch
SET BranchName = 'Ann Arbor',
    BranchAddress = '101 South University, Ann Arbor, MI 48104',
    last_update = '2006-02-15T04:44:00.000'
WHERE BranchID = 4;



	select * from library_branch;
	select * from borrower;
	--32 Corner Road, New York, NY 1001 491 3rd Street, New York, NY 10014
	UPDATE library_branch SET BranchAddress = '' WHERE BranchID = 1;
	UPDATE borrower SET BorrowerAddress = 'showwww22222' WHERE CardNum=100;

	