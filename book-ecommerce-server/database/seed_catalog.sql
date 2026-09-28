-- Bookly catalog seed: 20 categories, 25 authors, 38 books.
-- Paste into the Neon SQL Editor (database: neondb) and click Run.
-- Safe to run twice: rows that already exist are skipped.

-- 1) Categories (books need these first)
INSERT INTO categories (id, name) VALUES
  (1, 'Fiction'),
  (2, 'Non-Fiction'),
  (3, 'Classics'),
  (4, 'Romance'),
  (5, 'Science Fiction'),
  (6, 'Fantasy'),
  (7, 'Mystery'),
  (8, 'Thriller'),
  (9, 'Historical Fiction'),
  (10, 'Biography'),
  (11, 'Philosophy'),
  (12, 'Poetry'),
  (13, 'Young Adult'),
  (14, 'Children''s'),
  (15, 'Programming'),
  (16, 'Self-Help'),
  (17, 'Business'),
  (18, 'History'),
  (19, 'Horror'),
  (20, 'Essays')
ON CONFLICT DO NOTHING;

-- 2) Authors (books need these first)
INSERT INTO authors (id, name) VALUES
  (1, 'George Orwell'),
  (2, 'Jane Austen'),
  (3, 'Mark Twain'),
  (4, 'Ernest Hemingway'),
  (5, 'Fyodor Dostoevsky'),
  (6, 'J.R.R. Tolkien'),
  (7, 'Agatha Christie'),
  (8, 'Harper Lee'),
  (9, 'Gabriel García Márquez'),
  (10, 'Mary Shelley'),
  (11, 'Arthur Conan Doyle'),
  (12, 'J.K. Rowling'),
  (13, 'Stephen King'),
  (14, 'Frank Herbert'),
  (15, 'Kurt Vonnegut'),
  (16, 'Paulo Coelho'),
  (17, 'Yuval Noah Harari'),
  (18, 'Michelle Obama'),
  (19, 'James Clear'),
  (20, 'Robert C. Martin'),
  (21, 'Bjarne Stroustrup'),
  (22, 'Haruki Murakami'),
  (23, 'Dan Brown'),
  (24, 'Sun Tzu'),
  (25, 'Walter Isaacson')
ON CONFLICT DO NOTHING;

-- 3) Books
INSERT INTO books (id, title, author_id, category_id, price, stock, sales_count, description, published_date, book_img, created_at) VALUES
  (1, '1984', 1, 5, 19.99, 60, 0, 'A dystopian novel about surveillance, propaganda, and totalitarian control.', '1949-06-08', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229448/1_qpnnbg.jpg', '2026-03-04 00:17:54.611274'),
  (2, 'Pride and Prejudice', 2, 4, 14.99, 55, 0, 'A classic romance exploring love, class, and first impressions in Regency England.', '1813-01-28', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229446/2_l50yao.jpg', '2026-03-04 00:17:54.611274'),
  (3, 'The Adventures of Tom Sawyer', 3, 3, 12.50, 70, 0, 'A humorous coming-of-age adventure along the Mississippi River.', '1876-06-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229446/3_bmf8nc.webp', '2026-03-04 00:17:54.611274'),
  (4, 'The Old Man and the Sea', 4, 3, 13.75, 45, 0, 'A short classic about endurance, pride, and a fisherman’s battle with nature.', '1952-09-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229446/4_vsbtqt.jpg', '2026-03-04 00:17:54.611274'),
  (6, 'Crime and Punishment', 5, 3, 18.95, 40, 0, 'A psychological classic about guilt, morality, and redemption in St. Petersburg.', '1866-01-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229447/6_ppcxmu.jpg', '2026-03-04 00:17:54.611274'),
  (7, 'The Hobbit', 6, 6, 17.99, 80, 0, 'A fantasy adventure following Bilbo Baggins on an unexpected journey.', '1937-09-21', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229447/7_jwojyz.jpg', '2026-03-04 00:17:54.611274'),
  (8, 'Murder on the Orient Express', 7, 7, 15.99, 50, 0, 'Detective Hercule Poirot investigates a murder aboard a luxury train.', '1934-01-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229413/8_i6ttmq.jpg', '2026-03-04 00:17:54.611274'),
  (9, 'To Kill a Mockingbird', 8, 3, 16.50, 65, 0, 'A powerful story of justice and morality in the American South.', '1960-07-11', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229410/9_ahh4ik.jpg', '2026-03-04 00:17:54.611274'),
  (10, 'Animal Farm', 1, 3, 11.99, 75, 0, 'A political allegory about power and corruption on a farm.', '1945-08-17', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229411/10_es7nhl.jpg', '2026-03-04 00:17:54.611274'),
  (11, 'Sense and Sensibility', 2, 4, 13.99, 50, 0, 'A story of two sisters navigating love and society.', '1811-10-30', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229410/11_d5q0xt.jpg', '2026-03-04 00:17:54.611274'),
  (12, 'The Brothers Karamazov', 5, 3, 20.99, 30, 0, 'A philosophical novel about faith, doubt, and family conflict.', '1880-11-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229411/12_isuczx.png', '2026-03-04 00:17:54.611274'),
  (13, 'Frankenstein', 10, 5, 12.99, 60, 0, 'A gothic tale of creation, responsibility, and humanity.', '1818-01-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229411/13_ea6crb.jpg', '2026-03-04 00:17:54.611274'),
  (14, 'The Hound of the Baskervilles', 11, 7, 10.99, 55, 0, 'Sherlock Holmes investigates a legendary curse on the moors.', '1902-04-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229411/14_ddjjjn.jpg', '2026-03-04 00:17:54.611274'),
  (15, 'Harry Potter and the Sorcerer''s Stone', 12, 13, 18.99, 120, 0, 'A young wizard discovers his past and begins magical schooling.', '1997-06-26', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229412/15_cqocia.jpg', '2026-03-04 00:17:54.611274'),
  (16, 'Harry Potter and the Chamber of Secrets', 12, 13, 18.99, 110, 0, 'A mystery unfolds at Hogwarts as danger returns.', '1998-07-02', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229412/16_nzt3ox.jpg', '2026-03-04 00:17:54.611274'),
  (17, 'The Shining', 13, 19, 16.99, 45, 0, 'A family confronts terrifying forces in an isolated hotel.', '1977-01-28', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229387/17_s3t9ax.jpg', '2026-03-04 00:17:54.611274'),
  (18, 'It', 13, 19, 19.99, 40, 0, 'A group of friends faces an ancient evil in their hometown.', '1986-09-15', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229387/18_vtwzao.webp', '2026-03-04 00:17:54.611274'),
  (19, 'Dune', 14, 5, 21.50, 60, 0, 'Epic science fiction of politics, ecology, and destiny on Arrakis.', '1965-08-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229387/19_osyjp9.jpg', '2026-03-04 00:17:54.611274'),
  (20, 'Slaughterhouse-Five', 15, 3, 14.50, 50, 0, 'A satirical anti-war novel with time-bending storytelling.', '1969-03-31', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229388/20_uoqmnf.jpg', '2026-03-04 00:17:54.611274'),
  (21, 'The Alchemist', 16, 3, 13.50, 90, 0, 'A fable about following dreams and finding purpose.', '1988-01-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229385/21_dvozqd.jpg', '2026-03-04 00:17:54.611274'),
  (22, 'Sapiens: A Brief History of Humankind', 17, 18, 22.00, 70, 0, 'A sweeping history of Homo sapiens and modern society.', '2011-01-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229386/22_vhkyks.jpg', '2026-03-04 00:17:54.611274'),
  (23, 'Becoming', 18, 10, 24.99, 55, 0, 'A memoir about identity, resilience, and public life.', '2018-11-13', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229386/23_iaevn0.jpg', '2026-03-04 00:17:54.611274'),
  (24, 'Atomic Habits', 19, 16, 18.50, 85, 0, 'A practical guide to building good habits and breaking bad ones.', '2018-10-16', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229387/24_hxxpkn.jpg', '2026-03-04 00:17:54.611274'),
  (25, 'Clean Code', 20, 15, 32.99, 40, 0, 'A handbook of agile software craftsmanship and best practices.', '2008-08-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229386/25_gtcqce.jpg', '2026-03-04 00:17:54.611274'),
  (26, 'The C++ Programming Language', 21, 15, 44.99, 25, 0, 'Comprehensive reference and guide to C++ by its creator.', '2013-05-19', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229364/26_jgoqjs.jpg', '2026-03-04 00:17:54.611274'),
  (27, 'Norwegian Wood', 22, 3, 15.25, 45, 0, 'A nostalgic story of love and loss in 1960s Japan.', '1987-09-04', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229364/27_axl6h8.jpg', '2026-03-04 00:17:54.611274'),
  (28, 'Kafka on the Shore', 22, 6, 17.75, 40, 0, 'A surreal journey blending mythology, memory, and fate.', '2002-09-12', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229362/28_hctu5b.png', '2026-03-04 00:17:54.611274'),
  (29, 'The Da Vinci Code', 23, 8, 16.99, 65, 0, 'A fast-paced thriller involving codes, symbols, and secrets.', '2003-03-18', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229363/29_n4qmzj.jpg', '2026-03-04 00:17:54.611274'),
  (30, 'Angels & Demons', 23, 8, 15.99, 55, 0, 'A thriller involving secret societies and Vatican intrigue.', '2000-05-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229364/30_okrcli.jpg', '2026-03-04 00:17:54.611274'),
  (31, 'The Art of War', 24, 17, 9.99, 100, 0, 'Classic strategy text on leadership, conflict, and tactics.', '0500-01-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229363/31_im5dfx.jpg', '2026-03-04 00:17:54.611274'),
  (32, 'Steve Jobs', 25, 10, 23.99, 50, 0, 'A biography of Apple’s co-founder based on extensive interviews.', '2011-10-24', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790230964/32_eprm4b.jpg', '2026-03-04 00:17:54.611274'),
  (33, 'The Lord of the Rings: The Fellowship of the Ring', 6, 6, 19.99, 70, 0, 'The first volume of an epic quest to destroy a powerful ring.', '1954-07-29', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790229331/33_tjx7ix.jpg', '2026-03-04 00:17:54.611274'),
  (34, 'The Lord of the Rings: The Two Towers', 6, 6, 19.99, 65, 0, 'The journey continues as darkness spreads across Middle-earth.', '1954-11-11', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790227823/34_qqzaqx.jpg', '2026-03-04 00:17:54.611274'),
  (35, 'The Lord of the Rings: The Return of the King', 6, 6, 19.99, 60, 0, 'The final battle for Middle-earth and the fate of the ring.', '1955-10-20', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790226580/35_ywv1jp.webp', '2026-03-04 00:17:54.611274'),
  (36, 'And Then There Were None', 7, 7, 14.99, 55, 0, 'Ten strangers are trapped on an island with a deadly mystery.', '1939-11-06', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790226457/36_mchyc7.jpg', '2026-03-04 00:17:54.611274'),
  (37, 'The Murder of Roger Ackroyd', 7, 7, 13.99, 50, 0, 'One of Poirot’s most famous cases with a legendary twist.', '1926-06-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790226291/bookly/books/book_37.jpg', '2026-03-04 00:17:54.611274'),
  (38, 'Love in the Time of Cholera', 9, 4, 16.50, 40, 0, 'A love story spanning decades, patience, and second chances.', '1985-01-01', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790224344/bookly/books/book_38.jpg', '2026-03-04 00:17:54.611274'),
  (39, 'The Grapes of Wrath', 4, 9, 17.25, 34, 1, 'A powerful story of hardship and hope during the Great Depression.', '1939-04-14', 'https://res.cloudinary.com/dn19ptedy/image/upload/v1790221648/bookly/books/book_39.jpg', '2026-03-04 00:17:54.611274')
ON CONFLICT DO NOTHING;

-- 4) Move each ID counter past the highest ID, so books, authors and
--    categories added later in the admin panel get new, unused IDs.
SELECT setval(pg_get_serial_sequence('categories', 'id'), (SELECT MAX(id) FROM categories));
SELECT setval(pg_get_serial_sequence('authors', 'id'), (SELECT MAX(id) FROM authors));
SELECT setval(pg_get_serial_sequence('books', 'id'), (SELECT MAX(id) FROM books));

-- 5) Check: should show 20 | 25 | 38
SELECT (SELECT count(*) FROM categories) AS categories,
       (SELECT count(*) FROM authors)    AS authors,
       (SELECT count(*) FROM books)      AS books;
