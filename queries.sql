-- Retrieve all bookings with user and vehicle information
SELECT
    u.name AS user_name,
    v.name AS vehicle_name,
    b.start_date,
    b.end_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN vehicles v ON b.vehicle_id = v.id;


-- Find vehicles that have never been booked
SELECT *
FROM vehicles v
WHERE NOT EXISTS (
    SELECT 1
    FROM bookings b
    WHERE b.vehicle_id = v.id
);


-- Retrieve all available vehicles of a specific type (example: Car)
SELECT *
FROM vehicles
WHERE is_available = true
AND type = 'Car';


-- Count total bookings for each vehicle
SELECT
    v.name AS vehicle_name,
    COUNT(b.id) AS total_bookings
FROM vehicles v
JOIN bookings b ON v.id = b.vehicle_id
GROUP BY v.name;


-- Find vehicles that have been booked more than two times
SELECT
    v.name AS vehicle_name,
    COUNT(b.id) AS total_bookings
FROM vehicles v
JOIN bookings b ON v.id = b.vehicle_id
GROUP BY v.name
HAVING COUNT(b.id) > 2;
