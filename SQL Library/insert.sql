-- Insert data into the Books table
INSERT INTO Books (BookID, Title, Author, PublishedYear, Genre)
VALUES 
(1, 'To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction'),
(2, '1984', 'George Orwell', 1949, 'Dystopian'),
(3, 'Moby Dick', 'Herman Melville', 1851, 'Adventure');

-- Insert data into the Members table
INSERT INTO Members (MemberID, FirstName, LastName, DateOfBirth, MembershipDate)
VALUES 
(1, 'John', 'Doe', '1985-05-12', '2021-01-15'),
(2, 'Jane', 'Smith', '1990-07-22', '2020-08-10');

-- Insert data into the BorrowedBooks table
INSERT INTO BorrowedBooks (BorrowID, BookID, MemberID, BorrowDate, ReturnDate)
VALUES 
(1, 1, 1, '2023-01-10', '2023-02-10'),
(2, 2, 2, '2023-01-15', '2023-02-15');
