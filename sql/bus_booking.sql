CREATE DATABASE bus_booking;
USE bus_booking;
CREATE TABLE route (
  route_id INT PRIMARY KEY,
  source VARCHAR(50),
  destination VARCHAR(50),
  fare INT
);
CREATE TABLE seat (
  seat_id INT PRIMARY KEY,
  route_id INT,
  seat_no INT,
  status VARCHAR(15),
  FOREIGN KEY (route_id) REFERENCES route(route_id)
);
CREATE TABLE booking (
  booking_id INT PRIMARY KEY,
  passenger_name VARCHAR(50),
  route_id INT,
  seat_no INT,
  booking_date DATE,
  status VARCHAR(20),
  FOREIGN KEY (route_id) REFERENCES route(route_id)
);	
SHOW TABLES;

