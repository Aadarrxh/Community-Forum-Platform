create database userappdb;
use userappdb;
create table users
(id integer auto-increment primary key,
uname varchar(100) not null,
email varchar(50) not null unique,
country varchar(50) not null,
passwd varchar(20) not null
);

CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

