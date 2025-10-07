# job-application-api

## Objective  
Build a RESTful API endpoint to handle job applications for software developer candidates.  

## Requirements  

### 1. API Endpoint Functionality  
- Create a **POST endpoint** to accept job application submissions with the following fields:  
  - Full Name (required)  
  - Email Address (required)  
  - Phone Number (required)  
  - Additional fields dynamically specified in the request payload (e.g., LinkedIn profile, portfolio links).  
- Accept file attachments (e.g., CV and cover letter in PDF format).  
- Validate input for:  
  - Required fields.  
  - Proper email and phone number formats.  
  - File type and size limits (only PDFs, max 5 MB per file).  

### 2. Database Storage  
- Save all received data and attachments in a relational database or suitable storage system.  
- Generate a **unique job application token** for each submission.  
- Store the generated token alongside the application data.  

### 3. Email Notifications  
- Send an email to a specified address with:  
  - Application details.  
  - Attached files.  
  - The **job application token** for tracking purposes.  

### 4. Response Handling  
- Return a confirmation message to the applicant upon successful submission, including the **job application token**.  
- Provide meaningful error messages for invalid inputs or missing data.  

### 5. Job Application Confirmation  
- Create a **GET endpoint** that accepts the **job application token** as a parameter.  
- Respond with the details of the submitted application (fields only, no attachments).  

### 6. Security  
- Encrypt sensitive data in the database.  
- Validate all inputs to prevent security vulnerabilities (e.g., SQL injection, XSS).  
- Ensure file uploads are securely handled and scanned for potential threats.  

---

## Deliverables  

1. A functional API with:  
   - **POST endpoint** for job application submissions.  
   - **GET endpoint** for confirming submitted applications via token.  
2. Database schema for storing application details and tokens.  
3. Email integration for sending application details and tokens.  
4. Unit and integration tests for all endpoints.  
5. Documentation, including API specs and setup instructions.  

---

## Technical Guidelines  

- Use a modern web framework (e.g., Node.js with Express, Python with Flask/Django, etc.).  
- Database options: PostgreSQL, MySQL, or MongoDB.  
- Email services: SendGrid, Mailgun, or SMTP.  
- Support JSON input and multi-part form data for file uploads.  
- Use HTTPS for API communication and follow secure coding practices.  

---

## Evaluation Criteria  

- Adherence to requirements.  
- Code quality, readability, and modularity.  
- Documentation and test coverage.  

---
