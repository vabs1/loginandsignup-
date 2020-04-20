CREATE TABLE users (
    id INT NOT NULL PRIMARY KEY ,
    username VARCHAR(50) NOT NULL ,
    userpassword VARCHAR(255) NOT NULL,
	firstName VARCHAR(50) NOT NULL,
	LastName  VARCHAR(50) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
)

Insert into users(id, username,userpassword, firstname,lastname,created_at) 
values (1, 'vathawale', 'vpassword123', 'Vaibhav', 'Athawale', getdate());

Insert into users(id, username,userpassword, firstname,lastname,created_at) 
values (2, 'sathawale', 'spassword123', 'Shashank', 'Athawale', getdate());