use warehouse;

CREATE TABLE D_Time(
	[DateKey] [int] NOT NULL,
	[Date] [date] NOT NULL,
   [Day] [tinyint] NOT NULL,
   [DaySuffix] [char](2) NOT NULL,
   [Weekday] [tinyint] NOT NULL,
   [WeekDayName] [varchar](10) NOT NULL,
   [WeekDayName_Short] [char](3) NOT NULL,
   [WeekDayName_FirstLetter] [char](1) NOT NULL,
   [DOWInMonth] [tinyint] NOT NULL,
   [DayOfYear] [smallint] NOT NULL,
   [WeekOfMonth] [tinyint] NOT NULL,
   [WeekOfYear] [tinyint] NOT NULL,
   [Month] [tinyint] NOT NULL,
   [MonthName] [varchar](10) NOT NULL,
   [MonthName_Short] [char](3) NOT NULL,
   [MonthName_FirstLetter] [char](1) NOT NULL,
   [Quarter] [tinyint] NOT NULL,
   [QuarterName] [varchar](6) NOT NULL,
   [Year] [int] NOT NULL,
   [MMYYYY] [char](6) NOT NULL,
   [MonthYear] [char](7) NOT NULL,
   [IsWeekend] BIT NOT NULL,
   [IsHoliday] BIT NOT NULL,
   [HolidayName] VARCHAR(20) NULL,
   [SpecialDays] VARCHAR(20) NULL,
   [FinancialYear] [int] NULL,
   [FinancialQuater] [int] NULL,
   [FinancialMonth] [int] NULL,
   [FirstDateofYear] DATE NULL,
   [LastDateofYear] DATE NULL,
   [FirstDateofQuater] DATE NULL,
   [LastDateofQuater] DATE NULL,
   [FirstDateofMonth] DATE NULL,
   [LastDateofMonth] DATE NULL,
   [FirstDateofWeek] DATE NULL,
   [LastDateofWeek] DATE NULL,
   [CurrentYear] SMALLINT NULL,
   [CurrentQuater] SMALLINT NULL,
   [CurrentMonth] SMALLINT NULL,
   [CurrentWeek] SMALLINT NULL,
   [CurrentDay] SMALLINT NULL,
   PRIMARY KEY CLUSTERED ([DateKey] ASC)

);



CREATE TABLE D_Borrower(
Borrower_key int identity(1,1) PRIMARY KEY,
Src_CardNum int,
BorrowerName varchar(50),
BorrowerAddress varchar(50),
BorrowerPhone varchar(50),
is_last bit,
create_timestamp DATETIME,
update_timestamp DATETIME,
is_active char(1)
);

CREATE TABLE D_library_branch(
Branch_key int identity(1,1) PRIMARY KEY,
Src_ID int
,BranchName varchar(50)
,BranchAddress varchar(50),
is_last bit,
is_active char(1),
LocationID int,
create_timestamp DATETIME,
update_timestamp DATETIME
);

CREATE TABLE D_book_loans(
loans_key int identity(1,1) PRIMARY KEY,
src_id int
,CardNum int
,BookID int
,BranchID int
,DateOut DATETIME
,DueDate  DATETIME
,ReturnDate DATETIME,
is_last bit,
create_timestamp DATETIME,
update_timestamp DATETIME
);

CREATE TABLE D_book(
Book_key int  identity(1,1) PRIMARY KEY,
src_key int
,Title varchar(50)
,PublisherName varchar(50),
is_last bit,
AuthorID int,
is_active char(1),
create_timestamp DATETIME,
update_timestamp DATETIME
);


CREATE TABLE D_book_authors(
Author_key int identity(1,1) PRIMARY KEY,
src_id int
,BookID int,
is_last bit,
create_timestamp DATETIME,
update_timestamp DATETIME
);


CREATE TABLE D_publisher(
publisher_key int identity(1,1) PRIMARY KEY,
Src_Name varchar(50)
,publisherAddress varchar(100)
,PublisherPhone varchar(20),
is_last bit,
create_timestamp DATETIME,
update_timestamp DATETIME,
is_active char(1)
);

CREATE TABLE D_author(
Author_key int identity(1,1) PRIMARY KEY,
src_authorID int,
AuthorName varchar(50),
AuthorAddress varchar(100),
Author_Phone varchar(20),
is_last bit,
create_timestamp DATETIME,
update_timestamp DATETIME,
is_active char(1)
);

CREATE TABLE D_Location(
LocationID int identity(1,1) PRIMARY KEY,
srcID int,
Country varchar(50),
State varchar(50),
City varchar(50),
PostalCode varchar(20),
Region varchar(50),
create_timestamp DATETIME,
 active CHAR(1) ,
   is_last BIT ,
update_timestamp DATETIME
);

--  Total Number of loans per Book and Author on a particular date
CREATE TABLE F_loans_book_author(
loan_ba_Key int identity(1,1) PRIMARY KEY,
book_key int REFERENCES D_book(Book_key),
date_key int REFERENCES D_Time(DateKey),
author_key int REFERENCES D_author(Author_key),
total_loans int,
create_timestamp DateTime
);

-- Total Number of loans per Branch and location on a particular date
CREATE TABLE F_loanDuration(
loanDuration_Key int identity(1,1) PRIMARY KEY,
branch_key  int REFERENCES D_library_branch(Branch_Key),
location_key int REFERENCES D_Location(LocationID),
date_key int REFERENCES D_Time(DateKey),
total_loans int,
create_timestamp DateTime
);

-- Total number of books borrowed by a borrower from a specific branch on a particular date
CREATE TABLE F_NumBooksBorrower(
booksBorrower_Key int identity(1,1) PRIMARY KEY,
borrower_key int REFERENCES D_Borrower(Borrower_key),
date_key  int REFERENCES D_Time(DateKey),
branch_key  int REFERENCES D_library_branch(Branch_Key),
NumBooksBorrowed int,
create_timestamp DateTime
);

-- Total number of borrowers in a specific branch on a particular date
CREATE TABLE F_NumBorrowers(
NumBorrowers_Key int identity(1,1) PRIMARY KEY,
date_key  int REFERENCES D_Time(DateKey),
branch_key  int REFERENCES D_library_branch(Branch_Key),
NumBorrowers int,
create_timestamp DateTime
);



SET NOCOUNT ON

DECLARE @CurrentDate DATE = '2010-01-01'
DECLARE @EndDate DATE = '2030-12-31'

WHILE @CurrentDate < @EndDate
BEGIN
   INSERT INTO D_Time(
      [DateKey],
      [Date],
      [Day],
      [DaySuffix],
      [Weekday],
      [WeekDayName],
      [WeekDayName_Short],
      [WeekDayName_FirstLetter],
      [DOWInMonth],
      [DayOfYear],
      [WeekOfMonth],
      [WeekOfYear],
      [Month],
      [MonthName],
      [MonthName_Short],
      [MonthName_FirstLetter],
      [Quarter],
      [QuarterName],
      [Year],
      [MMYYYY],
      [MonthYear],
      [IsWeekend],
      [IsHoliday],
      [FirstDateofYear],
      [LastDateofYear],
      [FirstDateofQuater],
      [LastDateofQuater],
      [FirstDateofMonth],
      [LastDateofMonth],
      [FirstDateofWeek],
      [LastDateofWeek]
      )
   SELECT DateKey = YEAR(@CurrentDate) * 10000 + MONTH(@CurrentDate) * 100 + DAY(@CurrentDate),
      DATE = @CurrentDate,
      Day = DAY(@CurrentDate),
      [DaySuffix] = CASE 
         WHEN DAY(@CurrentDate) = 1
            OR DAY(@CurrentDate) = 21
            OR DAY(@CurrentDate) = 31
            THEN 'st'
         WHEN DAY(@CurrentDate) = 2
            OR DAY(@CurrentDate) = 22
            THEN 'nd'
         WHEN DAY(@CurrentDate) = 3
            OR DAY(@CurrentDate) = 23
            THEN 'rd'
         ELSE 'th'
         END,
      WEEKDAY = DATEPART(dw, @CurrentDate),
      WeekDayName = DATENAME(dw, @CurrentDate),
      WeekDayName_Short = UPPER(LEFT(DATENAME(dw, @CurrentDate), 3)),
      WeekDayName_FirstLetter = LEFT(DATENAME(dw, @CurrentDate), 1),
      [DOWInMonth] = DAY(@CurrentDate),
      [DayOfYear] = DATENAME(dy, @CurrentDate),
      [WeekOfMonth] = DATEPART(WEEK, @CurrentDate) - DATEPART(WEEK, DATEADD(MM, DATEDIFF(MM, 0, @CurrentDate), 0)) + 1,
      [WeekOfYear] = DATEPART(wk, @CurrentDate),
      [Month] = MONTH(@CurrentDate),
      [MonthName] = DATENAME(mm, @CurrentDate),
      [MonthName_Short] = UPPER(LEFT(DATENAME(mm, @CurrentDate), 3)),
      [MonthName_FirstLetter] = LEFT(DATENAME(mm, @CurrentDate), 1),
      [Quarter] = DATEPART(q, @CurrentDate),
      [QuarterName] = CASE 
         WHEN DATENAME(qq, @CurrentDate) = 1
            THEN 'First'
         WHEN DATENAME(qq, @CurrentDate) = 2
            THEN 'second'
         WHEN DATENAME(qq, @CurrentDate) = 3
            THEN 'third'
         WHEN DATENAME(qq, @CurrentDate) = 4
            THEN 'fourth'
         END,
      [Year] = YEAR(@CurrentDate),
      [MMYYYY] = RIGHT('0' + CAST(MONTH(@CurrentDate) AS VARCHAR(2)), 2) + CAST(YEAR(@CurrentDate) AS VARCHAR(4)),
      [MonthYear] = CAST(YEAR(@CurrentDate) AS VARCHAR(4)) + UPPER(LEFT(DATENAME(mm, @CurrentDate), 3)),
      [IsWeekend] = CASE 
         WHEN DATENAME(dw, @CurrentDate) = 'Sunday'
            OR DATENAME(dw, @CurrentDate) = 'Saturday'
            THEN 1
         ELSE 0
         END,
      [IsHoliday] = 0,
      [FirstDateofYear] = CAST(CAST(YEAR(@CurrentDate) AS VARCHAR(4)) + '-01-01' AS DATE),
      [LastDateofYear] = CAST(CAST(YEAR(@CurrentDate) AS VARCHAR(4)) + '-12-31' AS DATE),
      [FirstDateofQuater] = DATEADD(qq, DATEDIFF(qq, 0, GETDATE()), 0),
      [LastDateofQuater] = DATEADD(dd, - 1, DATEADD(qq, DATEDIFF(qq, 0, GETDATE()) + 1, 0)),
      [FirstDateofMonth] = CAST(CAST(YEAR(@CurrentDate) AS VARCHAR(4)) + '-' + CAST(MONTH(@CurrentDate) AS VARCHAR(2)) + '-01' AS DATE),
      [LastDateofMonth] = EOMONTH(@CurrentDate),
      [FirstDateofWeek] = DATEADD(dd, - (DATEPART(dw, @CurrentDate) - 1), @CurrentDate),
      [LastDateofWeek] = DATEADD(dd, 7 - (DATEPART(dw, @CurrentDate)), @CurrentDate)

   SET @CurrentDate = DATEADD(DD, 1, @CurrentDate)
END


-- Top Borrowers by Total Books Borrowed (F_NumBooksBorrower)
SELECT 
    d_borrower.BorrowerName,
    SUM(f.NumBooksBorrowed) AS TotalBooksBorrowed
FROM F_NumBooksBorrower AS f
JOIN D_Borrower AS d_borrower ON f.borrower_key = d_borrower.Borrower_key
GROUP BY d_borrower.BorrowerName
ORDER BY TotalBooksBorrowed DESC;
 

--Total Number of Books Borrowed by Branch and Date(F_NumBooksBorrower)
 SELECT 
    d_branch.BranchName,
    d_time.Month, 
    SUM(f.NumBooksBorrowed) AS TotalBooksBorrowed
FROM F_NumBooksBorrower AS f
JOIN D_library_branch AS d_branch ON f.branch_key = d_branch.Branch_Key
JOIN D_Time AS d_time ON f.date_key = d_time.DateKey
GROUP BY 
    d_branch.BranchName,
    d_time.Month
ORDER BY d_time.month;

--Total Number of Borrowers Per Branch(F_NumBorrowers)
SELECT 
    d_branch.BranchName,
    d_time.Year,
    SUM(f.NumBorrowers) AS TotalBorrowers
FROM F_NumBorrowers AS f
JOIN D_library_branch AS d_branch ON f.branch_key = d_branch.Branch_Key
JOIN D_Time AS d_time ON f.date_key = d_time.DateKey
GROUP BY d_branch.BranchName, d_time.Year
ORDER BY d_time.Year;


-- Total Books Borrowed in a Specific Branch and Month (F_NumBooksBorrower)
SELECT 
    d_branch.BranchName,
    d_time.MonthName,
    SUM(f.NumBooksBorrowed) AS TotalBooks
FROM F_NumBooksBorrower AS f
JOIN D_library_branch AS d_branch ON f.branch_key = d_branch.Branch_Key
JOIN D_Time AS d_time ON f.date_key = d_time.DateKey
WHERE d_branch.BranchName = 'Ann Arbor' AND d_time.MonthName = 'May'
GROUP BY d_branch.BranchName, d_time.MonthName;


