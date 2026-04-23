#to run this file we can use this command "mysql -uroot -proot ems_db < Temp_Questions.sql"

drop database ems_db;
create database ems_db;
use ems_db;

#====================temp_questions Table=====================
create table temp_questions(id smallint primary key auto_increment,
					question varchar(1000),
					option_a varchar(100),
					option_b varchar(100),
					option_c varchar(100),
					option_d varchar(100),
					option_e varchar(100),
					option_f varchar(100),
					correct_option varchar(11),
					option_type_id tinyint,
					question_level_id tinyint,
					chapter_id int,
					is_active varchar(1),
					inserted_dttm timestamp default current_timestamp,
					inserted_by varchar(32),
					updated_dttm timestamp default current_timestamp on update current_timestamp,
					updated_by varchar(32)
					);
					

#===================option_type================================

create table option_type(id tinyint primary key auto_increment,
						name varchar(32),
						description varchar(150)
						);
						
insert into option_type(name,description)
values
('Single Correct Answer','Only one option is correct.'),
('Multiple Correct Answers','More than one option is correct.'),
('Binary Choice','True/False, Simplest form: two options only.'),
('Matching / Assertion-Reason','Options involve matching pairs or evaluating cause-effect.'),
('Best Answer','Several options may be partially correct, but one is the best or most appropriate.');


#===================question_level=================================

create table question_level(id tinyint primary key auto_increment,
						name varchar(32),
						description varchar(150)
						);
						
insert into question_level(name,description)
values
('Easy','Basic question'),
('Medium','Better than basic but easier than Advance'),
('Advance','Most difficult questions'),
('Appeared','Questions that is asked in competitive exam');

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


					
					
					