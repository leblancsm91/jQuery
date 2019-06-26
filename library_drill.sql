USE

CREATE PROC createLibraryD
AS
BEGIN

CREATE TABLE library_branch (
	branch_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	branch_name VARCHAR(50) NOT NULL
	address_ INT NOT NULL
);

CREATE TABLE publisher (
	publisher_name INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	address_ VARCHAR(50) NOT NULL
	phone_ INT NOT NULL
);

CREATE TABLE book_copies (
	book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	branch_id VARCHAR(50) NOT NULL
	num_of_copies INT NOT NULL
);

CREATE TABLE book_loans
	book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	branch_id VARCHAR(50) NOT NULL
	card_num INT NOT NULL
	date_in INT NOT NULL
	date_out INT NOT NULL
);

CREATE TABLE books
	book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	title VARCHAR(50) NOT NULL
	publisher_name INT NOT NULL
);

CREATE TABLE borrower
	card_num INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	name_ VARCHAR(50) NOT NULL
	address_ INT NOT NULL
	phone INT NOT NULL
);

CREATE TABLE book_authors
	book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	author_name VARCHAR(50) NOT NULL
);

INSERT INTO library_branch
	(branch_id)
	VALUES
	('a'),
	('b')
);

SELECT * FROM library_branch;

INSERT INTO library_branch
	(branch_name)
	VALUES
	('central'),
	('sharpstown')
);

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
);

SELECT * FROM publisher

INSERT INTO publisher
	(address_)
	VALUES
	('abc st'),
	('def st')
);

SELECT * FROM publisher

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
	('000-000-0008'),
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
	('000-000-0019'),
	('000-000-0020')
);

SELECT * FROM publisher

INSERT INTO book_copies
	(book_id)
	VALUES
	('001'),
	('002'),
	('003'),
	('004'),
	('005'),
	('006'),
	('007'),
	('008'),
	('009'),
	('011'),
	('012'),
	('013'),
	('014'),
	('015'),
	('016'),
	('017'),
	('018'),
	('019'),
	('020')
);

SELECT * FROM book_copies

INSERT INTO book_copies
	(branch_id)
	VALUES
	('001'),
	('010')
);

SELECT * FROM book_copies

INSERT INTO book_copies
	(num_of_copies)
	VALUES
	('5'),
	('4'),
	('3'),
	('2'),
	('1'),
	('5'),
	('4'),
	('3'),
	('2'),
	('1'),
	('5'),
	('4'),
	('3'),
	('2'),
	('1'),
	('5'),
	('4'),
	('3'),
	('2'),
	('1')

);

SELECT * FROM book_copies

INSERT INTO book_loans
	(book_id)
	VALUES
	('001'),
	('002'),
	('003'),
	('004'),
	('005'),
	('006'),
	('007'),
	('008'),
	('009'),
	('011'),
	('012'),
	('013'),
	('014'),
	('015'),
	('016'),
	('017'),
	('018'),
	('019'),
	('020')
);

SELECT * FROM book_loans

INSERT INTO book_loans
	(branch_id)
	VALUES
	('001'),
	('010')
);

SELECT * FROM book_loans

INSERT INTO book_loans
	(card_num)
	VALUES
	('999'),
	('888'),
	('777'),
	('666'),
	('555')
);

SELECT * FROM book_loans

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
	('11/01/2019')
);

SELECT * FROM book_loans
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
	('12/01/2019')
);

SELECT * FROM book_loans

INSERT INTO books
	(book_id)
	VALUES
	('001'),
	('002'),
	('003'),
	('004'),
	('005'),
	('006'),
	('007'),
	('008'),
	('009'),
	('011'),
	('012'),
	('013'),
	('014'),
	('015'),
	('016'),
	('017'),
	('018'),
	('019'),
	('020')
);

SELECT * FROM books

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
	('eat.pray.love'),
	('lonely planet; bali and lombak'),

);

SELECT * FROM books

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
	('penguin books'),
	('lonely planet')
);

SELECT * FROM books

INSERT INTO borrower
	(card_num)
	VALUES
	('999'),
	('888')
);

SELECT * FROM borrower

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
	('dinesh'),
	('gilfoyle'),
	('oj'),
	('malissa'),
	('richard'),
	('jeanne'),
	('turyn'),
	('julia'),
	('christina'),
	('joesph'),
	('willy'),
	('hermoine'),
	('voldemort')
);

SELECT * FROM borrower

INSERT INTO borrower
	(address_)
	VALUES
	('a st'),
	('b st'),
	('c st'),
	('d st'),
	('e st'),
	('f st'),
	('g st'),
	('h st'),
	('i st'),
	('j st'),
	('k st'),
	('l st'),
	('m st'),
	('n st'),
	('o st'),
	('p st'),
	('q st'),
	('r st'),
	('s st'),
	('t st')
);

SELECT * FROM borrower

INSERT INTO borrower
	(phone)
	VALUES
	('000-000-0000'),
	('100-000-0000'),
	('200-000-0000'),
	('300-000-0000'),
	('400-000-0000'),
	('500-000-0000'),
	('600-000-0000'),
	('700-000-0000'),
	('800-000-0000'),
	('900-000-0000'),
	('010-000-0000'),
	('020-000-0000'),
	('030-000-0000'),
	('040-000-0000'),
	('050-000-0000'),
	('060-000-0000'),
	('070-000-0000'),
	('080-000-0000'),
	('090-000-0000'),
	('001-000-0000')

);

SELECT * FROM borrower

INSERT INTO book_authors
	(book_id)
	VALUES
	('001'),
	('002'),
	('003'),
	('004'),
	('005'),
	('006'),
	('007'),
	('008'),
	('009'),
	('011'),
	('012'),
	('013'),
	('014'),
	('015'),
	('016'),
	('017'),
	('018'),
	('019'),
	('020')
);

SELECT * FROM book_authors

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
	('elizabeth gilbert'),
	('kate morgan')






END
