INSERT INTO worker(name, birthday, level, salary) VALUES
('Josh', '1995-06-21', 'Junior', 850),
('Evhenii', '1997-07-22', 'Senior', 5500),
('Masha', '1994-03-18', 'Trainee', 500),
('Ira', '2003-10-03', 'Trainee', 550),
('Victor', '1994-09-14', 'Middle', 3000),
('Kristina', '1991-08-25', 'Middle', 3500),
('Veronika', '1997-08-09', 'Junior', 1000),
('Olya', '1992-12-15', 'Junior', 1200),
('Alena', '1996-09-04', 'Senior', 5200),
('Uriy', '1992-11-06', 'Middle', 2800);

INSERT INTO client (name) VALUES
('Elon Musk'),
('John Snow'),
('Margarita Wallet'),
('Dmitriy Gordon'),
('Serhiy Pritula');

INSERT INTO project (client_id, start_date, finish_date) 
VALUES
(2, '2006-10-22', '2008-11-20'),
(1, '2020-03-10', '2020-10-25'),
(4, '2021-07-22', '2021-08-22'),
(3, '2022-04-11', '2022-12-29'),
(5, '2018-05-10', '2020-01-22'),
(1, '2019-09-17', '2021-03-19'),
(3, '2015-06-16', '2016-02-14'),
(5, '2020-03-10', '2020-12-30'),
(1, '2021-04-24', '2022-04-22'),
(1, '2022-06-19', '2023-02-18');

UPDATE project SET name = CASE
   WHEN id = 1 THEN 'project_1'
   WHEN id = 2 THEN 'project_2'
   WHEN id = 3 THEN 'project_3'
   WHEN id = 4 THEN 'project_4'
   WHEN id = 5 THEN 'project_5'
   WHEN id = 6 THEN 'project_6'
   WHEN id = 7 THEN 'project_7'
   WHEN id = 8 THEN 'project_8'
   WHEN id = 9 THEN 'project_9'
   WHEN id = 10 THEN 'project_10'
   END;

INSERT INTO project_worker (project_id, worker_id)
VALUES
(1, 5),
(1, 10),
(2, 6),
(3, 2),
(4, 9),
(4, 3),
(4, 8),
(5, 2),
(5, 4),
(6, 1),
(6, 5),
(6, 7),
(6, 10),
(7, 5),
(7, 8),
(8, 2),
(8, 9),
(9, 5),
(9, 6),
(10, 2),
(10, 7),
(10, 4);