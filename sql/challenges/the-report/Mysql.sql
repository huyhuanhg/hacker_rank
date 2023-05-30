SELECT
  (
    CASE
      WHEN Grades.Grade < 8 THEN NULL
      ELSE Students.Name
    END
  ) NameAlias,
  Grades.Grade,
  Marks
FROM
  Students
  INNER JOIN Grades ON Grades.Min_Mark <= Students.Marks
  AND Grades.Max_Mark >= Students.Marks
ORDER BY
  Grades.Grade DESC,
  (
    CASE
      WHEN NameAlias IS NOT NULL THEN NameAlias
      ELSE Students.Marks
    END
  ) ASC;