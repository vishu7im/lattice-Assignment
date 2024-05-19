# Project README

## Overview

This project is a RESTful API designed to manage data related to patients and psychiatrists. The API is built using Express.js and MySQL.

## Tech Stack

### Backend

- **Express.js**: A minimal and flexible Node.js web application framework that provides a robust set of features to develop web and mobile applications. We chose Express for its simplicity, flexibility, and large ecosystem of middleware.
- **MySQL**: A reliable and widely-used relational database management system. MySQL was chosen for its performance, reliability, and ease of use.
- **Multer**: Middleware for handling file uploads.

## API Endpoints

### Patients

- **Endpoint**: `/api/v1/patients`
  - **Method**: Post
  - **Description**: A new patient registration.

### Psychiatrists

- **Endpoint**: `/api/v1/psychiatrists/:hospitalId`
  - **Method**: GET
  - **Description**: Retrieves a list of psychiatrists associated with a specific hospital, identified by the `hospitalId` parameter.

## API Documentation

You can explore and test the API endpoints using Postman. Here is the Postman link for detailed API documentation and testing:

[Postman Workspace](https://www.postman.com/joint-operations-physicist-95714252/workspace/lattice/request/19732799-ca9d86d1-b049-45c3-9e66-512a4c801019?tab=overview)

## Usage

1. Clone the repository.
2. Install dependencies using `npm install`.
3. Set up your MySQL database and configure the connection settings in the `.env` file.

```
   DB_HOST=""
   DB_USER=""
   DB_PASS=""
   DB_Database=""
```

4. Run the application using `npm start`.

---

Feel free to reach out if you have any questions or need further assistance.

## vishu.mi.0007@gmail.com
