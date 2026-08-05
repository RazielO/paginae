CREATE TABLE books (
    id         TEXT PRIMARY KEY,
    title      TEXT,
    author     TEXT,
    pages      INTEGER,
    status     TEXT,
    format     TEXT,
    favorite   INTEGER,
    created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE activity (
    id           TEXT PRIMARY KEY,
    book_id      TEXT NOT NULL,
    reading_time INTEGER,
    pages        INTEGER,
    percentage   INTEGER,
    date         TEXT DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (book_id) 
        REFERENCES books (id)
        ON DELETE CASCADE
);