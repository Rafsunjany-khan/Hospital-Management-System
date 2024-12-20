-- Create Doctors table
CREATE TABLE IF NOT EXISTS Doctors (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Specialization VARCHAR(255) NOT NULL,
    Phone VARCHAR(15) NOT NULL
);

-- Create Patients table
CREATE TABLE IF NOT EXISTS Patients (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    Gender VARCHAR(15) NOT NULL,
    Phone VARCHAR(15) NOT NULL
);

-- Create Departments table
CREATE TABLE IF NOT EXISTS Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(255) NOT NULL
);

-- Create Appointments table
CREATE TABLE IF NOT EXISTS Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
    Status VARCHAR(100) NOT NULL,
    DoctorID INT NOT NULL,
    PatientID INT NOT NULL,
    DepartmentID INT NOT NULL,
    FOREIGN KEY (DoctorID) REFERENCES Doctors (DoctorID),
    FOREIGN KEY (PatientID) REFERENCES Patients (PatientID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments (DepartmentID)
);



-- Insert data into Doctors table
INSERT INTO Doctors (Name, Specialization, Phone)
VALUES
    ('Dr. Baten Rahman', 'Cardiology', '01765656565'),
    ('Dr. Ashik Hossain', 'Neurology', '01767676767'),
    ('Dr. Al Hamid', 'Pediatrics', '01768686868'),
    ('Dr. Ikbal Hossen', 'Orthopedics', '01769696969'),
    ('Dr. Ruhi Kamal', 'Dermatology', '01770707070');

-- Insert data into Patients table
INSERT INTO Patients (Name, Age, Gender, Phone)
VALUES
    ('Md Jafor Khan', 45, 'Male', '01730303030'),
    ('Bisty Khatun', 30, 'Female', '01740404040'),
    ('Jamal Khan', 32, 'Male', '01750505050'),
    ('Kamal Hasan', 40, 'Male', '01760606060'),
    ('Sathi Akter', 35, 'Female', '01970707070');

-- Insert data into Departments table
INSERT INTO Departments (Name, Location)
VALUES
    ('Cardiology', 'Building A1'),
    ('Neurology', 'Building B1'),
    ('Pediatrics', 'Building A2'),
    ('Orthopedics', 'Building C'),
    ('Dermatology', 'Building A3');

-- Insert data into Appointments table
INSERT INTO Appointments (Date, Time, Status, DoctorID, PatientID, DepartmentID)
VALUES
    ('2024-12-19', '16:00:00', 'Completed', 1, 1, 1),
    ('2024-12-20', '18:00:00', 'Scheduled', 2, 2, 2),
    ('2024-12-21', '19:00:00', 'Cancelled', 3, 3, 3),
    ('2024-12-24', '19:30:00', 'Scheduled', 4, 4, 4),
    ('2024-12-25', '19:45:00', 'Scheduled', 5, 5, 5);
