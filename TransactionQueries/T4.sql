-- Question: Show each route along with the total number of trips conducted and the total revenue generated.

SQL> SELECT r.Route_ID, r.Route_Name, COUNT(DISTINCT t.Trip_ID) AS Total_Trips, SUM(pay.Amount) AS Total_Revenue
  2  FROM Route r
  3  JOIN Trip t ON r.Route_ID = t.Route_ID
  4  JOIN Booking b ON t.Trip_ID = b.Trip_ID
  5  JOIN Ticket tk ON b.Booking_ID = tk.Booking_ID
  6  JOIN Payment pay ON tk.Ticket_ID = pay.Ticket_ID
  7  WHERE pay.Payment_Status = 'Paid'
  8  GROUP BY r.Route_ID, r.Route_Name
  9  ORDER BY Total_Revenue DESC;