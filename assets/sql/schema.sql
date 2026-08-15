CREATE TABLE books (
    id TEXT PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT,
    pages INTEGER,
    /* Values "reading", "done", "to-read" */
    status TEXT NOT NULL,
    /* Values "hardcover", "paperback", "ebook", "audiobook" */
    format TEXT,
    current_progress REAL DEFAULT 0.0,
    favorite INTEGER DEFAULT 0,
    created_at TEXT DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE activities (
    id INTEGER NOT NULL PRIMARY KEY,
    book_id TEXT NOT NULL,
    reading_time INTEGER,
    progress REAL,
    date TEXT DEFAULT CURRENT_TIMESTAMP,
    created_at TEXT DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (book_id) REFERENCES books (id) ON DELETE CASCADE
);
CREATE TABLE notes (
    id INTEGER NOT NULL PRIMARY KEY,
    book_id TEXT NOT NULL,
    contents TEXT NOT NULL,
    created_at TEXT DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (book_id) REFERENCES books (id) ON DELETE CASCADE
);
