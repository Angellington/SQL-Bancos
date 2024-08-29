CREATE TABLE artist (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE show (
  id INTEGER PRIMARY KEY,
  artist_id INTEGER NOT NULL,
  date_time DATETIME NOT NULL,
  stage TEXT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artist (id)
);

CREATE TABLE ticket (
  id INTEGER PRIMARY KEY,
  show_id INTEGER NOT NULL,
  price REAL NOT NULL,
  type TEXT NOT NULL,
  FOREIGN KEY (show_id) REFERENCES show (id)
);

CREATE TABLE customer (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL
);

CREATE TABLE purchase (
  id INTEGER PRIMARY KEY,
  customer_id INTEGER NOT NULL,
  ticket_id INTEGER NOT NULL,
  purchase_date DATETIME NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customer (id),
  FOREIGN KEY (ticket_id) REFERENCES ticket (id)
);
INSERT INTO artist (id, name) VALUES
(1, 'Coldplay'),
(2, 'Foo Fighters'),
(3, 'Radiohead');