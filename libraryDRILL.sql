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
	(branch_id)
	VALUES
	(1),
	(2),
	(3),
	(4)
;

SELECT * FROM library_branch;

INSERT INTO library_branch
	(branch_name)
	VALUES
	('central'),
	('sharpstown'),
	('beaverton'),
	('tigard')
;

SELECT * FROM library_branch;

INSERT INTO library_branch
	(address_)
	VALUES
	('1111 central st'),
	('2222 sharpstown st'),
	('3333 beaverton st'),
	('4444 tigard st')
;

SELECT * FROM library_branch;

INSERT INTO publisher
	(publisher_name)
	VALUES
	('warner books ed'),
	('podium publishing'),
	('berkley books'),
	('ballentine books'),
	('bear and company'),
	('Chogyam Trungpa'),
	('bantam books'),
	('bloomsbury publishing'),
	('amber-allen publishing'),
	('dutton'),
	('beacon press'),
	('atria books'),
	('hal elrod international'),
	('sounds true'),
	('management books'),
	('chouette editions'),
	('plata publishing'),
	('dutton'),
	('penguin books'),
	('lonely planet')
;

SELECT * FROM publisher;

INSERT INTO publisher
	(address_)
	VALUES
	('new york'),
	('los angelos'),
	('new jersey'),
	('new jersey'),
	('connecticut'),
	('fresno'),
	('phoenix'),
	('sacramento'),
	('miami'),
	('austin'),
	('vancouver'),
	('portland'),
	('washington d.c'),
	('new york'),
	('chicago'),
	('new jersey'),
	('atlanta'),
	('buffalo'),
	('jacksonville')
;

SELECT * FROM publisher;

INSERT INTO publisher
	(phone_)
	VALUES
	('000-000-0000'),
	('000-000-0001'),
	('000-000-0002'),
	('000-000-0003'),
	('000-000-0003'),
	('000-000-0005'),
	('000-000-0006'),
	('000-000-0007'),
	('000-000-0009'),
	('000-000-0010'),
	('000-000-0011'),
	('000-000-0012'),
	('000-000-0013'),
	('000-000-0014'),
	('000-000-0015'),
	('000-000-0016'),
	('000-000-0017'),
	('000-000-0018'),
	('000-000-0019')
;

SELECT * FROM publisher

INSERT INTO book_copies
	(book_id)
	VALUES
	(001),
	(002),
	(003),
	(004),
	(005),
	(006),
	(007),
	(008),
	(009),
	(010),
	(011),
	(012),
	(013),
	(014),
	(015),
	(016),
	(017),
	(018),
	(019),
	(020)
;

SELECT * FROM publisher;

INSERT INTO book_copies
	(branch_id)
	VALUES
	(1),
	(2),
	(3),
	(4)

INSERT INTO book_copies
	(num_of_copies)
	VALUES
	(5),
	(4),
	(3),
	(2),
	(2),
	(5),
	(4),
	(3),
	(2),
	(2),
	(5),
	(4),
	(3),
	(2),
	(1),
	(5),
	(3),
	(3),
	(4),
	(2)
;

SELECT * FROM book_copies;

INSERT INTO book_loans
	(book_id)
	VALUES
	(001),
	(002),
	(003),
	(004),
	(005),
	(006),
	(007),
	(008),
	(009),
	(010),
	(011),
	(012),
	(013),
	(014),
	(015),
	(016),
	(017),
	(018),
	(019),
	(020)
;

SELECT * FROM book_loans;

INSERT INTO book_loans
	(branch_id)
	VALUES
	(1),
	(2),
	(3),
	(4)
;

SELECT * FROM book_loans;

INSERT INTO book_loans
	(card_num)
	VALUES
	(000000),
	(100000),
	(200000),
	(300000),
	(400000),
	(500000),
	(600000),
	(700000),
	(800000),
	(900000),
	(010000),
	(011000),
	(012000),
	(013000),
	(014000),
	(015000),
	(016000),
	(017000),
	(018000),
	(019000)
;

SELECT * FROM book_loans;

INSERT INTO book_loans
	(date_out)
	VALUES
	('05/01/2018'),
	('06/01/2018'),
	('07/01/2018'),
	('08/01/2018'),
	('09/01/2018'),
	('10/01/2018'),
	('11/01/2018'),
	('12/01/2018'),
	('01/01/2019'),
	('02/01/2019'),
	('03/01/2019'),
	('04/01/2019'),
	('05/01/2019'),
	('06/01/2019'),
	('07/01/2019'),
	('08/01/2019'),
	('09/01/2019'),
	('10/01/2019'),
	('11/01/2019'),
	('12/01/2019')
;

SELECT * FROM book_loans;

INSERT INTO book_loans
	(date_due)
	VALUES
	('06/01/2018'),
	('07/01/2018'),
	('08/01/2018'),
	('09/01/2018'),
	('10/01/2018'),
	('11/01/2018'),
	('12/01/2018'),
	('01/01/2019'),
	('02/01/2019'),
	('03/01/2019'),
	('04/01/2019'),
	('05/01/2019'),
	('06/01/2019'),
	('07/01/2019'),
	('08/01/2019'),
	('09/01/2019'),
	('10/01/2019'),
	('11/01/2019'),
	('12/01/2019'),
	('01/01/2020')
;
SELECT * FROM book_loans;

INSERT INTO books
	(book_id)
	VALUES
	(001),
	(002),
	(003),
	(004),
	(005),
	(006),
	(007),
	(008),
	(009),
	(010),
	(011),
	(012),
	(013),
	(014),
	(015),
	(016),
	(017),
	(018),
	(019),
	(020)
;

SELECT * FROM books;

INSERT INTO books
	(title)
	VALUES
	('rich dad poor dad'),
	('the lost tribe'),
	('chariot of the gods'),
	('women who run with wolves'),
	('alien world order'),
	('tibetan book of the dead'),
	('of ice and fire'),
	('harry potter; dealthy hollows'),
	('the four agreements'),
	('the synchronicity key'),
	('gyn/ecology'),
	('rage becomes her'),
	('miracle mornings'),
	('self-actualization manifesto'),
	('the three levels of leadership'),
	('potty time with cailou'),
	('fake'),
	('awakening in the dream'),
	('stephen king book'),
	('stephen king book')

SELECT * FROM books;

INSERT INTO books
	(publisher_name)
	VALUES
	('warner books ed'),
	('podium publishing'),
	('berkley books'),
	('ballentine books'),
	('bear and company'),
	('Chogyam Trungpa'),
	('bantam books'),
	('bloomsbury publishing'),
	('amber-allen publishing'),
	('dutton'),
	('beacon press'),
	('atria books'),
	('hal elrod international'),
	('sounds true'),
	('management books'),
	('chouette editions'),
	('plata publishing'),
	('dutton'),
	('lele'),
	('lele')
;

SELECT * FROM books;

INSERT INTO borrower
	(card_num)
	VALUES
	(000000),
	(100000),
	(200000),
	(300000),
	(400000),
	(500000),
	(600000),
	(700000),
	(800000),
	(900000),
	(010000),
	(011000),
	(012000),
	(013000),
	(014000),
	(015000),
	(016000),
	(017000),
	(018000),
	(019000)
;

SELECT * FROM borrower;

INSERT INTO borrower
	(name_)
	VALUES
	('samantha'),
	('setephanie'),
	('joana'),
	('savanna'),
	('victoria'),
	('jack'),
	('billy'),
	('dinesh')

INSERT INTO borrower
	(address_)
	VALUES
	('0 st'),
	('1 st'),
	('2 st'),
	('3 st'),
	('4 st'),
	('5 st'),
	('6 st'),
	('7 st')
;

SELECT * FROM borrower

INSERT INTO borrower
	(phone_)
	VALUES
	('000-000-0000'),
	('111-111-1111'),
	('222-222-2222'),
	('333-333-3333'),
	('444-444-4444'),
	('555-555-5555'),
	('666-666-6666'),
	('777-777-7777')
;

SELECT * FROM borrower;

INSERT INTO book_authors
	(book_id)
	VALUES
	(001),
	(002),
	(003),
	(004),
	(005),
	(006),
	(007),
	(008),
	(009),
	(010),
	(011),
	(012),
	(013),
	(014),
	(015),
	(016),
	(017),
	(018),
	(019),
	(020)
;

SELECT * FROM book_authors;

INSERT INTO book_authors
	(author_name)
	VALUES
	('robert t kiyosaki'),
	('brad manuel'),
	('erich von daniken'),
	('clarissa pinkola estes'),
	('len kasten'),
	('graham coleman'),
	('george rr martin'),
	('jk rowling'),
	('don miguel ruiz'),
	('david wilcock'),
	('mary daly'),
	('soraya chemaly'),
	('hal elrod'),
	('abraham maslow'),
	('james scouller'),
	('joceline sanschagrin'),
	('robert t kiyosaki'),
	('david wilcock'),
	('stephen king'),
	('stephen king')
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