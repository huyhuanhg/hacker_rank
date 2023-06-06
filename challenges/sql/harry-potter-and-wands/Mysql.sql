SELECT Wands.id, r.age, r.coins_needed, Wands.power
FROM Wands
INNER JOIN (
  SELECT
    Wands_Property.age,
    Wands_Property.code,
    MIN(Wands.coins_needed) coins_needed,
    Wands.power
  FROM Wands_Property
  RIGHT JOIN Wands
  ON Wands.code = Wands_Property.code AND Wands_Property.is_evil = 0
  GROUP BY Wands_Property.age, Wands.power, Wands.code
) r ON Wands.power = r.power AND Wands.code = r.code AND Wands.coins_needed = r.coins_needed
ORDER BY Wands.power DESC, r.age DESC;



SELECT id, age, coins_needed, power
from (
	SELECT
		id,
    age,
    coins_needed,
    power,
    FIRST_VALUE(coins_needed) OVER (PARTITION BY power, age ORDER BY coins_needed ASC) first_coins_needed
	FROM Wands w
	JOIN Wands_Property wp on w.code = wp.code AND wp.is_evil = 0
) d
WHERE d.first_coins_needed = d.coins_needed
ORDER BY power DESC, age DESC;