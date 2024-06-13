CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    middle_initial CHAR(1),
    email VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE fees_payments (
    payment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    amount_paid NUMERIC(10, 2),
    payment_date DATE
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_code VARCHAR(10),
    course_name VARCHAR(100)
);

CREATE TABLE course_enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id),
    enrollment_date DATE
);

CREATE TABLE lecturers (
    lecturer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE ta (
    ta_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE lectures_to_course_assignment (
    assignment_id SERIAL PRIMARY KEY,
    lecturer_id INT REFERENCES lecturers(lecturer_id),
    course_id INT REFERENCES courses(course_id)
);

CREATE TABLE lectures_to_ta_assignment (
    assignment_id SERIAL PRIMARY KEY,
    lecturer_id INT REFERENCES lecturers(lecturer_id),
    ta_id INT REFERENCES ta(ta_id)
);


Insert Students
INSERT INTO students (first_name, last_name, middle_initial, email, phone) VALUES
('Edward', 'Opoku Agyemang', 'A', 'edward.opokuagyemang@ug.st.edu.gh', '+233200000001'),
('Fiavor', 'Isaac Sedem', 'I', 'fiavor.isaacsedem@ug.st.edu.gh', '+233200000002'),
('Pius', 'Oblie', NULL, 'pius.oblie@ug.st.edu.gh', '+233200000003'),
('Samia', 'Soleiman', NULL, 'samia.soleiman@ug.st.edu.gh', '+233200000004'),
('Abena', 'Nhyira Nsaako', 'N', 'abena.nhyiransaako@ug.st.edu.gh', '+233200000005'),
('Ishaan', 'Bhardwaj', NULL, 'ishaan.bhardwaj@ug.st.edu.gh', '+233200000006'),
('John', 'Edward Fodjour', 'E', 'john.edwardfodjour@ug.st.edu.gh', '+233200000007'),
('Hayet', 'Maame A. Dabanka', 'M', 'hayet.maamedabanka@ug.st.edu.gh', '+233200000008'),
('Mohammed', 'Salihu Hamisu', 'S', 'mohammed.salihuhamisu@ug.st.edu.gh', '+233200000009'),
('Asare', 'Marvin', NULL, 'asare.marvin@ug.st.edu.gh', '+233200000010'),
('Mohammed', 'Awal Yakunu Jnr', 'A', 'mohammed.awalyakunu@ug.st.edu.gh', '+233200000011'),
('Peggy', 'Esinam Somuah', 'E', 'peggy.esinamsomuah@ug.st.edu.gh', '+233200000012'),
('Desmond', 'Aflete Kamasah', 'A', 'desmond.afletekamasah@ug.st.edu.gh', '+233200000013'),
('Quansah', 'Jeffrey', NULL, 'quansah.jeffrey@ug.st.edu.gh', '+233200000014'),
('Yasmeen', 'Xoladem Doku', 'X', 'yasmeen.xolademdoku@ug.st.edu.gh', '+233200000015'),
('Muhammed', 'N. Haqq', 'N', 'muhammed.nhaqq@ug.st.edu.gh', '+233200000016'),
('Ayertey', 'Vanessa Esinam', 'V', 'ayertey.vanessaesinam@ug.st.edu.gh', '+233200000017'),
('Bernadine', 'Adusei Okrah', 'A', 'bernadine.aduseiokrah@ug.st.edu.gh', '+233200000018'),
('Ebenezer', 'Hayden Arthur', 'H', 'ebenezer.haydenarthur@ug.st.edu.gh', '+233200000019'),
('Kwarteng', 'Andrews Twum', 'A', 'kwarteng.andrewstwum@ug.st.edu.gh', '+233200000020'),
('Mohammed', 'Awal Tanko', 'A', 'mohammed.awaltanko@ug.st.edu.gh', '+233200000021'),



INSERT INTO fees_payments (student_id, amount_paid, payment_date) VALUES
(1, 300.00, '2024-01-10'),
(2, 450.00, '2024-01-15'),
(3, 250.00, '2024-02-10'),
(4, 500.00, '2024-02-20'),
(5, 350.00, '2024-03-01'),
(6, 600.00, '2024-03-10'),
(7, 300.00, '2024-03-15'),
(8, 400.00, '2024-03-20'),
(9, 500.00, '2024-04-01'),
(10, 600.00, '2024-04-10'),
(11, 700.00, '2024-04-15'),
(12, 200.00, '2024-05-01'),
(13, 450.00, '2024-05-10'),
(14, 300.00, '2024-05-15'),
(15, 600.00, '2024-05-20'),
(16, 300.00, '2024-06-01'),
(17, 400.00, '2024-06-10'),
(18, 500.00, '2024-06-15'),
(19, 600.00, '2024-06-20'),
(20, 700.00, '2024-07-01'),
(21, 200.00, '2024-07-10'),


INSERT INTO courses (course_code, course_name) VALUES
('CBAS210', 'ACADEMIC WRITING II'),
('CPEN202', 'COMPUTER SYSTEMS DESIGN'),
('CPEN204', 'DATA STRUCTURES AND ALGORITHMS'),
('CPEN206', 'LINEAR CIRCUITS'),
('CPEN208', 'SOFTWARE ENGINEERING'),
('CPEN212', 'DATA COMMUNICATION'),
('SENG202', 'DIFFERENTIAL EQUATIONS');



INSERT INTO course_enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2024-01-10'),
(1, 2, '2024-01-15'),
(1, 3, '2024-01-20'),
(2, 1, '2024-02-10'),
(2, 4, '2024-02-15'),
(2, 5, '2024-02-20'),
(3, 2, '2024-03-01'),
(3, 3, '2024-03-10'),
(3, 6, '2024-03-15'),
(4, 4, '2024-03-20'),
(4, 5, '2024-04-01'),
(4, 7, '2024-04-10'),
(5, 6, '2024-04-15'),
(5, 7, '2024-04-20'),
(5, 1, '2024-05-01'),
(6, 1, '2024-05-10'),
(6, 2, '2024-05-15'),
(6, 3, '2024-05-20'),
(7, 4, '2024-06-01'),
(7, 5, '2024-06-10'),
(7, 6, '2024-06-15'),


 Insert Lecturers
INSERT INTO lecturers (first_name, last_name, email) VALUES
('Percy', 'Okae', 'percy.okae@ug.staff.edu.gh'),
('Isaac', 'Adjaye', 'aboagye.isaac@ug.staff.edu.gh'),
('Margaret', 'Ansah', 'margaret.ansah@ug.staff.edu.gh'),
('Godfrey', 'Mills', 'godfrey.mills@ug.staff.edu.gh'),
('John', 'Asiamah', 'john.asiamah@ug.staff.edu.gh'),
('Isaac', 'Debrah', 'isaac.debrah@ug.staff.edu.gh'),
('John', 'Kutor', 'john.kutor@ug.staff.edu.gh');

 Insert Teaching Assistants (TAs)
INSERT INTO ta (first_name, last_name, email) VALUES
('Ava', 'Agyei', 'ava.agyei@gmail.com'),
('Bamzy', NULL, 'bamzy@gmail.com'),
('Foster', 'Anopansuo', 'foster.anopansuo@gmail.com'),
('Hakeem', 'Nasser', 'hakeem.nasser@gmail.com'),
('Said', NULL, 'said@gmail.com'),
('Thaddeus', NULL, 'thaddeus@gmail.com');

Insert Lectures to Course Assignment
INSERT INTO lectures_to_course_assignment (lecturer_id, course_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

INSERT INTO lectures_to_ta_assignment (lecturer_id, ta_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 1);

CREATE OR REPLACE FUNCTION calculate_outstanding_fees() RETURNS JSON AS $$
DECLARE
    result JSON;
BEGIN
    SELECT json_agg(row_to_json(t))
    INTO result
    FROM (
        SELECT s.student_id, s.first_name, s.last_name, COALESCE(SUM(fp.amount_paid), 0) AS total_paid, (1000 - COALESCE(SUM(fp.amount_paid), 0)) AS outstanding_fees
        FROM students s
        LEFT JOIN fees_payments fp ON s.student_id = fp.student_id
        GROUP BY s.student_id
    ) t;
    RETURN result;
END;
$$ LANGUAGE plpgsql;

-- Example Usage of the Function
SELECT calculate_outstanding_fees();









