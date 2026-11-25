<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Employee Search | Home</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, Helvetica, sans-serif;
}

body {
    background: #f4f7fb;
    color: #222;
}

/* Navbar */

.navbar {
    min-height: 70px;
    background: #0d6efd;

    display: flex;
    align-items: center;
    justify-content: space-between;

    padding: 15px 5%;

    color: white;

    box-shadow: 0 2px 8px rgba(0,0,0,0.15);

    flex-wrap: wrap;
    gap: 15px;
}

.logo {
    font-size: 24px;
    font-weight: bold;
}

.logo span {
    color: #dbeafe;
}

.nav-links {
    display: flex;
    gap: 25px;
    flex-wrap: wrap;
}

.nav-links a {
    text-decoration: none;
    color: white;
    font-size: 15px;
    font-weight: 500;
}

.nav-links a:hover {
    color: #dbeafe;
}


/* Hero */

.hero {
    min-height: 350px;

    display: flex;
    align-items: center;
    justify-content: center;

    text-align: center;

    padding: 60px 20px;

    background: linear-gradient(135deg, #eaf3ff, #ffffff);
}

.hero-content {
    width: 100%;
    max-width: 800px;
}

.hero h1 {
    font-size: 42px;
    color: #123b6d;
    margin-bottom: 15px;
}

.hero h1 span {
    color: #0d6efd;
}

.hero p {
    font-size: 17px;
    color: #666;
    margin-bottom: 30px;
}


/* Search */

.search-box {
    background: white;

    padding: 10px;

    border-radius: 10px;

    display: flex;

    max-width: 650px;

    margin: auto;

    box-shadow: 0 5px 20px rgba(0,0,0,0.12);
}

.search-box input {
    flex: 1;

    min-width: 0;

    border: none;

    outline: none;

    padding: 15px;

    font-size: 15px;
}

.search-box button {
    border: none;

    background: #0d6efd;

    color: white;

    padding: 0 25px;

    border-radius: 7px;

    font-size: 15px;

    cursor: pointer;
}

.search-box button:hover {
    background: #0b5ed7;
}


/* Employee Data */

.employee-data {
    width: 94%;
    max-width: 1250px;

    margin: 40px auto;

    padding: 30px;

    background: white;

    border-radius: 15px;

    box-shadow: 0 5px 20px rgba(0,0,0,0.08);
}

.employee-data h2 {
    text-align: center;

    color: #123b6d;

    font-size: 28px;

    margin-bottom: 8px;
}

.subtitle {
    text-align: center;

    color: #777;

    font-size: 14px;

    margin-bottom: 25px;
}


/* Table */

.table-wrapper {
    width: 100%;
    overflow-x: auto;
}

.employee-table {
    width: 100%;
    border-collapse: collapse;
    white-space: nowrap;
}

.employee-table thead {
    background: #0d6efd;
    color: white;
}

.employee-table th {
    padding: 16px 14px;

    text-align: left;

    font-size: 14px;
}

.employee-table td {
    padding: 15px 14px;

    border-bottom: 1px solid #e8edf5;

    font-size: 14px;

    color: #444;
}

.employee-table tbody tr:nth-child(even) {
    background: #f4f8ff;
}

.employee-table tbody tr:hover {
    background: #e5efff;
}


/* Employee ID */

.employee-id {
    color: #0d6efd !important;
    font-weight: bold;
}


/* Salary */

.salary {
    color: #198754 !important;
    font-weight: bold;
}


/* Gender */

.gender-badge {
    display: inline-block;

    background: #e7f1ff;

    color: #0d6efd;

    padding: 5px 12px;

    border-radius: 20px;

    font-size: 12px;
}


/* Not Found */

.not-found-cell {
    text-align: center !important;

    padding: 0 !important;

    background: white !important;
}

.not-found-box {
    max-width: 600px;

    margin: 35px auto;

    padding: 35px 25px;

    background: #fff7f7;

    border: 1px solid #ffd0d0;

    border-radius: 15px;

    box-shadow: 0 5px 18px rgba(220,53,69,0.08);
}

.not-found-icon {
    font-size: 48px;

    margin-bottom: 12px;
}

.not-found-box h3 {
    color: #dc3545;

    font-size: 28px;

    margin-bottom: 12px;
}

.not-found-box p {
    color: #666;

    font-size: 16px;

    margin-bottom: 22px;
}

.not-found-box strong {
    color: #dc3545;
}


/* Search Again */

.back-btn {
    display: inline-block;

    text-decoration: none;

    background: #0d6efd;

    color: white;

    padding: 11px 25px;

    border-radius: 7px;

    font-size: 15px;

    font-weight: 500;

    transition: 0.3s;
}

.back-btn:hover {
    background: #0b5ed7;

    transform: translateY(-2px);
}


/* Services */

.services {
    padding: 45px 5%;

    text-align: center;
}

.services h2 {
    color: #123b6d;

    margin-bottom: 30px;

    font-size: 28px;
}

.cards {
    display: flex;

    justify-content: center;

    gap: 25px;

    flex-wrap: wrap;
}

.card {
    background: white;

    width: 250px;

    padding: 30px 20px;

    border-radius: 12px;

    box-shadow: 0 4px 15px rgba(0,0,0,0.08);

    transition: 0.3s;
}

.card:hover {
    transform: translateY(-5px);

    box-shadow: 0 8px 22px rgba(0,0,0,0.12);
}

.icon {
    font-size: 38px;

    margin-bottom: 15px;
}

.card h3 {
    color: #123b6d;

    margin-bottom: 10px;
}

.card p {
    color: #777;

    font-size: 14px;

    line-height: 1.6;
}


/* Footer */

footer {
    background: #123b6d;

    color: white;

    text-align: center;

    padding: 22px;

    margin-top: 25px;

    font-size: 14px;
}


/* Responsive */

@media (max-width: 700px) {

    .navbar {
        justify-content: center;
        padding: 20px;
    }

    .nav-links {
        justify-content: center;
        gap: 15px;
    }

    .hero h1 {
        font-size: 32px;
    }

    .search-box {
        flex-direction: column;
        gap: 10px;
    }

    .search-box button {
        padding: 13px;
    }

    .employee-data {
        padding: 18px;
    }

    .not-found-box {
        margin: 20px 10px;
        padding: 25px 15px;
    }

    .not-found-box h3 {
        font-size: 23px;
    }
}

</style>

</head>


<body>


<nav class="navbar">

    <div class="logo">
        Employee<span>Search</span>
    </div>

    <div class="nav-links">

        <a href="${pageContext.request.contextPath}/home">
            Home
        </a>

        <a href="${pageContext.request.contextPath}/employees">
            Employees
        </a>

        <a href="${pageContext.request.contextPath}/addEmployee.jsp">
            Add Employee
        </a>

        <a href="${pageContext.request.contextPath}/login.jsp">
            Login
        </a>

    </div>

</nav>


<section class="hero">

    <div class="hero-content">

        <h1>
            Find the Right
            <span>Employee</span>
        </h1>

        <p>
            Search and manage employee information quickly and easily.
        </p>


       <form action="${pageContext.request.contextPath}/searchEmployee"
      method="get">

    <div class="search-box">

        <input type="text"
               name="keyword"
               placeholder="Enter Employee ID, Name or Department..."
               value="${param.keyword}"
               required>

        <button type="submit">
            🔍 Search
        </button>

    </div>

</form>

    </div>

</section>


<section class="employee-data">

    <h2>
        Employee Directory
    </h2>

    <p class="subtitle">
        Employee information and records
    </p>


    <div class="table-wrapper">

        <table class="employee-table">

            <thead>

                <tr>

                    <th>Employee ID</th>

                    <th>Name</th>

                    <th>Department</th>

                    <th>Salary</th>

                    <th>Gender</th>

                    <th>Address</th>

                </tr>

            </thead>

<tbody>

    <c:choose>

        <c:when test="${not empty employee}">

            <tr>
                <td class="employee-id">${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.dep}</td>
                <td class="salary">₹${employee.salary}</td>

                <td>
                    <span class="gender-badge">
                        ${employee.gender}
                    </span>
                </td>

                <td>${employee.address}</td>
            </tr>

        </c:when>

        <c:when test="${not empty employees}">

            <c:forEach var="emp" items="${employees}">

                <tr>
                    <td class="employee-id">${emp.id}</td>
                    <td>${emp.name}</td>
                    <td>${emp.dep}</td>
                    <td class="salary">₹${emp.salary}</td>

                    <td>
                        <span class="gender-badge">
                            ${emp.gender}
                        </span>
                    </td>

                    <td>${emp.address}</td>
                </tr>

            </c:forEach>

        </c:when>

        <c:otherwise>

            <tr>
                <td colspan="6" class="not-found-cell">

                    <div class="not-found-box">

                        <div class="not-found-icon">
                            🔍
                        </div>

                        <h3>
                            Employee Not Found
                        </h3>

                        <p>
                            ${msg}
                        </p>

                        <a href="${pageContext.request.contextPath}/home"
                           class="back-btn">
                            Search Again
                        </a>

                    </div>

                </td>
            </tr>

        </c:otherwise>

    </c:choose>

</tbody>
        </table>

    </div>

</section>


<section class="services">

    <h2>
        Employee Management
    </h2>

    <div class="cards">

        <div class="card">

            <div class="icon">
                🔍
            </div>

            <h3>
                Search Employee
            </h3>

            <p>
                Quickly find employees using their employee ID.
            </p>

        </div>


        <div class="card">

            <div class="icon">
                👨‍💼
            </div>

            <h3>
                Employee Directory
            </h3>

            <p>
                View employee details in an organized table.
            </p>

        </div>


        <div class="card">

            <div class="icon">
                ➕
            </div>

            <h3>
                Add Employee
            </h3>

            <p>
                Add new employee information to the system.
            </p>

        </div>


        <div class="card">

            <div class="icon">
                📊
            </div>

            <h3>
                Manage Records
            </h3>

            <p>
                Maintain employee records efficiently.
            </p>

        </div>

    </div>

</section>


<footer>

    &copy; 2026 Employee Search Application
    | Employee Management System

</footer>


</body>

</html>