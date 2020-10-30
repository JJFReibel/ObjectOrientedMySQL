/*
MIT License

Copyright (c) 2020 Jean-Jacques François Reibel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

/*
Implement Database as a module and table to be used as a class.
Implement stored procedures to be used as functions.
This syntax works for MySQL.
*/

/* Create database, table, settings, and instance of a car. */
CREATE DATABASE Vehicles;

CREATE TABLE Vehicles.Car(
carId int NOT NULL AUTO_INCREMENT,
carName varchar(255),
wheels varchar(255),
doors varchar(255),
cylinders varchar(255),
PRIMARY KEY (carId));

SET SQL_SAFE_UPDATES = 0;

INSERT INTO Vehicles.Car (carName, wheels, doors, cylinders)
VALUES ('subaru', 4, 4, 4);

/* Implement stored procedures. */
CREATE PROCEDURE setWheels(
  IN myCar VARCHAR(255),
  IN wheelsIn VARCHAR(255)
)
UPDATE Vehicles.Car SET wheels = wheelsIn WHERE carName = myCar;

CREATE PROCEDURE setDoors(
  IN myCar VARCHAR(255),
  IN doorsIn VARCHAR(255)
)
UPDATE Vehicles.Car SET doors = doorsIn WHERE carName = myCar;

CREATE PROCEDURE setCylinders(
  IN myCar VARCHAR(255),
  IN cylindersIn VARCHAR(255)
)
UPDATE Vehicles.Car SET cylinders = cylindersIn WHERE carName = myCar;

CREATE PROCEDURE addWheels(
  IN myCar VARCHAR(255),
  IN wheelsIn VARCHAR(255)
)
UPDATE Vehicles.Car SET wheels = wheels + wheelsIn WHERE carName = myCar;

CREATE PROCEDURE addDoors(
  IN myCar VARCHAR(255),
  IN doorsIn VARCHAR(255)
)
UPDATE Vehicles.Car SET doors = doors + doorsIn WHERE carName = myCar;

CREATE PROCEDURE addCylinders(
  IN myCar VARCHAR(255),
  IN cylindersIn VARCHAR(255)
)
UPDATE Vehicles.Car SET cylinders = cylinders + cylindersIn WHERE carName = myCar;

CREATE PROCEDURE deleteWheels(
  IN myCar VARCHAR(255),
  IN wheelsIn VARCHAR(255)
)
UPDATE Vehicles.Car SET wheels = wheels - wheelsIn WHERE carName = myCar;

CREATE PROCEDURE deleteDoors(
  IN myCar VARCHAR(255),
  IN doorsIn VARCHAR(255)
)
UPDATE Vehicles.Car SET doors = doors - doorsIn WHERE carName = myCar;

CREATE PROCEDURE deleteCylinders(
  IN myCar VARCHAR(255),
  IN cylindersIn VARCHAR(255)
)
UPDATE Vehicles.Car SET cylinders = cylinders - cylindersIn WHERE carName = myCar;

/* Call procedures. */
CALL setWheels('subaru', 5);
CALL addWheels('subaru', 1);
