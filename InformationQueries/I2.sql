-- Question: Display all trips that originate from Pokhara, including their departure time and associated route name.

SQL> SELECT t.Trip_ID, t.Departure_Time, r.Route_Name
  2  FROM Trip t
  3  JOIN Route r ON t.Route_ID = r.Route_ID
  4  WHERE r.Start_Location = 'Pokhara'
  5  ORDER BY t.Departure_Time;