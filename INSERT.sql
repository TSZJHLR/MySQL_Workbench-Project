-- Insert multiple rows in the Room table
INSERT INTO Room
(room_id, room_type, room_description, room_rates, room_availability, room_amenities, reservation_id)
VALUES
(100, 'Single', 'A small bedroom, one queen-size bed.', 100, TRUE, 'TV, Wi-Fi, coffee maker', 1),
(200, 'Twin', 'A small bedroom, two twin beds.', 100, TRUE, 'TV, Wi-Fi, coffee maker', 2),
(300, 'Double', 'A medium bedroom, two queen-size beds.', 150, TRUE, 'TV, Wi-Fi, coffee maker', 3),
(400, 'Family', 'A large bedroom, two bedrooms, and a sleeper sofa.', 200, TRUE, 'TV, Wi-Fi, coffee maker, microwave, refrigerator, dining table, childrens bed', 4),
(500, 'Suite', 'A large, two-bedroom room with a king-size bed a living area, and a kitchenette.', 300, TRUE, 'TV, Wi-Fi, coffee maker, microwave, refrigerator', 5),
(600, 'Deluxe', 'The one of luxurious room in the hotel.', 400, TRUE, 'TV, Wi-Fi, coffee maker, microwave, refrigerator, jacuzzi, sauna', 6),
(700, 'Presidential', 'The largest and most luxurious room in the hotel. Separate bedroom, living area, kitchenette, private balcony patio', 500, TRUE, 'TV, Wi-Fi, coffee maker, microwave, refrigerator, jacuzzi, sauna, fireplace, wet bar', 7),
(800, 'Accessible', 'A room that is designed for guests with disabilities.', 250, TRUE, 'TV, Wi-Fi, coffee maker, accessible shower, grab bars, wheelchair accessible', 8);

-- Insert multiple rows in the Guest table
INSERT INTO Guest 
(guest_id, guest_fullname, guest_mobile, guest_email, guest_city, guest_country, guest_emergency, payment_id, room_id)
VALUES
(2001, 'Sujal Ratna Tuladhar', '984078945', 'sujalrt@gmail.com', 'Amsterdam', 'Netherlands', '01010,10101', 1001, 700),
(2002, 'Bikrant Shilpakar', '984989335', 'bikrants@gmail.com', 'New York', 'United States', '02020,20202', 1002, 600),
(2003, 'Mamata Shrestha', '984169234', 'mamatas@gmail.com', 'Paris', 'France', '03030,30303', 1003, 400),
(2004, 'Sujen Dangol', '984243472', 'sujend@gmail.com', 'Rome', 'Italy', '04040,40404', 1004, 600),
(2005, 'Anjan Thapa', '984959934', 'anjant@gmail.com', 'London', 'England', '05050,50505', 1005, 500),
(2006, 'Prajwol Dahal Khatri', '984646128', 'prajwoliD@gmail.com', 'Berlin', 'Germany', '06060,60606', 1006, 400),
(2007, 'Bishal Regmi', '984949495', 'bishalr@gmail.com', 'Lisbon', 'Portugal', '07070,70707', 1007, 100),
(2008, 'Pragyan Tamakhu', '984090655', 'pragyant@gmail.com', 'Stockholm', 'Sweden', '08080,80808', 1008, 500),
(2009, 'Rijan Khayju', '984504094', 'rijank@gmail.com', 'Barcelona', 'Spain', '09090,90909', 1009, 500),
(2010, 'Sushan Aryal', '986652105', 'sushana@gmail.com', 'Tokyo', 'Japan', '10101,01010', 1010, 400),
(2011, 'Kabin Shrestha', '986650153', 'kabins@gmail.com', 'Buenos Aries', 'Argentina', '11111,11111', 1011, 400),
(2012, 'Shreemon Maharjan', '986094066', 'shreemonm@gmail.com', 'Sydney', 'Australia', '12121,21212', 1012, 400),
(2013, 'Srijan Rijal', '986099588', 'srijanr@gmail.com', 'Ottawa', 'Canada', '13131,31313', 1013, 300);

-- Insert multiple rows in the Restaurant table
INSERT INTO Restaurant 
(sustenance_id, sustenance_name, sustenance_quantity, sustenance_price, sustenance_tax, sustenance_total, sustenance_discount, sustenance_description, guest_id)
VALUES 
(1, 'Pizza', 1, 15, 2.25, 17.25, 0, 'Italian Dish, made with dough, tomato sauce, and cheese.', 2002),
(2, 'Hamburger', 2, 10, 1.50, 11.50, 0, ' German Dish; made with ground beef, bread, and cheese.', 2010),
(3, 'Tacos', 2, 10, 1.50, 11.50, 0, 'Mexican Dish; made with tortillas, meat, and toppings.', 2003),
(4, 'Sushi', 6, 15, 2.25, 17.25, 0, 'Japanese Dish; made with rice, fish, and vegetables.', 2011),
(5, 'Pad Thai', 1, 12, 1.80, 13.80, 0, 'Thai Dish; made with rice noodles, shrimp, and eggs.', 2009),
(6, 'Pho', 1, 15, 2.25, 17.25, 0, 'Vietnamese Dish; made with rice noodles, beef, and spices.', 2008),
(7, 'Curry', 1, 12, 1.80, 13.80, 0, 'Indian Dish; made with a variety of spices and vegetables.', 2007),
(8, 'Dim sum', 1, 15, 2.25, 17.25, 0, 'Cantonese dish made with small steamed dishes.', 2012),
(9, 'Hotpot', 1, 10, 1.50, 11.50, 0, 'Korean Dish; a dish with a lot of meat and vegetable', 2006),
(10, 'Steak', 1, 20, 3, 23, 0, 'A dish of grilled beef.', 2001),
(11, 'Ice cream', 2, 5, 0.75, 5.75, 0, 'A frozen dessert made from milk and cream.', 2006),
(12, 'Cake', 1, 8, 1.50, 9.50, 0, 'A sweet dessert made with flour, eggs, sugar, and butter.', 2001),
(13, 'Pie', 1, 4, 1.80, 5.80, 0, 'A dessert made with a pastry crust and a filling, such as fruit or custard.', 2013),
(14, 'Chocolate mousse', 1, 1.5, 2.25, 3.75, 0, 'A dessert made with chocolate, cream, and eggs.', 2001),
(15, 'Cheesecake', 1, 12, 1.80, 13.80, 0, 'A dessert made with cream cheese, eggs, and sugar.', 2004),
(16, 'Water', 5, 0.75, 0.20, 0.90, 0, 'fresh hygienic mineral water', 2001),
(17, 'Alcohol',1, 5, 0.5, 5.5, 0,'hard diluted with ice', 2005),
(18, 'Wine', 2, 3, 0.8, 3.8, 0,'white red', 2002),
(19, 'Beer', 3, 2, 1.50, 3.50, 0,'many beer.', 2004),
(20, 'Soft Drinks', 1, 1, 0.25, 1.25, 0, 'coke, fanta, sprite, cola, tonic water.', 2001);

-- Insert multiple rows in the Reservation table
INSERT INTO Reservation (reservation_id, check_in, check_out, status_id, reservation_start, reservation_end, reservation_status, guest_id, staff_id)
VALUES
(1,'11:32:41','06:09:23',1,'2022-08-01', '2022-08-05','Completed', 2007, 18),
(2, '08:56:23','12:25:30', 1,'2022-08-05', '2022-08-14','Completed', 2003, 10),
(3,'12:08:32','16:14:52',1,'2022-09-10', '2022-09-15','Completed', 2013, 10),
(4, 0,0,2, '2022-10-15', '2022-10-20','Cancelled', 2005, 2),
(5, 0,0,2,'2022-12-19','2022-12-26','Cancelled', 2006, 10),
(6, '06:34:52','23:19:34',1, '2023-01-01', '2023-01-05','Completed', 2001, 11),
(7, '19:56:48','05:36:25',1, '2023-01-15', '2023-01-20','Completed', 2004, 2),
(8, '16:59:34', '11:05:09', 1, '2023-02-16', '2023-02-24', 'Completed', 2010, 10),
(9, 0, 0, 2, '2023-07-20', '2023-07-29', 'Cancelled', 2011, 10),
(10, '09:12:45','13:05:32', 1, '2023-07-25', '2023-08-01', 'Completed', 2001, 1),
(11, '02:52:30','11:30:18', 1, '2023-08-01', '2023-08-09', 'Completed', 2008, 2),
(12, 0,0, 2, '2022-08-08', '2022-08-09', 'Cancelled', 2012, 18),
(13, 0,0,0, '2022-09-06', '2022-09-19', 'Cancelled', 2009, 10),
(14, 0,0, 0, '2023-09-20', '2023-10-04', 'Pending', 2001, 11),
(15, 0,0, 0, '2023-10-07', '2023-10-19', 'Pending', 2002, 2),
(16, 0,0, 0, '2023-10-21', '2023-11-04', 'Cancelled', 2001, 1);


-- Insert multiple rows in the Inventory table
INSERT INTO Inventory (inventory_id, facilities_equipment, service_id, inventory_type)
VALUES
(1, 'Towel', 1, 'Bath'),
(2, 'Shampoo', 1, 'Bath'),
(3, 'Conditioner', 1, 'Bath'),
(4, 'Toothbrush', 1, 'Bath'),
(5, 'Toothpaste', 1, 'Bath'),
(6, 'Bed', 2,'Sleep'),
(7, 'Sheets', 2, 'Sleep'),
(8, 'Pillow', 2, 'Sleep'),
(9, 'Blanket', 2, 'Sleep'),
(10, 'Coffee Maker', 3, 'Electronic'),
(11, 'TV', 3, 'Electronic'),
(12, 'Microwave', 3, 'Electronic'),
(13, 'Refrigerator', 3, 'Electronic'),
(14, 'Hair Dryer', 3, 'Electronic');

-- Insert multiple rows in the Staff table
INSERT INTO staff (staff_id, Staff_fullname, staff_job, quick_dial, staff_salary, room_id, reservation_id)
VALUES
(1, 'Jhonny Smith', 'Manager', 0, 40000, 700, '10, 16'),
(2, 'Jane Watson', 'Receptionist', 1, 30000, '600, 500', '4, 7, 11, 15'),
(3, 'Susan Smith', 'Housekeeping', 3, 20000, NULL, NULL),
(4, 'Daisy Jones', 'Chef', 2, 25000, 700, NULL),
(5, 'Mark Williams', 'Housekeeping', 3, 20000, NULL, NULL),
(6, 'Emily Brown', 'Maintenance', 3, 35000, NULL, NULL),
(7, 'Roy Green', 'Clerk', 1, 15000, 700, NULL),
(8, 'Peter White', 'Waiter', 2, 20000, NULL, NULL),
(9, 'Kevin Gomez', 'Waiter', 2, 20000, NULL, NULL),
(10, 'Harry Tucker', 'Receptionist', 1, 30000, '300, 400', '2, 3, 5, 8, 9, 13'),
(11, 'Erik Hernandez', 'Manager', 0, 40000, 700, '6, 14'),
(12, 'Sofia Garcia', 'Housekeeping', 3, 20000, NULL, NULL),
(13, 'Pedro Martinez', 'Waiter', 2, 20000, 700, NULL),
(14, 'Anna Rodriguez', 'Spa', 5, 20000, '700, 600, 500',NULL),
(15, 'Carlos Lopez', 'Gym', 6, 20000, NULL, NULL),
(16, 'Isabella Wilson', 'Childcare', 4, 20000, NULL, NULL),
(17, 'Diego Cruz', 'Clerk', 1, 15000, NULL, NULL),
(18, 'Valentine Perez', 'Receptionist', 1, 30000, '800, 100, 200', '1, 12'),
(19, 'Gabriela Sanchez', 'Housekeeping', 3, 20000, NULL, NULL),
(20, 'Juleus Alvarez', 'Guard', 9, 25000, NULL, NULL),
(21, 'Raphael John', 'Guard', 9, 25000, NULL, NULL),
(22, 'Kim Park', 'Guard', 9, 25000, 700, NULL);


-- Insert multiple rows in the Facilities table
INSERT INTO Facilities (service_id, services_offered, speed_dial)
VALUES
(1, 'Housekeeping', 3),
(2, 'Room Service', 3),
(3, 'Laundry Service', 3),
(4, 'Fitness Center', 6),
(5, 'Spa', 5),
(6, 'Parking', 1),
(7, ' Childcare ', 4),
(8, 'Pool', 9),
(9, 'Tour', 1);


-- Insert multiple rows in the Cancellation table
INSERT INTO Cancellation (cancellation_id, reservation_start, cancel_reason, cancel_policy, policy_description, guest_id, reservation_id)
VALUES
(1, '2022-08-08', 'No show', 'Non refundable', 'didn’t show up', 2012, 12),
(2, '2022-07-20', 'Change of plan', 'Full refund up to 7 days before check in', 'Change travel plans', 2011, 9),
(3, '2022-09-06', 'Medical emergency', 'Full refund up to 24 hours before check in', 'Medical accident', 2009, 13),
(4, '2022-12-19', 'Property damage', 'No refund', 'Damaged to hotel property', 2006, 5),
(5, NULL, 'Death', 'Full refund up to 48 hours before check in', 'Death in family or relatives', NULL, NULL),
(6, '2022-10-15', 'Work emergency', 'Full refund up to 3 hours before check in', 'Job related issue', 2005, 4),
(7, '2023-10-21', 'Weather related', 'Full refund up to 4 days before check in', 'Hotel was closed down', 2001, 16);
