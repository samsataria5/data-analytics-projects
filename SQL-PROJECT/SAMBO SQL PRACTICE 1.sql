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

WITH subject_list AS (
    SELECT deviceusedforlea,
           COUNT(*) AS StudentCount
    FROM class_survey_results
    GROUP BY deviceusedforlea
)
SELECT *
FROM subject_list
WHERE StudentCount = (
    SELECT MAX(StudentCount)
    FROM subject_list
);

WITH subject_list AS (
    SELECT favoritesubject,
           COUNT(*) AS StudentCount
    FROM class_survey_results
    GROUP BY favoritesubject
)
SELECT *
FROM subject_list
WHERE StudentCount = (
    SELECT MAX(StudentCount)
    FROM subject_list
);

WITH subject_list AS (
    SELECT preferredlearnin,
           COUNT(*) AS StudentCount
    FROM class_survey_results
    GROUP BY preferredlearnin
)SELECT
(
    COUNT(*) * SUM(studyhoursperwee * testscore)
    - SUM(studyhoursperwee) * SUM(testscore)
)
/
SQRT(
    (
        COUNT(*) * SUM(studyhoursperwee * studyhoursperwee)
        - POWER(SUM(studyhoursperwee), 2)
    )
    *
    (
        COUNT(*) * SUM(testscore * testscore)
        - POWER(SUM(testscore), 2)
    )
) AS correlation
FROM class_survey_results;

 CREATE TABLE Church(
  ChurchID INTEGER PRIMARY KEY AUTOINCREMENT,
  ChurchName TEXT NOT NULL,
  Name Text NOT NULL,
  Age INTEGER NOT NULL,
  Parish TEXT NOT NULL,
  Position TEXT NOT NULL,
  OrdinationStatus TEXT NOT NULL,
  YearOfOrdination INTEGER NOT NULL,
  NumbOfYearsSpentParish INTEGER NOT NULL,
  LastParish TEXT NOT NULL
);
INSERT INTO Church (ChurchName,Name,Age,Parish,Position, OrdinationStatus,YearOfordination,numbofyearsspentparish,lastParish)                    
VALUES
('Rccg Dew OF Heaven','Sambo Sataria',57,'Dew OF heaven','Pastor','Full pastor',2020,3,'City of Deliverance'),
('Rccg Dew Of Heaven','Sambo Emmanuel',22,'Dew OF heaven','worker','A/P',2019,3,'City of Deliverance'),
('Rccg Dew OF Heaven','Ayebatari Sataria',55,'Dew OF heaven','AP','',2018,3,'City of Deliverance'),
('Rccg Dew OF Heaven','Sambo Glory',22,'Dew OF heaven','Choir','',2017,3,'City of Deliverance'),
('Rccg Dew OF Heaven','Sambo Sataria',57,'Dew OF heaven','Pastor','deacon',2020,3,'City of Deliverance'),
('Rccg Dew OF Heaven','Numoye Ben',43,'Bethel','Pastor','',2024,2,'City of Deliverance');
 SELECT * FROM Church;


CREATE TABLE Students(
 StudentID INTEGER PRIMARY KEY AUTOINCREMENT,
 StudentName TEXT NOT NULL,
 Age INTEGER NOT NULL,
 Class TEXT NOT NULL,
 AverageScore INTEGER NOT NULL,
 PercentageScore INTEGER NOT NULL,
 ClassOfGrade TEXT NOT NULL,
 PositionInClass INTEGER NOT NULL
);
INSERT INTO Students (StudentName, Age, Class, AverageScore, PercentageScore, ClassOfGrade,PositionInClass)
VALUES
('Ada Obi',15,'SS1',60,57,'C',18),
('Ebi Williams',13,'JSS3',70,75,'B',3),
('Nimi Briggs',14,'SS1',65,75,'A',3),
('Preye Jone',15,'SS2',65,82,'A',1),
('Emmanuel Ombu',16,'SS3',70,80,'A',2),
('EMMA Sambo',15,'SS1',60,57,'C',18),
('Glory Sambo',16,'SS1',65,75,'A',3),
('Samuel Briggs',14,'SS1',65,80,'A',3); 
SELECT * FROM Students;
SELECT StudentName, Age,percentagescore,averagescore From Students;
SELECT * FROM Students WHERE Age >=15;
SELECT * FROM Students WHERE Class ='SS2';
SELECT * FROM Students WHERE Class ='SS1';
SELECT * FROM Students WHERE Class Like 'SS%';
SELECT AVG(Age) AS AverageAge FROM Students;
SELECT ROUND(AVG(Age),1) AS AvarageAge FROM Students;
SELECT (AVG(Age)) AS AvarageAge FROM Students;
SELECT class, COUNT(*) AS StudentCount FROM Students GROUP BY Class;
SELECT MAX(age) AS Maximum FROM Students;
SELECT MIN(age) AS Minimum FROM Students;





SELECT *
FROM subject_list
WHERE StudentCount = (
    SELECT MAX(StudentCount)
    FROM subject_list
);

SELECT AVG(Age) AS AverageAge FROM Students;
SELECT AVG(studyhoursperwee)AS Avestudyhours FROM class_survey_results;
