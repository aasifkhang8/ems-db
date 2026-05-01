#===================subjects=================================
create table subjects(id smallint primary key auto_increment,
						name varchar(64) NOT NULL,
						description varchar(256)
						);
						
insert into subjects(name,description)
values
('Physics','All chapters of Physics present under this.'),
('Chemistory','All chapters of Chemistory present under this.'),
('Mathematics','All chapters of Mathematics present under this.'),
('Biology','All chapters of Biology present under this.');

#===========================topics==========================
CREATE TABLE topics (
    id INT PRIMARY KEY AUTO_INCREMENT,
    subject_id smallint NOT NULL,
    name VARCHAR(100) NOT NULL,
    description varchar(256)
);

INSERT INTO topics (subject_id, name) VALUES 
(3, 'Algebra'),
(3, 'Geometry'),
(1, 'light'),
(2, 'bond'), 
(4, 'botony'), 
(1, 'Mechanics');

#===================chapters=================================
create table chapters(id int primary key auto_increment,
						topic_id int not null,
						name varchar(64) not null,
						description varchar(150)
						);
						
insert into chapters(topic_id,name,description)
values
(3,'light','All chapters of Physics present under this.'),
(4,'atomic bonding','All chapters of Physics present under this.'),
(1,'calculus','All chapters of Physics present under this.'),
(5,'botony','All chapters of Physics present under this.'),
(1, 'Linear Equations',''),
(1, 'Quadratic Equations',''),
(2, 'Triangles',''),
(6, 'Newtons Laws','');

-- verifying query
#SELECT s.name as subjects, t.name as topics, c.name as chapters
#FROM subjects s
#JOIN topics t ON s.id = t.subject_id
#JOIN chapters c ON t.id = c.topic_id
#WHERE s.name = 'Mathematics';