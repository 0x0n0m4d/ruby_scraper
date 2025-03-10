CREATE TABLE users (
    id int,
    username varchar(140),
    name varchar(255),
    passwd char(128),
    isActive boolean,
    createdAt date
);

INSERT INTO users VALUES (1, "martin", "Martin Jackson", "1password", true, '2024-07-04'),
(2, "bill", "Bill Cipher", "ilovemyself", true, '2024-08-25'),
(3, "michael", "Michael Johnes", "lavidaesbella", false, '2024-09-15'),
(4, "andrew", "Andrew Garfield", "tequieromucho", true, '2024-09-22'),
(5, "scott", "Scott", "mysecret", false, '2024-10-20'),
(6, "daniel", "Daniel Felix", "0123456789", true, '2024-10-29'),
(7, "thomas", "Thomas Turban", "volleyball", true, '2024-10-31'),
(8, "sara", "Sara", "jordan23", false, '2024-12-03'),
(9, "duda", "Maria Eduarda", "ragnarok", true, '2025-01-12'),
(10, "n0m4d", "Lucas Rodrigues", "p@55w0rd!", false, '2025-03-10');
