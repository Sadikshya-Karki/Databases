-- Question: List all passengers whose names begin with 'A' and show the total number of trips booked by each passenger.

SQL> SELECT p.Full_Name, COUNT(b.Booking_ID) AS Total_Trips
  2  FROM Passenger p
  3  JOIN Booking b ON p.Passenger_ID = b.Passenger_ID
  4  WHERE p.Full_Name LIKE 'A%'
  5  GROUP BY p.Passenger_ID, p.Full_Name
  6  ORDER BY p.Full_Name;