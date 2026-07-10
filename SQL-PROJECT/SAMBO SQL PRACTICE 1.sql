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


SELECT *
FROM subject_list
WHERE StudentCount = (
    SELECT MAX(StudentCount)
    FROM subject_list
);

SELECT AVG(Age) AS AverageAge FROM Students;
SELECT AVG(studyhoursperwee)AS Avestudyhours FROM class_survey_results;
