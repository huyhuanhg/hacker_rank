SELECT
  TStarts.Start_Date,
  TEnds.End_Date
FROM
  (
    SELECT
      Start_Date,
      ROW_NUMBER() OVER (
        ORDER BY
          Start_Date ASC
      ) Row_Num
    FROM
      Projects
    WHERE
      (
        Start_Date NOT IN (
          SELECT
            End_Date
          FROM
            Projects
        )
      )
  ) TStarts
  JOIN (
    SELECT
      End_Date,
      ROW_NUMBER() OVER (
        ORDER BY
          End_Date ASC
      ) Row_Num
    FROM
      Projects
    WHERE
      (
        End_Date NOT IN (
          SELECT
            Start_Date
          FROM
            Projects
        )
      )
  ) TEnds ON TStarts.Row_Num = TEnds.Row_Num
ORDER BY
  DATEDIFF(TEnds.End_Date, TStarts.Start_Date) ASC,
  TStarts.Start_Date ASC;