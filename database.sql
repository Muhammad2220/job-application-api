-- Create database
CREATE DATABASE IF NOT EXISTS job_applications_api;
USE job_applications_api;

-- Applications table
CREATE TABLE IF NOT EXISTS applications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    application_token VARCHAR(255) UNIQUE NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    additional_fields TEXT,
    submission_time DATETIME NOT NULL
);

-- Attachments table
CREATE TABLE IF NOT EXISTS attachments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    application_id INT NOT NULL,
    filename VARCHAR(255) NOT NULL,
    data MEDIUMBLOB NOT NULL,
    FOREIGN KEY (application_id) REFERENCES applications(id) ON DELETE CASCADE
);
