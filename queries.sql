-- write your queries here

SELECT * FROM owners FULL JOIN vehicles on owners.id = owner_id;

SELECT first_name, last_name, count(*) FROM owners JOIN vehicles ON owners.id = vehicles.owner_id group by (first_name, last_name)
ORDER BY count DESC;

SELECT first_name, last_name, ROUND(AVG(price)) as average_price , count(*) 
FROM 
owners JOIN vehicles 
ON 
owners.id = vehicles.owner_id 
GROUP BY (first_name, last_name)
HAVING (count(*) > 1) AND (ROUND(AVG(price)) > 10000)
ORDER BY first_name DESC;




