-- 1) INSERT USERS FIRST (IDs must match patient IDs because of @MapsId)

INSERT INTO app_user (id, username, password)
VALUES
    (1, 'aarav.user', 'pass'),
    (2, 'diya.user', 'pass'),
    (3, 'dishant.user', 'pass'),
    (4, 'neha.user', 'pass'),
    (5, 'kabir.user', 'pass');

-- 2) INSERT PATIENTS – IDs MUST MATCH USER IDs

INSERT INTO patient (id, name, gender, birth_date, email, blood_group, user_id)
VALUES
    (1, 'Aarav Sharma', 'MALE', '1990-05-10', 'aarav.sharma@example.com', 'O_POSITIVE', 1),
    (2, 'Diya Patel', 'FEMALE', '1995-08-20', 'diya.patel@example.com', 'A_POSITIVE', 2),
    (3, 'Dishant Verma', 'MALE', '1988-03-15', 'dishant.verma@example.com', 'A_POSITIVE', 3),
    (4, 'Neha Iyer', 'FEMALE', '1992-12-01', 'neha.iyer@example.com', 'AB_POSITIVE', 4),
    (5, 'Kabir Singh', 'MALE', '1993-07-11', 'kabir.singh@example.com', 'O_POSITIVE', 5);

-- 3) INSERT DOCTORS

INSERT INTO doctor (name, specialization, email)
VALUES
    ('Dr. Rakesh Mehta', 'Cardiology', 'rakesh.mehta@example.com'),
    ('Dr. Sneha Kapoor', 'Dermatology', 'sneha.kapoor@example.com'),
    ('Dr. Arjun Nair', 'Orthopedics', 'arjun.nair@example.com');

-- 4) INSERT APPOINTMENTS

INSERT INTO appointment (appointment_time, reason, doctor_id, patient_id)
VALUES
  ('2025-07-01 10:30:00', 'General Checkup', 1, 2),
  ('2025-07-02 11:00:00', 'Skin Rash', 2, 2),
  ('2025-07-03 09:45:00', 'Knee Pain', 3, 3),
  ('2025-07-04 14:00:00', 'Follow-up Visit', 1, 1),
  ('2025-07-05 16:15:00', 'Consultation', 1, 4),
  ('2025-07-06 08:30:00', 'Allergy Treatment', 2, 5);
