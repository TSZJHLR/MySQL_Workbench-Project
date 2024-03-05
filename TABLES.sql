-- Create Database Statement for SAT Resort and Hotel Management System
CREATE DATABASE HRMS;
-- Use Statement for SAT Resort and Hotel Management System
USE HRMS;
-- Create Table Statement for HRMS "Room"
CREATE TABLE Room(
	room_id	SMALLINT NOT NULL,
	room_type	CHARACTER(20) NOT NULL,
	room_description	VARCHAR(255),
	room_rates	SMALLINT NOT NULL,
	room_availability	BOOLEAN NOT NULL,
	room_amenities	VARCHAR(255),
	reservation_id	SMALLINT NOT NULL,
    PRIMARY KEY (room_id)
);
-- Create Table Statement for HRMS "Guest"
CREATE TABLE Guest(
	guest_id	SMALLINT NOT NULL,
	guest_fullname	CHARACTER(50) NOT NULL,
	guest_mobile	BIGINT NOT NULL UNIQUE,
	guest_email	CHARACTER(50) NOT NULL UNIQUE,
	guest_city	CHARACTER(30) NOT NULL,
	guest_country	CHARACTER(20),
	guest_emergency	VARCHAR(40) NOT NULL,
	payment_id SMALLINT NOT NULL UNIQUE,
	room_id SMALLINT NOT NULL,
	PRIMARY KEY (guest_id)
);
-- Create Table Statement for HRMS "Restaurant"
CREATE TABLE Restaurant(
	sustenance_id SMALLINT NOT NULL,
    sustenance_name	CHARACTER(25) NOT NULL,
	sustenance_quantity	SMALLINT NOT NULL,
	sustenance_price	INT NOT NULL,
	sustenance_tax	SMALLINT NOT NULL,
	sustenance_total	INT NOT NULL,
	sustenance_discount	TINYINT,
	sustenance_description	VARCHAR(255),
	guest_id	SMALLINT NOT NULL,
    PRIMARY KEY (sustenance_id)
);
-- Create Table Statement for HRMS "Reservation"
CREATE TABLE Reservation(
	reservation_id	SMALLINT NOT NULL,
	check_in	TIME(6) ,
	check_out	TIME(6) ,
	status_id	SMALLINT NOT NULL,
	reservation_start	DATE,
	reservation_end	DATE,
	reservation_status	CHARACTER(20) NOT NULL,
	guest_id	SMALLINT NOT NULL,
	staff_id	SMALLINT NOT NULL,
    PRIMARY KEY (reservation_id)
);
-- Create Table Statement for HRMS "Inventory"
CREATE TABLE Inventory(
	inventory_id	CHARACTER(10) NOT NULL,
	facilities_equipment	CHARACTER(50) NOT NULL,
	service_id	SMALLINT NOT NULL,
	inventory_type CHARACTER(15) NOT NULL,
    PRIMARY KEY (inventory_id)
);
-- Create Table Statement for HRMS "Staff"
CREATE TABLE Staff(
	staff_id		TINYINT NOT NULL,
	staff_fullname	CHARACTER(50) NOT NULL,
	staff_job	CHARACTER(20) NOT NULL,
	quick_dial	TINYINT NOT NULL,
	staff_salary	INTEGER,
	room_id VARCHAR(40),
	reservation_id VARCHAR(40) ,
    PRIMARY KEY (staff_id)
);
-- Create Table Statement for HRMS "Facilities"
CREATE TABLE Facilities(
	service_id	TINYINT NOT NULL,
    services_offered	CHARACTER(20) NOT NULL,
	speed_dial	TINYINT NOT NULL,
	PRIMARY KEY (service_id)
);
-- Create Table Statement for HRMS "Payment"
CREATE TABLE Payment(
	payment_id INT NOT NULL AUTO_INCREMENT,
	payment_type	CHARACTER(15) NOT NULL,
	payment_amount	INTEGER NOT NULL,
	guest_id	SMALLINT NOT NULL, 
	reservation_id VARCHAR(60),
    PRIMARY KEY (payment_id)
);
-- Create Table Statement for HRMS "Cancellation"
CREATE TABLE Cancellation(
	cancellation_id	CHAR (2) NOT NULL,
	reservation_start DATE ,
	cancel_reason	VARCHAR(255),
	cancel_policy	VARCHAR(255),
	policy_description	VARCHAR(255),
	reservation_id	SMALLINT  ,
	guest_id	SMALLINT ,
	PRIMARY KEY (cancellation_id)
);
