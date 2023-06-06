SELECT
  ha.hacker_id,
  ha.name,
  COUNT(ha.hacker_id) total
FROM
  Hackers ha
INNER JOIN Challenges ch ON ha.hacker_id = ch.hacker_id
GROUP BY
  ha.hacker_id,
  ha.name
HAVING
  total IN (
    SELECT
      sub2.total_ch
    FROM
      (
        SELECT
          total_ch,
          count(total_ch) count_ag
        FROM
          (
            SELECT
              hacker_id,
              COUNT(challenge_id) total_ch
            FROM
              Challenges
            GROUP BY
              hacker_id
          ) sub
        GROUP BY
          total_ch
        HAVING
          count_ag = 1
          OR total_ch = (
            SELECT
              MAX(sub.total_ch)
            FROM
              (
                SELECT
                  hacker_id,
                  count(challenge_id) total_ch
                FROM
                  Challenges
                GROUP BY
                  hacker_id
              ) sub
          )
      ) sub2
  )
ORDER BY
  total DESC,
  ha.hacker_id ASC;