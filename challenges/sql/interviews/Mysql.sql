SELECT
  Contests.contest_id,
  Contests.hacker_id,
  Contests.name,
  SUM(S.total_submissions) total_submissions,
  SUM(S.total_accepted_submissions) total_accepted_submissions,
  SUM(V.total_views) total_views,
  SUM(V.total_unique_views) total_unique_views
FROM
  Contests
  LEFT JOIN Colleges ON Colleges.contest_id = Contests.contest_id
  LEFT JOIN Challenges ON Challenges.college_id = Colleges.college_id
  LEFT JOIN (
    SELECT
      Submission_Stats.challenge_id challenge_id,
      SUM(Submission_Stats.total_submissions) total_submissions,
      SUM(Submission_Stats.total_accepted_submissions) total_accepted_submissions
    FROM
      Submission_Stats
    GROUP BY
      Submission_Stats.challenge_id
  ) S ON S.challenge_id = Challenges.challenge_id
  LEFT JOIN (
    SELECT
      View_Stats.challenge_id challenge_id,
      SUM(View_Stats.total_views) total_views,
      SUM(View_Stats.total_unique_views) total_unique_views
    FROM
      View_Stats
    GROUP BY
      View_Stats.challenge_id
  ) V ON V.challenge_id = Challenges.challenge_id
GROUP BY
  Contests.contest_id,
  Contests.hacker_id,
  Contests.name
HAVING
  total_submissions + total_accepted_submissions + total_views + total_unique_views > 0;
