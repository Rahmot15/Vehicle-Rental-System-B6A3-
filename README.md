# Vehicle Rental System Database Assignment

This project is part of the B6A3 database assignment.
The purpose of this assignment is to design a simple database structure
and write SQL queries to solve real-world problems related to a
Vehicle Rental System.

---

## Project Explanation

The Vehicle Rental System manages information about users, vehicles,
and rental bookings. Users can book vehicles for a specific time period,
and each booking connects a user with a vehicle.

The database is designed using three core entities:

- Users
- Vehicles
- Bookings

The relationships between these entities are implemented using primary
keys and foreign keys to maintain data integrity.

---

## Database Design Overview

- A user can make multiple bookings.
- A vehicle can be booked multiple times.
- The bookings table works as a bridge between users and vehicles.

The Entity Relationship Diagram (ERD) visually represents these
relationships and is included in the repository.

---

## SQL Queries Explanation

All required SQL queries are written in the `queries.sql` file.
These queries demonstrate the following concepts:

- Retrieving booking information using JOIN
- Finding vehicles that have never been booked using NOT EXISTS
- Filtering available vehicles using WHERE
- Counting total bookings using GROUP BY
- Applying conditions on grouped data using HAVING

Each query directly solves a specific problem mentioned in the assignment
requirements.

---

## Files Included

- `README.md` – Project explanation and documentation
- `queries.sql` – Contains all required SQL queries with solutions
- ERD diagram (image or DrawSQL link)

---

## Notes

- No database deployment is required.
- No data insertion is required.
- The assignment focuses only on database design concepts
  and SQL query logic.
