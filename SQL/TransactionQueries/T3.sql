-- Question: Display the total amount paid by passengers whose total payment exceeds the average payment amount.

SQL> SELECT p.Passenger_ID, p.Full_Name, SUM(pay.Amount) AS Total_Paid
  2  FROM Passenger p
  3  JOIN Booking b ON p.Passenger_ID = b.Passenger_ID
  4  JOIN Ticket t ON b.Booking_ID = t.Booking_ID
  5  JOIN Payment pay ON t.Ticket_ID = pay.Ticket_ID
  6  WHERE pay.Payment_Status = 'Paid'
  7  GROUP BY p.Passenger_ID, p.Full_Name
  8  HAVING SUM(pay.Amount) > (SELECT AVG(Amount) FROM Payment WHERE Payment_Status = 'Paid')
  9  ORDER BY Total_Paid DESC;