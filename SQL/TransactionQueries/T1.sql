-- Question: Identify the trip with the latest departure time.

SQL> SELECT * FROM (
  2  SELECT * FROM Trip
  3  ORDER BY Departure_Time DESC
  4  )
  5  WHERE ROWNUM = 1;