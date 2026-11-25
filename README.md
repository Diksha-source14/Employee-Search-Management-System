# Employee Search & Management System

A web-based **Employee Search & Management System** developed using **Java, Spring Boot, Spring MVC, JSP, MySQL, Hibernate, and Spring Data JPA**.

## 📌 Project Overview

This application allows users to search and manage employee information through a simple and user-friendly web interface.

Employees can be searched using:

- Employee ID
- Employee Name
- Department

The system displays employee details such as ID, Name, Department, Salary, Gender, and Address.

## ✨ Features

- 🔎 Search employee by ID
- 👤 Search employee by Name
- 🏢 Search employees by Department
- 📋 Display employee records in a structured table
- 💾 MySQL database integration
- 🔗 Spring Data JPA for database operations
- 🎨 Professional and responsive user interface
- ⚡ Spring MVC based request handling

## 🛠️ Technologies Used

| Technology | Usage |
|---|---|
| Java | Backend development |
| Spring Boot | Application framework |
| Spring MVC | Web request handling |
| JSP | Frontend / View |
| HTML | Page structure |
| CSS | UI styling |
| MySQL | Database |
| Hibernate | ORM |
| Spring Data JPA | Database operations |
| Maven | Dependency management |
| Eclipse | Development IDE |

## 🏗️ Project Architecture

```text
User / Browser
      ↓
    JSP
      ↓
Controller
      ↓
EmployeeService
      ↓
EmployeeRepository
      ↓
MySQL Database
```

### Controller

Handles requests from the user and sends the required data to the JSP page.

### Service

Contains the application logic for searching employees.

### Repository

Uses Spring Data JPA to communicate with the MySQL database.

### Entity

The `Employee` entity represents employee records stored in the database.

## 🔍 Search Flow

### Search by Employee ID

```text
Employee ID
     ↓
Controller
     ↓
EmployeeService
     ↓
EmployeeRepository
     ↓
MySQL
     ↓
Employee Details
```

### Search by Name

```text
Employee Name
      ↓
Controller
      ↓
EmployeeService
      ↓
Repository
      ↓
List<Employee>
      ↓
Employee Directory
```

### Search by Department

```text
Department
      ↓
Controller
      ↓
EmployeeService
      ↓
Repository
      ↓
List<Employee>
      ↓
All Employees in Department
```

## 🗄️ Employee Information

The application displays:

- Employee ID
- Name
- Department
- Salary
- Gender
- Address

## 🚀 How to Run

### 1. Clone the repository

```bash
git clone https://github.com/Diksha-source14/Employee-Search-Management-System.git
```

### 2. Open the project

Open the project in **Eclipse IDE** as a Maven project.

### 3. Configure MySQL

Create a MySQL database and configure the database connection in:

```text
src/main/resources/application.properties
```

Example:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/employee_db
spring.datasource.username=root
spring.datasource.password=YOUR_PASSWORD

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

Replace `YOUR_PASSWORD` with your MySQL password.

### 4. Run the application

Run the Spring Boot main class as:

```text
Spring Boot App
```

Then open:

```text
http://localhost:8080/home
```

## 📸 Project Screenshots

### Employee Search by Name

The application allows users to search employees by name and display their information.

### Employee Search by Department

Users can search a department such as `IT` and view multiple employees belonging to that department.

### Employee Search by ID

Users can enter an employee ID and view the corresponding employee details.

## 📚 Learning Outcomes

Through this project, I improved my understanding of:

- Spring Boot
- Spring MVC
- Controller-Service-Repository architecture
- Spring Data JPA
- Hibernate
- MySQL database integration
- JSP
- REST-style request handling
- Java backend development
- Dynamic data display

## 👩‍💻 Developer

**Diksha Chothe**

B.Tech Computer Science & Engineering Student

## ⭐ Future Enhancements

- Add Employee
- Update Employee
- Delete Employee
- Employee login and authentication
- Pagination
- Advanced search and filtering
- REST API integration
- Spring Security
- React frontend

## 📄 License

This project is created for learning and educational purposes.
