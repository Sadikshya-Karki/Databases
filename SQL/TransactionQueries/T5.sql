-- Question: Identify trips where less than 50% of the available bus seats have been booked.

SQL> SELECT t.Trip_ID, COUNT(b.Booking_ID) AS Total_Bookings, bus.Total_Capacity
  2  FROM Trip t
  3  JOIN Bus bus ON t.Bus_ID = bus.Bus_ID
  4  LEFT JOIN Booking b ON t.Trip_ID = b.Trip_ID
  5  GROUP BY t.Trip_ID, bus.Total_Capacity
  6  HAVING COUNT(b.Booking_ID) < (0.5 * bus.Total_Capacity)
  7  ORDER BY Total_Bookings ASC;