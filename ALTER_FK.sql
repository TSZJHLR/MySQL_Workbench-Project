USE HRMS;
ALTER TABLE Restaurant
ADD CONSTRAINT Restaurant_to_Guest 
FOREIGN KEY(guest_id) REFERENCES Guest(guest_id) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE Reservation
ADD CONSTRAINT Reservation_to_Guest
FOREIGN KEY(guest_id) REFERENCES Guest(guest_id) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE Room 
ADD CONSTRAINT Room_to_Reservation 
FOREIGN KEY(reservation_id) REFERENCES Reservation(reservation_id) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE Payment 
ADD CONSTRAINT Payment_to_Guest 
FOREIGN KEY(guest_id) REFERENCES Guest(guest_id) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE Cancellation 
ADD CONSTRAINT Cancellation_to_Reservation 
FOREIGN KEY(reservation_id) REFERENCES Reservation(reservation_id) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE Cancellation 
ADD CONSTRAINT Cancellation_to_Guest 
FOREIGN KEY(guest_id) REFERENCES Guest(guest_id)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE Guest
ADD CONSTRAINT Guest_to_Room
FOREIGN KEY(room_id) REFERENCES Room(room_id) 
ON DELETE RESTRICT ON UPDATE RESTRICT;