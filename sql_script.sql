
-- DROP STATEMENTS

DROP TABLE Student_NAUH;
DROP TABLE Course_NAUH;
DROP TABLE Course_Student_NAUH;
DROP TABLE Instructor_NAUH;
DROP TABLE Question_NAUH;
DROP TABLE Evaluation_NAUH;

-- CREATE STATEMENTS

CREATE TABLE Student_NAUH (
  student_id NUMBER(9,0) NOT NULL,
  date_joined DATE,
  CONSTRAINT PK_Student_NAUH PRIMARY KEY (student_id)
);

CREATE TABLE Course_NAUH (
  course_id VARCHAR(7) NOT NULL,
  CONSTRAINT PK_Course_NAUH PRIMARY KEY (course_id)
);

CREATE TABLE Course_Student_NAUH (
  course_id VARCHAR(7) NOT NULL,
  student_id NUMBER(9,0) NOT NULL,
  term VARCHAR(10),
  class_location VARCHAR(30),
  CONSTRAINT PK_Course_Student_NAUH PRIMARY KEY (course_id, student_id),
  CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES Student_NAUH (student_id),
  CONSTRAINT fk_course_id FOREIGN KEY (course_id) REFERENCES Course_NAUH (course_id)
);

CREATE TABLE Instructor_NAUH (
  instructor_id NUMBER(5,0) NOT NULL,
  date_joined DATE,
  date_leaving DATE,
  CONSTRAINT PK_Instructor_NAUH PRIMARY KEY (instructor_id)
);

CREATE TABLE Course_Instructor_NAUH (
  course_id VARCHAR(7) NOT NULL,
  instructor_id NUMBER(5,0) NOT NULL,
  term VARCHAR(10),
  class_location VARCHAR(30),
  CONSTRAINT PK_Course_Instructor_NAUH PRIMARY KEY (course_id, instructor_id),
  CONSTRAINT fk_instructor_course_id FOREIGN KEY (instructor_id) REFERENCES Instructor_NAUH (instructor_id),
  CONSTRAINT fk_course_instructor_id FOREIGN KEY (course_id) REFERENCES Course_NAUH (course_id)
);


CREATE TABLE Question_NAUH (
  question_id NUMBER(2,0) NOT NULL,
  question_text VARCHAR (200),
  CONSTRAINT PK_Question_NAUH PRIMARY KEY (question_id)
);

CREATE TABLE Evaluation_NAUH (
  evaluation_id NUMBER(5,0) NOT NULL,
  course_id VARCHAR(7) NOT NULL,
  student_id NUMBER(9,0) NOT NULL,
  instructor_id NUMBER(5,0) NOT NULL,
  question_id NUMBER(1,0) NOT NULL,
  score INTEGER NOT NULL,
  CONSTRAINT PK_Evaluation_NAUH PRIMARY KEY (evaluation_id),
  CONSTRAINT fk_student_id_bridge FOREIGN KEY (student_id) REFERENCES Student_NAUH (student_id),
  CONSTRAINT fk_course_id_bridge FOREIGN KEY (course_id) REFERENCES Course_NAUH (course_id),
  CONSTRAINT fk_instructor_id_bridge FOREIGN KEY (instructor_id) REFERENCES Instructor_NAUH (instructor_id),
  CONSTRAINT fk_question_id_bridge FOREIGN KEY (question_id) REFERENCES Question_NAUH (question_id)
);


-- INSERT STATEMENTS

INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000001, '10-01-2002');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000002, '10-02-2002');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000003, '10-03-2002');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000004, '10-23-2002');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000005, '10-24-2002');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000006, '09-15-2002');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000007, '09-16-2002');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000008, '09-17-2002');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000009, '09-20-2002');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000010, '01-11-2003');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000011, '01-13-2003');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000012, '01-14-2003');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000013, '01-16-2003');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000014, '08-15-2003');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000015, '08-12-2003');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000016, '08-19-2003');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000017, '08-21-2003');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000018, '01-01-2004');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000019, '01-26-2004');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000020, '08-09-2004');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000021, '08-10-2004');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000022, '01-10-2005');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000023, '01-18-2005');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000024, '01-19-2006');
INSERT INTO Student_NAUH (student_id, date_joined) VALUES (100000025, '08-10-2006');


INSERT INTO Course_NAUH (course_id) VALUES ('MKTG728');
INSERT INTO Course_NAUH (course_id) VALUES ('SWEN610');
INSERT INTO Course_NAUH (course_id) VALUES ('MGIS725');
INSERT INTO Course_NAUH (course_id) VALUES ('BANA680');
INSERT INTO Course_NAUH (course_id) VALUES ('STAT745');
INSERT INTO Course_NAUH (course_id) VALUES ('ISTE782');
INSERT INTO Course_NAUH (course_id) VALUES ('ISEE750');
INSERT INTO Course_NAUH (course_id) VALUES ('DSCI633');
INSERT INTO Course_NAUH (course_id) VALUES ('MATH252');


INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('MKTG728', 100000005, 'Spring', 'SAU');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('MKTG728', 100000003, 'Spring', 'SAU');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('MKTG728', 100000004, 'Spring', 'SAU');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('MKTG728', 100000006, 'Spring', 'SAU');

INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('SWEN610', 100000002, 'Fall', 'GLS');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('SWEN610', 100000007, 'Fall', 'GLS');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('SWEN610', 100000017, 'Fall', 'GLS');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('SWEN610', 100000005, 'Spring', 'GLS');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('SWEN610', 100000016, 'Spring', 'GLS');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('SWEN610', 100000018, 'Spring', 'GLS');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('SWEN610', 100000019, 'Spring', 'GLS');

INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('MATH252', 100000011, 'Spring', 'LBR');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('MATH252', 100000012, 'Spring', 'LBR');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('MATH252', 100000013, 'Spring', 'LBR');

INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('DSCI633', 100000014, 'Fall', 'WLC');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('DSCI633',100000009, 'Fall', 'WLC');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('DSCI633', 100000006, 'Fall', 'WLC');

INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('MGIS725', 100000009, 'Fall', 'SAU');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('MGIS725', 100000010, 'Fall', 'SAU');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('MGIS725', 100000002, 'Fall', 'SAU');

INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('BANA680', 100000020, 'Fall', 'LBR');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('BANA680', 100000023, 'Fall', 'LBR');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('BANA680', 100000024, 'Spring', 'LBR');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('BANA680', 100000022, 'Spring', 'LBR');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('BANA680', 100000021, 'Spring', 'LBR');

INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('STAT745', 100000001, 'Spring', 'GNT');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('STAT745', 100000002, 'Spring', 'GNT');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('STAT745', 100000007, 'Spring', 'GNT');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('STAT745', 100000004, 'Spring', 'GNT');
INSERT INTO Course_Student_NAUH (course_id, student_id, term, class_location) VALUES ('STAT745', 100000011, 'Spring', 'GNT');

INSERT INTO Instructor_NAUH (instructor_id, date_joined, date_leaving) VALUES (10001, '09-08-2000', '12-31-2030');
INSERT INTO Instructor_NAUH (instructor_id, date_joined, date_leaving) VALUES (10002, '05-12-2000', '12-31-2030');
INSERT INTO Instructor_NAUH (instructor_id, date_joined, date_leaving) VALUES (10003, '04-08-2001', '12-31-2031');
INSERT INTO Instructor_NAUH (instructor_id, date_joined, date_leaving) VALUES (10004, '09-19-2001', '12-31-2031');
INSERT INTO Instructor_NAUH (instructor_id, date_joined, date_leaving) VALUES (10005, '09-21-2001', '12-31-2031');

-- Not able to insert these
INSERT INTO Instructor_NAUH (instructor_id, date_joined, date_leaving) VALUES (10001, '02-14-1999', '12-31-2029');
INSERT INTO Instructor_NAUH (instructor_id, date_joined, date_leaving) VALUES (10002, '11-30-2003', '12-31-2033');
INSERT INTO Instructor_NAUH (instructor_id, date_joined, date_leaving) VALUES (10003, '08-16-2002', '12-31-2032');
INSERT INTO Instructor_NAUH (instructor_id, date_joined, date_leaving) VALUES (10004, '03-23-2001', '12-31-2031');
INSERT INTO Instructor_NAUH (instructor_id, date_joined, date_leaving) VALUES (10005, '03-23-2001', '12-31-2031');


INSERT INTO Question_NAUH (question_id, question_text) VALUES (1, 'The instructor enhanced my interest in this subject.');
INSERT INTO Question_NAUH (question_id, question_text) VALUES (2, 'The instructor presented the course material in an organized manner.');
INSERT INTO Question_NAUH (question_id, question_text) VALUES (3, 'The instructor communicated the course material clearly.');
INSERT INTO Question_NAUH (question_id, question_text) VALUES (4, 'The instructor established a positive learning environment.');
INSERT INTO Question_NAUH (question_id, question_text) VALUES (5, 'Overall, this instructor was an effective teacher.');

--
-- INSERT INTO Evaluation_NAUH (evaluation_id, course_id, student_id, instructor_id, question_id, score) VALUES ();
-- INSERT INTO Evaluation_NAUH (evaluation_id, course_id, student_id, instructor_id, question_id, score) VALUES ();
-- INSERT INTO Evaluation_NAUH (evaluation_id, course_id, student_id, instructor_id, question_id, score) VALUES ();
-- INSERT INTO Evaluation_NAUH (evaluation_id, course_id, student_id, instructor_id, question_id, score) VALUES ();
-- INSERT INTO Evaluation_NAUH (evaluation_id, course_id, student_id, instructor_id, question_id, score) VALUES ();
-- INSERT INTO Evaluation_NAUH (evaluation_id, course_id, student_id, instructor_id, question_id, score) VALUES ();
-- INSERT INTO Evaluation_NAUH (evaluation_id, course_id, student_id, instructor_id, question_id, score) VALUES ();
-- INSERT INTO Evaluation_NAUH (evaluation_id, course_id, student_id, instructor_id, question_id, score) VALUES ();
-- INSERT INTO Evaluation_NAUH (evaluation_id, course_id, student_id, instructor_id, question_id, score) VALUES ();
-- INSERT INTO Evaluation_NAUH (evaluation_id, course_id, student_id, instructor_id, question_id, score) VALUES ();
-- INSERT INTO Evaluation_NAUH (evaluation_id, course_id, student_id, instructor_id, question_id, score) VALUES ();
--
