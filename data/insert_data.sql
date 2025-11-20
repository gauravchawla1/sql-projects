INSERT INTO departments VALUES
(1, 'Engineering'),
(2, 'Analytics'),
(3, 'HR');

INSERT INTO employees VALUES
(101, 'Amit Kumar', 1, 70000, '2021-04-12'),
(102, 'Riya Jain', 2, 60000, '2020-10-01'),
(103, 'Karan Mehta', 1, 85000, '2019-06-22'),
(104, 'Sonal Gupta', 3, 52000, '2022-01-15'),
(105, 'Rohit Verma', 2, 75000, '2018-11-10');

INSERT INTO projects VALUES
(501, 'AI Chatbot', 300000),
(502, 'Sales Dashboard', 150000),
(503, 'Automation Suite', 200000);

INSERT INTO employee_projects VALUES
(101, 501, 120),
(103, 501, 95),
(102, 502, 140),
(105, 502, 160),
(101, 503, 90),
(104, 503, 60);
