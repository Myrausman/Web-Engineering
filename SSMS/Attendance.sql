CREATE TABLE Course (
CourseID INT PRIMARY KEY,
CourseName VARCHAR(50),
CourseDescription VARCHAR(255)
);
CREATE TABLE Teacher (
TeacherID INT PRIMARY KEY,
TeacherName VARCHAR(50),
TeacherEmail VARCHAR(50),
TeacherContactNo VARCHAR(20)
);
CREATE TABLE TimeSlot (
TimeSlotID INT PRIMARY KEY,
StartTime TIME,
EndTime TIME,
Days VARCHAR(20)
);
CREATE TABLE Class (
ClassID INT PRIMARY KEY,
CourseID INT FOREIGN KEY REFERENCES Course(CourseID),
TeacherID INT FOREIGN KEY REFERENCES Teacher(TeacherID),
TimeSlotID INT FOREIGN KEY REFERENCES TimeSlot(TimeSlotID)
);
CREATE TABLE Student (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(50),
StudentEmail VARCHAR(50),
StudentContactNo VARCHAR(20)
);
CREATE TABLE Enrollment (
EnrollmentID INT PRIMARY KEY,
ClassID INT FOREIGN KEY REFERENCES Class(ClassID),
StudentID INT FOREIGN KEY REFERENCES Student(StudentID),
FeePaid DECIMAL(10,2),
EnrolledDate DATE
);
CREATE TABLE Attendance (
AttendanceID INT PRIMARY KEY,
EnrollmentID INT FOREIGN KEY REFERENCES Enrollment(EnrollmentID),
AttendanceDate DATE,
IsPresent BIT
);