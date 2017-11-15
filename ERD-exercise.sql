CREATE TABLE Customers (
		customer_id int not null,
        first_name varchar(25) not null,
        last_name varchar(25) not null,
        email varchar(50) not null,
        password varchar(50) not null,
        
        PRIMARY KEY(customer_id)
);

CREATE TABLE Subscriptions (
        subscription_id int not null,
        customer_id int not null,
        password varchar(50) not null,
        renewal_date date not null,
        
        PRIMARY KEY(subscription_id)
        FOREIGN KEY(customer_id)
);

CREATE TABLE Payments (
        payment_id int not null,
        customer_id int not null,
        cc_info varchar(50) not null,
        due_date date not null,
        
        PRIMARY KEY(payment_id)
        FOREIGN KEY(customer_id)
);

CREATE TABLE Genres (
		genre_id int not null,
        genre varchar(25) not null,
        
        PRIMARY KEY(genre_id)
);

CREATE TABLE Ratings (
        rating_id int not null,
        rating varchar(5) not null,

        PRIMARY KEY(rating_id)
);

CREATE TABLE Content (
    content_id int not null,
    title varchar(50) not null,
    description varchar(300) not null,
    length in not null
);