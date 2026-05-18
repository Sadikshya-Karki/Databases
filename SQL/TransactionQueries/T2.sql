-- Question: Retrieve the top three passengers who have booked the highest number of trips.

SQL> SELECT * FROM (
  2  SELECT p.Passenger_ID, p.Full_Name, COUNT(b.Booking_ID) AS Total_Trips
  3  FROM Passenger p
  4  JOIN Booking b ON p.Passenger_ID = b.Passenger_ID
  5  GROUP BY p.Passenger_ID, p.Full_Name
  6  ORDER BY COUNT(b.Booking_ID) DESC
  7  )
  8  WHERE ROWNUM <= 3;