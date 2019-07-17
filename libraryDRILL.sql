USE LibraryDrill

CREATE PROC Library_drill
AS
GO

CREATE TABLE library_branch (
	branch_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	branch_name VARCHAR(50) NOT NULL,
	address_ VARCHAR(50) NOT NULL
);

CREATE TABLE publisher (
	phone_ INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	address_ VARCHAR(50) NOT NULL,
	publisher_name VARCHAR(50) NOT NULL
);

CREATE TABLE book_copies (
	book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	branch_id INT NOT NULL,
	num_of_copies INT NOT NULL
);

CREATE TABLE book_loans (
	book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	branch_id INT NOT NULL,
	card_num INT NOT NULL,
	date_out VARCHAR(50) NOT NULL,
	date_due VARCHAR(50) NOT NULL
);

CREATE TABLE books (
	book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	title VARCHAR(50) NOT NULL,
	publisher_name VARCHAR(50) NOT NULL
);

CREATE TABLE borrower (
	card_num INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	name_ VARCHAR(50) NOT NULL,
	address_ VARCHAR(50) NOT NULL,
	phone_ VARCHAR(50) NOT NULL
);

CREATE TABLE book_authors (
	book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	author_name VARCHAR(50) NOT NULL
);

INSERT INTO library_branch
	(branch_id, branch_name, address_)
	VALUES
	(1, 'central', '1111 central st'),
	(2, 'sharpstown', '2222 sharpstown st'),
	(3, 'beaverton', '3333 beaverton st'),
	(4, 'tigard', '4444 tigard st')
;

SELECT * FROM library_branch;

INSERT INTO publisher
	(phone_, address_, publisher_name)
	VALUES
	('000-000-0000', 'new york' , 'warner books ed'),
	('000-000-0001', 'los angelos' , 'podium publishing'),
	('000-000-0002', 'new jersey' , 'berkley books'),
	('000-000-0003', 'new jersey', 'ballentine books'),
	('000-000-0004', 'connecticut', 'bear and company'),
	('000-000-0005', 'fresno', 'Chogyam Trungpa'),
	('000-000-0006', 'phoenix', 'bantam books'),
	('000-000-0007', 'sacramento', 'bloomsbury publishing'),
	('000-000-0008', 'miami', 'amber-allen publishing'),
	('000-000-0009', 'austin', 'dutton'),
	('000-000-0010', 'vancouver', 'beacon press'),
	('000-000-0011', 'portland', 'atria books'),
	('000-000-0012', 'washington d.c', 'hal elrod international'),
	('000-000-0013', 'new york', 'sounds true'),
	('000-000-0014', 'chicago', 'management books'),
	('000-000-0015', 'new jersey', 'chouette editions'),
	('000-000-0016', 'atlanta', 'plata publishing'),
	('000-000-0017', 'buffalo', 'dutton'),
	('000-000-0018', 'jacksonville', 'penguin books'),
	('000-000-0019', 'new jersey', 'lonely planet')
;

SELECT * FROM publisher

INSERT INTO book_copies
	(book_id, branch_id, num_of_copies)
	VALUES
	(001, 1, 5),
	(001, 2, 4),
	(001, 3, 3),
	(001, 4, 2),
	(002, 1, 1),
	(002, 2, 5),
	(002, 3, 4),
	(002, 4, 3),
	(003, 1, 2),
	(003, 2, 1),
	(003, 3, 5),
	(003, 4, 4),
	(004, 1, 3),
	(004, 2, 2),
	(004, 3, 1),
	(004, 4, 5),
	(005, 1, 4),
	(005, 2, 3),
	(005, 3, 2),
	(005, 4, 1),
	(006, 1, 5),
	(006, 2, 4),
	(006, 3, 3),
	(006, 4, 2),
	(007, 1, 1),
	(007, 2, 5),
	(007, 3, 4),
	(007, 4, 3),
	(008, 1, 2),
	(008, 2, 1),
	(008, 3, 5),
	(008, 4, 4),
	(009, 1, 3),
	(009, 2, 2),
	(009, 3, 1),
	(009, 4, 5),
	(010, 1, 4),
	(010, 2, 3),
	(010, 3, 2),
	(010, 4, 1),
	(011, 1, 5),
	(011, 2, 4),
	(011, 3, 3),
	(011, 4, 2),
	(012, 1, 1),
	(012, 2, 5),
	(012, 3, 4),
	(012, 4, 3),
	(013, 1, 2),
	(013, 2, 1),
	(013, 3, 5),
	(013, 4, 4),
	(014, 1, 3),
	(014, 2, 2),
	(014, 3, 1),
	(014, 4, 5),
	(015, 1, 4),
	(015, 2, 3),
	(015, 3, 2),
	(015, 4, 1),
	(016, 1, 5),
	(016, 2, 4),
	(016, 3, 3),
	(016, 4, 1),
	(017, 1, 2),
	(017, 2, 5),
	(017, 3, 4),
	(017, 4, 3),
	(018, 1, 2),
	(018, 2, 1),
	(018, 3, 5),
	(018, 4, 4),
	(019, 1, 3),
	(019, 2, 2),
	(019, 3, 1),
	(019, 4, 5),
	(020, 1, 4),
	(020, 2, 3),
	(020, 3, 2),
	(020, 4, 1)
;

SELECT * FROM book_copies;

INSERT INTO book_loans
	(book_id, branch_id, card_num, date_out, date_due)
	VALUES
	(001, 1, 000000, 5/01/2018, 6/1/2018),
	(002, 2, 000000, 6/01/2018, 7/1/2018),
	(003, 3, 100000, 7/01/2018, 8/1/2018),
	(004, 4, 100000, 8/1/2018, 9/1/2018),
	(005, 4, 100000, 9/1/2018, 10/1/2018),
	(006, 1, 200000, 10/1/2018, 11/1/2018),
	(007, 1, 200000, 11/1/2018, 12/1/2018),
	(008, 2, 300000, 12/1/2018, 1/1/2019),
	(009, 3, 300000, 1/1/2019, 2/1/2019),
	(010, 4, 300000, 2/1/2019, 3/1/2019),
	(011, 1, 400000, 3/1/2019, 4/1/2019),
	(012, 2, 400000, 4/1/2019, 5/1/2019),
	(013, 3, 500000, 5/1/2019, 6/1/2019),
	(014, 4, 500000, 6/1/2019, 7/1/2019),
	(015, 1, 500000, 7/1/2019, 8/1/2019),
	(016, 2, 600000, 8/1/2019, 9/1/2019),
	(017, 3, 600000, 9/1/2019, 10/1/2019),
	(018, 4, 700000, 10/1/2019, 11/1/2019),
	(019, 4, 700000, 11/1/2019, 12/1/2019),
	(020, 4, 700000, 12/1/2019, 1/1/2020),
	(021, 4, 800000, 5/1/2018, 6/1/2018),
	(022, 1, 800000, 6/1/2018, 7/1/2018),
	(023, 2, 900000, 7/1/2018, 8/1/2018),
	(024, 3, 900000, 8/1/2018, 9/1/2018),
	(025, 3, 010000, 9/1/2018, 10/1/2018),
	(026, 4, 010000, 10/1/2018, 11/1/2018),
	(027, 1, 011000, 11/1/2018, 12/1/2018),
	(028, 1, 011000, 12/1/2018, 1/1/2019),
	(029, 2, 011000, 1/1/2019, 2/1/2019),
	(030, 2, 012000, 2/1/2019, 3/1/2019),
	(031, 2, 012000, 3/1/2019, 4/1/2019),
	(032, 2, 013000, 4/1/2019, 5/1/2019),
	(033, 1, 013000, 5/1/2019, 6/1/2019),
	(034, 2, 013000, 6/1/2019, 7/1/2019),
	(035, 3, 014000, 7/1/2019, 8/1/2019),
	(036, 4, 014000, 8/1/2019, 9/1/2019),
	(037, 1, 015000, 9/1/2019, 10/1/2019),
	(038, 1, 015000, 10/1/2019, 11/1/2019),
	(039, 1, 015000, 11/1/2019, 12/1/2019),
	(040, 2, 016000, 12/1/2019, 1/1/2020),
	(041, 3, 016000, 5/1/2018, 6/1/2018),
	(042, 4, 017000, 6/1/2018, 7/1/2018),
	(043, 1, 017000, 7/1/2018, 8/1/2018),
	(044, 2, 017000, 8/1/2018, 9/1/2018),
	(045, 3, 018000, 9/1/2018, 10/1/2018),
	(046, 1, 018000, 10/1/2018, 11/1/2018),
	(047, 1, 018000, 11/1/2018, 12/1/2018),
	(048, 2, 019000, 12/1/2018, 1/1/2019),
	(049, 3, 019000, 1/1/2019, 2/1/2019),
	(050, 4, 019000, 2/1/2019, 3/1/2019)
;

SELECT * FROM book_loans;

INSERT INTO books
	(book_id, title, publisher_name)
	VALUES
	(001, 'rich dad poor dad', 'warner books ed'),
	(002, 'the lost tribe', 'podium publishing'),
	(003, 'chariot of the gods', 'berkley books'),
	(004, 'women who run with wolves', 'ballentine books'),
	(005, 'alien world order', 'bear and company'),
	(006, 'tibetan book of the dead', 'Chogyam Trungpa'),
	(007, 'of ice and fire', 'bantam books'),
	(008, 'harry potter; dealthy hollows', 'bloomsbury publishing'),
	(009, 'the four agreements', 'amber-allen publishing'),
	(010, 'the synchronicity key', 'dutton'),
	(011, 'gyn/ecology', 'beacon press'),
	(012, 'rage becomes her', 'atria books'),
	(013, 'miracle mornings', 'hal elrod international'),
	(014, 'self-actualization manifesto', 'sounds true'),
	(015, 'the three levels of leadership', 'management books'),
	(016, 'potty time with cailou', 'chouette editions'),
	(017, 'fake', 'plata publishing'),
	(018, 'awakening in the dream', 'dutton'),
	(019, 'stephen king book', 'lele'),
	(020, 'stephen king book', 'lele')
;

SELECT * FROM books;

INSERT INTO borrower
	(card_num, name_, address_, phone_)
	VALUES
	(000000, 'samantha', '0 st', '000-000-0000'),
	(100000, 'stephanie', '1 st', '111-111-1111'),
	(200000, 'dinesh', '2 st', '222-222-2222'),
	(300000, 'gilfoyle', '3 st', '333-333-3333'),
	(400000, 'angela', '4 st', '444-444-4444'),
	(500000, 'emerald', '5 st', '555-555-5555'),
	(600000, 'mehmet', '6 st', '666-666-6666'),
	(700000, 'anne', '7 st', '777-777-7777'),
	(800000, 'jaimie', '8 st', '888-888-8888'),
	(900000, 'juliet', '9 st', '999-999-9999'),
	(010000, 'romeo','10 st', '010-000-0000'),
	(011000, 'kahleesi', '11 st', '011-000-0000'),
	(012000, 'bob', '12 st', '012-000-0000'),
	(013000, 'joe', '13 st', '013-000-0000'),
	(014000, 'winston', '14 st', '014-000-0000'),
	(015000, 'jess', '15 st', '015-000-0000'),
	(016000, 'nick', '16 st', '016-000-0000'),
	(017000, 'padmasimbava', '17 st', '017-000-0000'),
	(018000, 'elron', '18 st', '018-000-0000'),
	(019000, 'dana', '19 st', '019-000-0000')
;

SELECT * FROM borrower;

INSERT INTO book_authors
	(book_id, author_name)
	VALUES
	(001, 'robert t kiyosaki'),
	(002, 'erich von daniken'),
	(003, 'clarissa pinkola estes'),
	(004, 'len kasten'),
	(005, 'graham coleman'),
	(006, 'george rr martin'),
	(007, 'jk rowling'),
	(008, 'don miguel ruiz'),
	(009, 'david wilcock'),
	(010, 'mary daly'),
	(011, 'soraya chemaly'),
	(012, 'james scouller'),
	(013, 'hal elrod'),
	(014, 'abraham maslow'),
	(015, 'james scouller'),
	(016, 'joceline sanschagrin'),
	(017, 'robert t kiyosaki'),
	(018, 'david wilcock'),
	(019, 'stephen king'),
	(020, 'stephen king')
;

SELECT * FROM book_authors;


/*select statements*/

SELECT borrower.name_, borrower.card_num FROM borrower
INNER JOIN book_loans.card_num ON borrower.card_num = borrower.name_
INNER JOIN borrower.name_ ON book_loans.card_num = borrower.card_num
WHERE borrower.card_num = (000000), (100000), (200000), (300000), (400000), (500000)
WHERE borrower.name_ = 'samantha'

SELECT borrower.name_, book_loans.card_num FROM borrower
INNER JOIN book_loans.cardd_num ON borrower.card_num = borrower.name_
INNER JOIN borrower.name_ ON book_loans.card_num = borrower.card_num
WHERE borrower.card_num = (6000000), (700000), (800000), (900000), (010000), (01100)
WHERE borrower.name_ = 'billy'

SELECT books.name_, book_copies.branch_name FROM library_branch
INNER JOIN library_branch.branch_id ON book_copies.branch_id = library_branch.branch_id
INNER JOIN book_copies.branch_id ON library_branch.branch_id = books.name_
WHERE books.name_ = 'stephen king', 'stephen king'
WHERE book_copies.branch_name = 'central'



END