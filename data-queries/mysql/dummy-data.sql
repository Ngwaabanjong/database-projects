-- Create the Employees table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_title VARCHAR(50),
    salary DECIMAL(10, 2),
    department VARCHAR(50)
);

-- Insert dummy data for 200 employees
INSERT INTO Employees (first_name, last_name, email, phone_number, hire_date, job_title, salary, department)
VALUES
('John', 'Doe', 'john.doe@example.com', '555-1234', '2020-01-01', 'Software Engineer', 80000.00, 'IT'),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '2020-02-15', 'Marketing Specialist', 70000.00, 'Marketing'),
('Chris', 'Johnson', 'chris.johnson@example.com', '555-9876', '2020-03-20', 'Sales Representative', 75000.00, 'Sales'),
('Emily', 'Williams', 'emily.williams@example.com', '555-4321', '2020-04-10', 'HR Manager', 90000.00, 'Human Resources'),
('Michael', 'Brown', 'michael.brown@example.com', '555-8765', '2020-05-05', 'Finance Analyst', 85000.00, 'Finance'),
('Amanda', 'Miller', 'amanda.miller@example.com', '555-7890', 'Customer Support Specialist', 60000.00, 'Customer Support'),
-- Add more employees here...

-- Repeat the above INSERT statement to add more dummy data for a total of 200 employees
-- Make sure to change the values to create diverse data

('Daniel', 'Taylor', 'daniel.taylor@example.com', '555-2345', '2020-06-15', 'Product Manager', 95000.00, 'Product Management'),
('Sophia', 'Anderson', 'sophia.anderson@example.com', '555-6543', '2020-07-01', 'IT Specialist', 85000.00, 'IT'),
('Matthew', 'Clark', 'matthew.clark@example.com', '555-8765', 'Marketing Coordinator', 65000.00, 'Marketing'),
('Olivia', 'White', 'olivia.white@example.com', '555-7890', 'Sales Manager', 90000.00, 'Sales'),
('Liam', 'Johnson', 'liam.johnson@example.com', '555-3456', 'Customer Service Representative', 62000.00, 'Customer Support'),
('Emma', 'Thomas', 'emma.thomas@example.com', '555-6789', 'Financial Analyst', 80000.00, 'Finance'),
-- Add more employees here...

-- Repeat the above INSERT statement to add more dummy data for a total of 200 employees
-- Make sure to change the values to create diverse data
;

-- You can continue adding more INSERT statements to reach a total of 200 employees
