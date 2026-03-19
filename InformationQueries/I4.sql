-- Question: Identify passengers who have booked more than two trips in December 2025.

SQL> SELECT p.Passenger_ID, p.Full_Name, COUNT(b.Booking_ID) AS Total_Bookings
  2  FROM Passenger p
  3  JOIN Booking b ON p.Passenger_ID = b.Passenger_ID
  4  WHERE b.Booking_Date BETWEEN DATE '2025-12-01' AND DATE '2025-12-31'
  5  GROUP BY p.Passenger_ID, p.Full_Name
  6  HAVING COUNT(b.Booking_ID) > 2
  7  ORDER BY Total_Bookings DESC;