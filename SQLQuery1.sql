/*CREATE DATABASE mentorness;*/


Use mentorness;
select * from [dbo].[Hotel Reservation Dataset];


SELECT COUNT(Booking_ID) AS Total_Reservations 
FROM [dbo].[Hotel Reservation Dataset];

SELECT TOP 1 type_of_meal_plan, COUNT(*) AS Count 
FROM [dbo].[Hotel Reservation Dataset] 
GROUP BY type_of_meal_plan 
ORDER BY Count DESC;

SELECT AVG(avg_price_per_room) AS Avg_Price 
FROM [dbo].[Hotel Reservation Dataset] 
WHERE no_of_children > 0;

SELECT COUNT(Booking_ID) AS Reservations_2017 
FROM [dbo].[Hotel Reservation Dataset] 
WHERE YEAR(arrival_date) = 2017;

SELECT TOP 1 room_type_reserved, COUNT(*) AS Count 
FROM [dbo].[Hotel Reservation Dataset] 
GROUP BY room_type_reserved 
ORDER BY Count DESC;

SELECT COUNT(*) AS Weekend_Reservations 
FROM [dbo].[Hotel Reservation Dataset] 
WHERE no_of_weekend_nights > 0;


SELECT MAX(lead_time) AS Highest_Lead_Time, MIN(lead_time) AS Lowest_Lead_Time 
FROM [dbo].[Hotel Reservation Dataset];


SELECT TOP 1 market_segment_type, COUNT(*) AS Count 
FROM [dbo].[Hotel Reservation Dataset] 
GROUP BY market_segment_type 
ORDER BY Count DESC;

SELECT COUNT(*) AS Confirmed_Reservations 
FROM [dbo].[Hotel Reservation Dataset] 
WHERE booking_status = 'Not_Canceled';


SELECT SUM(no_of_adults) AS Total_Adults, SUM(no_of_children) AS Total_Children 
FROM [dbo].[Hotel Reservation Dataset];

SELECT AVG(no_of_weekend_nights) AS Avg_Weekend_Nights_With_Children 
FROM [dbo].[Hotel Reservation Dataset] 
WHERE no_of_children > 0;

SELECT MONTH(arrival_date) AS Month, COUNT(*) AS Reservations 
FROM [dbo].[Hotel Reservation Dataset] 
GROUP BY MONTH(arrival_date);

SELECT room_type_reserved, AVG(no_of_weekend_nights + no_of_week_nights) AS Avg_Nights 
FROM [dbo].[Hotel Reservation Dataset] 
GROUP BY room_type_reserved;

SELECT TOP 1 room_type_reserved, AVG(avg_price_per_room) AS Avg_Price 
FROM [dbo].[Hotel Reservation Dataset] 
WHERE no_of_children > 0 
GROUP BY room_type_reserved 
ORDER BY COUNT(*) DESC;

SELECT TOP 1 market_segment_type, AVG(avg_price_per_room) AS Avg_Price 
FROM [dbo].[Hotel Reservation Dataset] 
GROUP BY market_segment_type 
ORDER BY Avg_Price DESC;






