-- Query to find all books borrowed by a specific member
SELECT 
    Members.FirstName, Members.LastName, Books.Title, BorrowedBooks.BorrowDate
FROM 
    BorrowedBooks
JOIN 
    Members ON BorrowedBooks.MemberID = Members.MemberID
JOIN 
    Books ON BorrowedBooks.BookID = Books.BookID
WHERE 
    Members.FirstName = 'John' AND Members.LastName = 'Doe';

-- Query to find all available books (not borrowed)
SELECT 
    Title, Author, PublishedYear, Genre
FROM 
    Books
WHERE 
    BookID NOT IN (SELECT BookID FROM BorrowedBooks WHERE ReturnDate IS NULL);

-- Query to list all members and the total number of books they've borrowed
SELECT 
    Members.FirstName, Members.LastName, COUNT(BorrowedBooks.BookID) AS TotalBooksBorrowed
FROM 
    Members
LEFT JOIN 
    BorrowedBooks ON Members.MemberID = BorrowedBooks.MemberID
GROUP BY 
    Members.MemberID;
