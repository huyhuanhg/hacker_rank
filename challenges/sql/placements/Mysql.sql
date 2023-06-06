SELECT st.Name FROM Students st
LEFT JOIN Friends st_fr ON st.ID = st_fr.ID
LEFT JOIN Students fr ON fr.ID = st_fr.Friend_ID
INNER JOIN Packages pg_st ON pg_st.ID = st.ID
INNER JOIN Packages pg_fr ON pg_fr.ID = st_fr.Friend_ID
WHERE pg_fr.Salary > pg_st.Salary
ORDER BY pg_fr.Salary;
