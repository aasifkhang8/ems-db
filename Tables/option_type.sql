
create table option_type(id tinyint primary key auto_increment,
						name varchar(32),
						description varchar(150)
						);
						
insert into vertical(name,description)
values
('Single Correct Answer','Only one option is correct.'),
('Multiple Correct Answers','More than one option is correct.'),
('Binary Choice','True/False, Simplest form: two options only.'),
('Matching / Assertion-Reason','Options involve matching pairs or evaluating cause-effect.'),
('Best Answer','Several options may be partially correct, but one is the best or most appropriate.');