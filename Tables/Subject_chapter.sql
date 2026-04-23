#===================subject=================================
create table subject(id smallint primary key auto_increment,
						name varchar(32),
						description varchar(150)
						);
						
insert into subject(name,description)
values
('Physics','All chapters of Physics present under this.'),
('Chemistory','All chapters of Physics present under this.'),
('Maths','All chapters of Physics present under this.'),
('Biology','All chapters of Physics present under this.');

#===================chapters=================================
create table chapters(id int primary key auto_increment,
						subject_id smallint,
						name varchar(64),
						description varchar(150)
						);
						
insert into chapters(subject_id,name,description)
values
(1,'light','All chapters of Physics present under this.'),
(2,'atomic bonding','All chapters of Physics present under this.'),
(3,'calculus','All chapters of Physics present under this.'),
(4,'botony','All chapters of Physics present under this.');

#===============

