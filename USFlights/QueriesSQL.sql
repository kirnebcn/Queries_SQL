/* Exercicis Queries SQL */

USE usairlineflights2;

/* Exercici 1 */
SELECT 'Resultat exercici 1' AS '';
SELECT sleep(1);

SELECT COUNT(flightID) AS total FROM flights;

SELECT sleep(5);

/* Exercici 2 */
SELECT 'Resultat exercici 2' AS '';
SELECT sleep(1);

SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides FROM flights
GROUP BY Origin;

SELECT sleep(5);

/* Exercici 3 */
SELECT 'Resultat exercici 3' AS '';
SELECT sleep(1);

SELECT Origin, colYear, colMonth, ArrDelay AS prom_arribades FROM flights
ORDER BY Origin, colYear, colMonth;

SELECT sleep(5);

/* Exercici 4 */
SELECT 'Resultat exercici 4' AS '';
SELECT sleep(1);

SELECT City, colYear, colMonth, ArrDelay AS prom_arribades FROM flights
INNER JOIN usairports
	ON Origin = IATA
ORDER BY Origin, colYear, colMonth;

SELECT sleep(5);

/* Exercici 5 */
SELECT 'Resultat exercici 5' AS '';
SELECT sleep(1);

SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) AS total_cancelled FROM flights
GROUP BY UniqueCarrier,colYear,colMonth
ORDER BY total_cancelled DESC;

SELECT sleep(5);

/* Exercici 6 */
SELECT 'Resultat exercici 6' AS '';
SELECT sleep(1);

SELECT TailNum, SUM(Distance) AS totalDistance FROM flights
GROUP BY TailNum
HAVING TailNum !=''
ORDER BY totalDistance DESC;

SELECT sleep(5);

/* Exercici 7 */
SELECT 'Resultat exercici 7' AS '';
SELECT sleep(1);

SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay FROM flights
GROUP BY UniqueCarrier
HAVING avgDelay > 10
ORDER BY avgDelay DESC;

SELECT sleep(5);
