
-- Get all appointments for a doctor on a specific date
SELECT p.patient_name, a.appointment_date, a.appointment_time
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
WHERE a.doctor_id = 789
AND a.appointment_date = '2024-09-01';

-- Retrieve the total billing amount for a patient
SELECT SUM(b.amount) AS total_bill
FROM Billing b
JOIN Patients p ON b.patient_id = p.patient_id
WHERE p.patient_id = 123;
