SELECT Submissions.hacker_id, Hackers.name FROM Submissions
INNER JOIN Hackers ON Submissions.hacker_id = Hackers.hacker_id
INNER JOIN Challenges ON Submissions.challenge_id = Challenges.challenge_id
INNER JOIN Difficulty ON Difficulty.difficulty_level = Challenges.difficulty_level
WHERE Submissions.score = Difficulty.score
GROUP BY Submissions.hacker_id, Hackers.name
HAVING count(Submissions.hacker_id) > 1
ORDER BY count(Submissions.hacker_id) DESC, Submissions.hacker_id ASC;
