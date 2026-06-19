CREATE TABLE Students (
  StudentID INTEGER PRIMARY KEY AUTOINCREMENT,
  StudentName TEXT NOT NULL,
  Age INTEGER NOT NULL,
  Class TEXT NOT NULL
);
INSERT INTO Students (StudentName, Age, Class)
VALUES
('Ada Obi', 15, 'SS1'),
('Ebi Williams', 13, 'JSS3'),
('Nimi Briggs', 14, 'SS1'),
('Preye Jone', 15, 'SS2'),
('Emmanuel Ombu', 16, 'SS3');

SELECT * FROM Students;
SELECT StudentName, Age From Students;
SELECT * FROM Students WHERE Age >=15;
SELECT * FROM Students WHERE Class ='SS2';

SELECT * FROM Students WHERE Class ='SS1';
SELECT * FROM Students WHERE Class Like 'SS%';
SELECT AVG(Age) AS AverageAge FROM Students;