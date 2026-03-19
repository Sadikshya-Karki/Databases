-- Question: Retrieve the names and trip IDs of passengers who purchased tickets in January 2025, along with their payment status.

SQL> SELECT t.Ticket_ID, p.Full_Name, b.Trip_ID, NVL(pay.Payment_Status, 'Unpaid') AS Payment_Status
  2  FROM Ticket t
  3  JOIN Booking b ON t.Booking_ID = b.Booking_ID
  4  JOIN Passenger p ON b.Passenger_ID = p.Passenger_ID
  5  LEFT JOIN Payment pay ON t.Ticket_ID = pay.Ticket_ID
  6  WHERE t.Issue_Date BETWEEN DATE '2025-01-01' AND DATE '2025-01-31'
  7  ORDER BY t.Ticket_ID;