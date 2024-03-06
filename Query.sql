-- a)	List all the guests who checked in on a particular date, along with room type and additional charges if applicable
SELECT guest_fullname, room_type,reservation_start
FROM guest
INNER JOIN  reservation
ON  guest.guest_id = reservation.guest_id
INNER JOIN  room
ON  guest.room_id = room.room_id
WHERE  reservation_start = '2023-07-25';

-- b)	To list all the rooms that are currently available and rate of all the available rooms along with their type
SELECT  room_id,  room_type,  room_rates,  room_availability
FROM  room
WHERE  room_availability = TRUE;

-- c)	To list out he name and contact informations of the guests who has made reseravtions for the specific room type during a specific time period
SELECT  guest_fullname,  guest_mobile,  guest_email,  room_type,  reservation_start,  reservation_end
FROM  guest
INNER JOIN reservation
ON  guest.guest_id = reservation.guest_id
INNER JOIN  room
ON  guest.room_id = room.room_id
WHERE  room_type = 'Deluxe'
AND  reservation_start BETWEEN '2022-10-20' AND '2023-07-25';

-- d)	Most popular food items and drinks ordered by guests dirong a speacific week
SELECT sustenance_name, sustenance_quantity, sustenance_total
FROM  restaurant
WHERE sustenance_quantity =5;


-- e)	Identify the gues who have makde the most reservation at the resort, along with their contact information and total amount spent on reservations
SELECT  guest_fullname,  guest_mobile,  guest_email
FROM  guest
INNER JOIN  reservation
ON  guest.guest_id = reservation.guest_id
ORDER BY  room_id	
LIMIT  10;

-- f)	To list out the ferails of the guests along with the room types they have booked based on which staff created the reservations
SELECT  guest_fullname,  staff_fullname
FROM  guest
INNER JOIN  reservation
ON  guest.guest_id = reservation.guest_id
INNER JOIN room
ON  guest.room_id = room.room_id
INNER JOIN  staff
ON  reservation.staff_id = staff.staff_id
ORDER BY staff_fullname;
