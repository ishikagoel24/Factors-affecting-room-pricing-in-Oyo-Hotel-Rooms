SELECT * FROM oyo.oyo_hotel_rooms;
SELECT AVG(Price) AS Average_Price
FROM oyo.oyo_hotel_rooms;
#q2
SELECT Location, AVG(Price) AS Average_Price
FROM oyo.oyo_hotel_rooms
GROUP BY Location
ORDER BY Average_Price DESC;
#Q3
SELECT Location, MAX(Price) AS Highest_Price
FROM oyo.oyo_hotel_rooms
GROUP BY Location
ORDER BY Highest_Price DESC
LIMIT 1;
#Lowest Room Price
SELECT Location, MIN(Price) AS Lowest_Price
FROM oyo.oyo_hotel_rooms
GROUP BY Location
ORDER BY Lowest_Price ASC
LIMIT 1;
#Q4

SELECT Rating, AVG(Price) AS Average_Price
FROM oyo.oyo_hotel_rooms
GROUP BY Rating
ORDER BY Rating DESC;

#Q5

SELECT Hotel_name, Location, MyUnknownColumn AS Available_Rooms
FROM oyo.oyo_hotel_rooms
WHERE Rating = (SELECT MAX(Rating) FROM oyo.oyo_hotel_rooms)
ORDER BY MyUnknownColumn DESC;

#Q6
SELECT Location, SUM(MyUnknownColumn) AS Total_Available_Rooms
FROM oyo.oyo_hotel_rooms
GROUP BY Location
ORDER BY Total_Available_Rooms DESC;

#Q7 PARTA 
SELECT Hotel_name, MAX(Price) AS Highest_Price
FROM oyo.oyo_hotel_rooms
GROUP BY Hotel_name
ORDER BY Highest_Price DESC
LIMIT 1;
#PARTB 
SELECT Hotel_name, MIN(Price) AS Lowest_Price
FROM oyo.oyo_hotel_rooms
GROUP BY Hotel_name
ORDER BY Lowest_Price ASC
LIMIT 1;









