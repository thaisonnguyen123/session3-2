CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100) NOT NULL
);

CREATE TABLE readers (
    reader_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100)
);

CREATE TABLE borrowings (
    borrowing_id INT PRIMARY KEY,
    reader_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date DATE,
    return_date DATE,

    FOREIGN KEY (reader_id)
        REFERENCES readers(reader_id),

    FOREIGN KEY (book_id)
        REFERENCES books(book_id)
);
