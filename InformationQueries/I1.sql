-- Question: Retrieve all available routes along with the total number of trips scheduled for each route, including routes with no scheduled trips.

SQL> SELECT r.Route_ID, r.Route_Name, COUNT(t.Trip_ID) AS Total_Trips
  2  FROM Route r
  3  LEFT JOIN Trip t ON r.Route_ID = t.Route_ID
  4  GROUP BY r.Route_ID, r.Route_Name
  5  ORDER BY r.Route_ID;