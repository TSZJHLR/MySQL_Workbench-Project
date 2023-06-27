CREATE DATABASE Hotel_Reservation;
USE Hotel_Reservation;
CREATE TABLE guests (
  guest_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone_number VARCHAR(255) NOT NULL,
  emergency_contact_name VARCHAR(255) NOT NULL,
  emergency_contact_phone_number VARCHAR(255) NOT NULL,
  date_of_birth DATE NOT NULL,
  allergies VARCHAR(255) NOT NULL,
  preferences VARCHAR(255) NOT NULL,
  PRIMARY KEY (guest_id)
);

CREATE TABLE reservations (
  reservation_id INT NOT NULL AUTO_INCREMENT,
  guest_id INT NOT NULL,
  reservation_date DATE NOT NULL,
  reservation_start_date DATE NOT NULL,
  reservation_end_date DATE NOT NULL,
  room_type VARCHAR(255) NOT NULL,
  number_of_rooms INT NOT NULL,
  special_requests VARCHAR(255) NOT NULL,
  PRIMARY KEY (reservation_id),
  FOREIGN KEY (guest_id) REFERENCES guests (guest_id)
);

CREATE TABLE staff (
  staff_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  job_title VARCHAR(255) NOT NULL,
  contact_information VARCHAR(255) NOT NULL,
  permissions VARCHAR(255) NOT NULL,
  PRIMARY KEY (staff_id)
);

CREATE TABLE food_and_beverage_charges (
  reservation_id INT NOT NULL,
  item_name VARCHAR(255) NOT NULL,
  quantity INT NOT NULL,
  price INT NOT NULL,
  PRIMARY KEY (reservation_id, item_name),
  FOREIGN KEY (reservation_id) REFERENCES reservations (reservation_id)
);

CREATE TABLE billing_information (
  reservation_id INT NOT NULL,
  total_cost INT NOT NULL,
  food_and_beverage_charges INT NOT NULL,
  taxes INT NOT NULL,
  PRIMARY KEY (reservation_id),
  FOREIGN KEY (reservation_id) REFERENCES reservations (reservation_id)
);

CREATE TABLE cancellations (
  reservation_id INT NOT NULL,
  date_of_cancellation DATE NOT NULL,
  reason_for_cancellation VARCHAR(255) NOT NULL,
  PRIMARY KEY (reservation_id),
  FOREIGN KEY (reservation_id) REFERENCES reservations (reservation_id)
);

CREATE TABLE rooms (
  room_id INT NOT NULL AUTO_INCREMENT,
  room_type VARCHAR(255) NOT NULL,
  description TEXT,
  amenities VARCHAR(255),
  rate INT NOT NULL,
  availability BOOLEAN NOT NULL DEFAULT TRUE,
  PRIMARY KEY (room_id)
);

INSERT INTO rooms (room_type, description, amenities, rate, availability)
VALUES
('Standard', 'A standard room with a queen-size bed and a private bathroom.', 'Wifi, air conditioning, TV', 100, TRUE),
('Deluxe', 'A deluxe room with a king-size bed, a private bathroom, and a balcony.', 'Wifi, air conditioning, TV, minibar', 150, TRUE),
('Suite', 'A suite with a king-size bed, a private bathroom, a balcony, and a living room.', 'Wifi, air conditioning, TV, minibar, coffee maker', 200, TRUE);

CREATE TABLE guests (
  guest_id INT NOT NULL AUTO_INCREMENT,
  full_name VARCHAR(255) NOT NULL,
  address VARCHAR(255),
  phone_number VARCHAR(255),
  email VARCHAR(255),
  payment_information VARCHAR(255),
  PRIMARY KEY (guest_id)
);

INSERT INTO guests (full_name, address, phone_number, email, payment_information)
VALUES
('John Doe', '123 Main Street, Kathmandu, Nepal', '+977 9843 2134 567', 'john.doe@gmail.com', 'Visa 1234-5678-9012-3456'),
('Jane Doe', '456 Elm Street, Kathmandu, Nepal', '+977 9843 2134 568', 'jane.doe@gmail.com', 'Mastercard 5678-9012-3456-7890');

CREATE TABLE reservations (
  reservation_id INT NOT NULL AUTO_INCREMENT,
  guest_id INT NOT NULL,
  room_id INT NOT NULL,
  check_in_date DATE NOT NULL,
  check_out_date DATE NOT NULL,
  PRIMARY KEY (reservation_id),
  FOREIGN KEY (guest_id) REFERENCES guests (guest_id),
  FOREIGN KEY (room_id) REFERENCES rooms (room_id)
);

INSERT INTO reservations (guest_id, room_id, check_in_date, check_out_date)
VALUES
(1, 1, '2023-07-01', '2023-07-03'),
(2, 2, '2023-07-05', '2023-07-07');

CREATE TABLE restaurant (
  restaurant_id INT NOT NULL AUTO_INCREMENT,
  restaurant_name VARCHAR(255) NOT NULL,
  description TEXT,
  PRIMARY KEY (restaurant_id)
);

INSERT INTO restaurant (restaurant_name, description)
VALUES
('The Himalayan Kitchen', 'A fine dining restaurant serving traditional Nepali cuisine.'),
('The Everest Lounge', 'A casual restaurant with a bar serving international cuisine.');

CREATE TABLE food_items (
  food_item_id INT NOT NULL AUTO_INCREMENT,
  restaurant_id INT NOT NULL,
  food_item_name VARCHAR(255) NOT NULL,
  description TEXT,
  price INT NOT NULL,
  PRIMARY KEY (food_item_id),
  FOREIGN KEY (restaurant_id) REFERENCES restaurant (restaurant_id)
);

INSERT INTO food_items (restaurant_id, food_item_name, description, price)
VALUES
(1, 'Momo', 'A steamed dumpling filled with meat or vegetables.', 100),
(1, 'Dal Bhat', 'A lentil and rice dish that is a staple food in Nepal.', 200),
(2, 'Chicken Tikka Masala', 'A creamy curry dish made with chicken and tomato sauce.', 300),
(2, 'Fish and Chips', 'A classic British dish of fried fish and french fries.', 400);

CREATE TABLE inventory (
  inventory_id INT NOT NULL AUTO_INCREMENT,
  food_item_id INT NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY (inventory_id),
  FOREIGN KEY (food_item_id) REFERENCES food_items (food_item_id)
);

INSERT INTO inventory (food_item_id, quantity)
VALUES
(1, 100),
(2, 200),
(3, 300),
(4, 400);

CREATE TABLE swimming_pool_bar (
  swimming_pool_bar_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  PRIMARY KEY (swimming_pool_bar_id)
);

INSERT INTO swimming_pool_bar (name, description)
VALUES
('The Poolside Lounge', 'A casual bar located poolside that serves drinks and snacks.'),
('The Swim-Up Bar', 'A swim-up bar located in the swimming pool that serves drinks and snacks.');

CREATE TABLE swimming_pool_bar_items (
  swimming_pool_bar_item_id INT NOT NULL AUTO_INCREMENT,
  swimming_pool_bar_id INT NOT NULL,
  item_name VARCHAR(255) NOT NULL,
  description TEXT,
  price INT NOT NULL,
  PRIMARY KEY (swimming_pool_bar_item_id),
  FOREIGN KEY (swimming_pool_bar_id) REFERENCES swimming_pool_bar (swimming_pool_bar_id)
);

INSERT INTO swimming_pool_bar_items (swimming_pool_bar_id, item_name, description, price)
VALUES
(1, 'Poolside Mojito', 'A refreshing mojito served with fresh mint.', 150),
(1, 'Swimming Pool Sangria', 'A fruity sangria served with ice and fruit.', 200),
(2, 'Poolside Margarita', 'A classic margarita served with salt on the rim.', 250),
(2, 'Swimming Pool Daiquiri', 'A refreshing daiquiri served with lime and sugar.', 300);

CREATE TABLE room_services (
  room_service_id INT NOT NULL AUTO_INCREMENT,
  service_name VARCHAR(255) NOT NULL,
  description TEXT,
  price INT NOT NULL,
  PRIMARY KEY (room_service_id)
);

INSERT INTO room_services (service_name, description, price)
VALUES
('Room Cleaning', 'A daily room cleaning service.', 100),
('Turndown Service', 'A nightly turndown service that includes making the bed and leaving fresh towels.', 50),
('Laundry Service', 'A laundry service that includes washing, drying, and folding clothes.', 200),
('Dry Cleaning Service', 'A dry cleaning service that includes cleaning clothes that cannot be washed.', 300);

CREATE TABLE employees (
  employee_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  job_title VARCHAR(255) NOT NULL,
  department VARCHAR(255) NOT NULL,
  salary INT NOT NULL,
  PRIMARY KEY (employee_id)
);

INSERT INTO employees (first_name, last_name, job_title, department, salary)
VALUES
('John', 'Doe', 'Receptionist', 'Front Desk', 2000),
('Jane', 'Doe', 'Cook', 'Restaurant', 3000),
('Mary', 'Johnson', 'Chief', 'Kitchen', 4000),
('Peter', 'Smith', 'Manager', 'General', 5000),
('David', 'Williams', 'Guard', 'Security', 6000),
('Susan', 'Jones', 'Cleaner', 'Housekeeping', 7000),
('Michael', 'Brown', 'Gardener', 'Landscaping', 8000);


CREATE TABLE `booking`
(
    `id`     int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `cid`    int(11)             NOT NULL,
    `status` ENUM ('PENDING', 'CONFIRMED', 'CANCELLED') DEFAULT 'PENDING',
    `notes`  varchar(500)                               DEFAULT NULL
);

CREATE TABLE `customer`
(
    `cid`      int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `fullname` varchar(100)        NOT NULL,
    `email`    varchar(50)         NOT NULL,
    `password` varchar(150)        NOT NULL,
    `phone`    varchar(25) DEFAULT NULL
);

CREATE TABLE `pricing`
(
    `pricing_id`  int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `booking_id`  int(11) NOT NULL,
    `nights`      int(11) NOT NULL,
    `total_price` double  NOT NULL,
    `booked_date` DATE NOT NULL
);

CREATE TABLE administrator
(
    `adminId`  INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `fullname` VARCHAR(100) DEFAULT NULL,
    `password` VARCHAR(100)    NOT NULL,
    `email`    VARCHAR(30)     NOT NULL UNIQUE,
    `phone`    VARCHAR(25)  DEFAULT NULL
);

CREATE TABLE `reservation`
(
    `id`          int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `start`       varchar(30)         NOT NULL,
    `end`         varchar(30)         NOT NULL,
    `type`        ENUM ('Single', 'Double', 'Deluxe')              DEFAULT 'Single',
    `requirement` ENUM ('No Preference', 'Non Smoking', 'Smoking') DEFAULT 'No Preference',
    `adults`      int(2)              NOT NULL,
    `children`    int(2)                                           DEFAULT '0',
    `requests`    varchar(500)                                     DEFAULT NULL,
    `timestamp`   timestamp           NOT NULL                     DEFAULT CURRENT_TIMESTAMP,
    `hash`        varchar(100)                                     DEFAULT NULL
);
CREATE TABLE equipment (
  equipment_id INT NOT NULL AUTO_INCREMENT,
  equipment_name VARCHAR(255) NOT NULL,
  description TEXT,
  PRIMARY KEY (equipment_id)
);

INSERT INTO equipment (equipment_name, description)
VALUES
('Treadmill', 'A machine that allows you to walk or run in place.'),
('Stationary Bike', 'A machine that allows you to ride a bike in place.'),
('Elliptical Trainer', 'A machine that combines the movements of walking and biking.'),
('Free Weights', 'A variety of weights that you can use to exercise.'),
('Weight Machines', 'Machines that allow you to lift weights in a controlled manner.');

CREATE TABLE customers (
  customer_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone_number VARCHAR(255) NOT NULL,
  PRIMARY KEY (customer_id)
);

INSERT INTO customers (first_name, last_name, email, phone_number)
VALUES
('John', 'Doe', 'john.doe@gmail.com', '+977 9843 2134 567'),
('Jane', 'Doe', 'jane.doe@gmail.com', '+977 9843 2134 568');

CREATE TABLE memberships (
  membership_id INT NOT NULL AUTO_INCREMENT,
  customer_id INT NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  PRIMARY KEY (membership_id),
  FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

INSERT INTO memberships (customer_id, start_date, end_date)
VALUES
(1, '2023-07-01', '2023-07-31'),
(2, '2023-08-01', '2023-08-31');

CREATE TABLE reservations (
  reservation_id INT NOT NULL AUTO_INCREMENT,
  membership_id INT NOT NULL,
  equipment_id INT NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL,
  PRIMARY KEY (reservation_id),
  FOREIGN KEY (membership_id) REFERENCES memberships (membership_id),
  FOREIGN KEY (equipment_id) REFERENCES equipment (equipment_id)
);

INSERT INTO reservations (membership_id, equipment_id, start_time, end_time)
VALUES
(1, 1, '08:00:00', '09:00:00'),
(1, 2, '09:00:00', '10:00:00'),
(2, 3, '10:00:00', '11:00:00'),
(2, 4, '11:00:00', '12:00:00');

CREATE TABLE payment_information (
  payment_information_id INT NOT NULL AUTO_INCREMENT,
  guest_id INT NOT NULL,
  credit_card_number VARCHAR(255) NOT NULL,
  expiration_date DATE NOT NULL,
  PRIMARY KEY (payment_information_id),
  FOREIGN KEY (guest_id) REFERENCES guests (guest_id)
);

INSERT INTO payment_information (guest_id, credit_card_number, expiration_date)
VALUES
(1, '1234-5678-9012-3456', '2023-12-31'),
(2, '4567-8901-2345-6789', '2024-01-31');

CREATE TABLE cancellation_policy (
  cancellation_policy_id INT NOT NULL AUTO_INCREMENT,
  policy_name VARCHAR(255) NOT NULL,
  description TEXT,
  PRIMARY KEY (cancellation_policy_id)
);

INSERT INTO cancellation_policy (policy_name, description)
VALUES
('Standard Policy', 'Guests can cancel their reservations up to 7 days before the arrival date for a full refund.'),
('Flexible Policy', 'Guests can cancel their reservations up to 14 days before the arrival date for a full refund.');

CREATE TABLE guest_history (
  guest_history_id INT NOT NULL AUTO_INCREMENT,
  guest_id INT NOT NULL,
  reservation_id INT NOT NULL,
  PRIMARY KEY (guest_history_id),
  FOREIGN KEY (guest_id) REFERENCES guests (guest_id),
  FOREIGN KEY (reservation_id) REFERENCES reservations (reservation_id)
);

INSERT INTO guest_history (guest_id, reservation_id)
VALUES
(1, 1),
(2, 2),
(1, 3),
(2, 4);

CREATE TABLE staff_management (
  staff_management_id INT NOT NULL AUTO_INCREMENT,
  staff_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  job_title VARCHAR(255) NOT NULL,
  contact_information VARCHAR(255) NOT NULL,
  PRIMARY KEY (staff_management_id),
  FOREIGN KEY (staff_id) REFERENCES staff (staff_id)
);

INSERT INTO staff_management (staff_id, name, job_title, contact_information)
VALUES
(1, 'John Doe', 'Receptionist', 'john.doe@email.com'),
(2, 'Jane Doe', 'Manager', 'jane.doe@email.com');

-- Question 1:
SELECT guests.name, guests.room_type, guests.additional_charges
FROM guests
JOIN reservations ON guests.guest_id = reservations.guest_id
WHERE guests.check_in_date = '2023-06-25'
ORDER BY guests.name;

-- Question 2:
SELECT rooms.room_type, rooms.rate
FROM rooms
WHERE rooms.status = 'available'
ORDER BY rooms.rate DESC;

-- Question 3:
SELECT guests.name, guests.contact_information
FROM guests
JOIN reservations ON guests.guest_id = reservations.guest_id
WHERE reservations.room_type = 'Specific Room Type'
AND reservations.start_date <= '2023-06-30'
AND reservations.end_date >= '2023-06-01'
ORDER BY guests.name;

-- Question 4:
SELECT food_items.name, food_items.quantity, food_items.price
FROM food_items
JOIN orders ON food_items.food_item_id = orders.food_item_id
WHERE orders.date >= '2023-06-20'
AND orders.date <= '2023-06-26'
GROUP BY food_items.name
ORDER BY COUNT(food_items.name) DESC;

-- Question 5:
SELECT guests.name, guests.contact_information, guests.total_spent
FROM guests
JOIN reservations ON guests.guest_id = reservations.guest_id
GROUP BY guests.guest_id
ORDER BY guests.total_spent DESC;

-- Question 6:
SELECT guests.name, guests.room_type, guests.staff_id
FROM guests
JOIN reservations ON guests.guest_id = reservations.guest_id
JOIN staff ON reservations.staff_id = staff.staff_id
ORDER BY staff.name;

# Constraints
--
ALTER TABLE `booking`
    ADD CONSTRAINT `booking_customer__fk` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE CASCADE;

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
    ADD CONSTRAINT `reservation_booking__fk` FOREIGN KEY (`id`) REFERENCES `booking` (`id`) ON DELETE CASCADE;


ALTER TABLE `pricing`
    ADD CONSTRAINT `pricing_booking__fk` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`) ON DELETE CASCADE;