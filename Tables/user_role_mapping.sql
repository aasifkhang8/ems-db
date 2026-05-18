#======================role=============================
create table role(id tinyint primary key auto_increment,
				  role_name varchar(32));
				  
insert into role(role_name)
values
('ADMIN'),
('ORG'),
('SALESMAN'),
('ASS PROFESSOR'),
('PROFESSOR'),
('STUDENT');
				 
#======================user=============================
create table user(id smallint primary key auto_increment,
						username varchar(15),
						password varchar(150),
						firstname varchar(32),
						lastname varchar(15),
						mobno varchar(15),
						email varchar(32),
						address varchar(150),
						is_active varchar(1),
						inserted_dttm timestamp default current_timestamp,
						inserted_by varchar(15));
						
insert into user(username,password,firstname,lastname,mobno,email,is_active)
			values
			('aasif','123','aasif','chaudhary','123','aasif@gmail.com','A'),
			('sqb06','882822','saquib','chaudhary','123','saquib@gmail.com','A'),
			('frz01','1358','feroz','.','123','feroz@gmail.com','A');
				  

#======================user_role_mapping=============================
create table user_role_mapping(id smallint primary key auto_increment,
				  user_id smallint,
				  role_id tinyint);

insert into user_role_mapping(user_id,role_id)
values
(1,6),
(2,5),
(3,3);