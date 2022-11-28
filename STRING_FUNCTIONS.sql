USE book_shop;

CREATE TABLE books(
   
   ID INT AUTO_INCREMENT,
   TITLE VARCHAR(100),
   AUTHOR_FNAME VARCHAR(100),
   AUTHOR_LNAME VARCHAR(100),
   RELEASED_YEAR INT,
   STOCK_QUANTITY INT,
   PAGES INT,
   PRIMARY KEY(ID)
);
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

--   CONCATENATION

SELECT CONCAT(AUTHOR_LNAME,' ',AUTHOR_FNAME) FROM BOOKS;
SELECT CONCAT_WS('-',TITLE,AUTHOR_FNAME,AUTHOR_LNAME) FROM BOOKS;

--   SUBSTRING
SELECT SUBSTRING(TITLE,1,15) FROM BOOKS;
SELECT SUBSTR(TITLE,1,4) FROM BOOKS;
SELECT SUBSTRING(AUTHOR_FNAME,-4) FROM BOOKS;
SELECT SUBSTRING(AUTHOR_LNAME,1,1),AUTHOR_LNAME FROM BOOKS;
 
 -- CONCATENATION AND SUBSTRING
 SELECT CONCAT(SUBSTR(TITLE,1,10),'...') FROM BOOKS;
 
SELECT 
    CONCAT_WS('.',
            SUBSTR(AUTHOR_FNAME, 1, 1),
            SUBSTR(AUTHOR_LNAME, 1, 1)) AS AUTHOR_INITIALS
FROM
    BOOKS;
    
    
-- REPLACE 

SELECT REPLACE(TITLE,' ','-') FROM BOOKS;

-- REVERSE
SELECT REVERSE(AUTHOR_FNAME) FROM BOOKS;
SELECT CONCAT(AUTHOR_FNAME,REVERSE(AUTHOR_FNAME)) FROM BOOKS;

-- CHAR_LENGTH AND LENGTH

SELECT CHAR_LENGTH(TITLE) FROM BOOKS;
SELECT LENGTH(TITLE) FROM BOOKS;

-- UPPER AND LOWER (OR) LCASE AND UCASE

SELECT UPPER(TITLE) FROM BOOKS;

SELECT CONCAT('I LOVE ',UPPER(TITLE),' !!!')  FROM BOOKS WHERE ID=1;

-- string exercise 1
SELECT 
    CONCAT_WS(' ',
            title,
            'was released in',
            RELEASED_YEAR) AS blurb
FROM
    books;

-- string exercise 2
SELECT 
    title, CHAR_LENGTH(title) AS character_count
FROM
    books;

--  string exercise 3
SELECT 
    CONCAT(SUBSTR(title, 1, 10), ' ...') AS 'short title',
    CONCAT_WS(',', author_lname, author_fname) AS author,
    CONCAT_WS(' ', stock_quantity, 'in stock') AS quantity
FROM
    books;
    
-- string exercise 4

SELECT 
    CONCAT_WS(' ',
            title,
            'was released in',
            RELEASED_YEAR)
FROM
    books;