
-- Retrieve all books borrowed by a specific borrower
SELECT b.title, a.name AS author, t.borrow_date, t.return_date
FROM Borrowers br
JOIN Transactions t ON br.borrower_id = t.borrower_id
JOIN Books b ON t.book_id = b.book_id
JOIN Authors a ON b.author_id = a.author_id
WHERE br.borrower_id = 123;

-- Find the most borrowed books
SELECT b.title, COUNT(t.transaction_id) AS borrow_count
FROM Books b
JOIN Transactions t ON b.book_id = t.book_id
GROUP BY b.title
ORDER BY borrow_count DESC
LIMIT 5;
