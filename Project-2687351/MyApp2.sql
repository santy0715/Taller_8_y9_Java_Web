drop database  if exists myapp;
Create database myapp;
use myapp;
CREATE TABLE users (
  user_id INT auto_increment PRIMARY KEY,
  user_firstname VARCHAR(40) NOT NULL,
  user_lastname VARCHAR(40) NOT NULL,
  user_email VARCHAR(60) NOT NULL,
  user_password VARBINARY(255)
);
create table categories (
category_id integer auto_increment primary key,
category_name varchar(40) not null
);

create table product (
Id_product int auto_increment,
Product_name varchar(40) not null,
Product_value int not null,
category_id int ,
primary key (Id_product),
foreign key(category_id) references categories(category_id)
);

insert into users (user_firstname,user_lastname,user_email,user_password)
values (UPPER("juan"),upper("pinzon"),"jpin@gamil.com",AES_ENCRYPT('password','$2a$12$HP6nfQoey2MA4iFg.lDuO.ywU/W0vUpOIdElrRvwD34VrbA.YNsAy'));

select*from users;
select*from categories;
select*from product;