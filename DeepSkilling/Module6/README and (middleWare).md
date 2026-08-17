# ASP.NET Core Web API 8.0 Hands-On Labs

## Overview

This repository contains my practice exercises and theory notes on ASP.NET Core 8 Web API. The labs demonstrate how to build RESTful APIs, perform CRUD operations, use routing, middleware, authentication concepts, and test APIs using Swagger.

---

## Lab 1 – Creating an ASP.NET Core Web API Project

### Objective

Create a new ASP.NET Core Web API project using .NET 8.

### Topics Covered

- ASP.NET Core Web API
- Project Structure
- Swagger
- Controllers
- Build and Run

---

## Lab 2 – Creating REST APIs

### Objective

Develop RESTful API endpoints.

### Topics Covered

- GET
- POST
- PUT
- DELETE
- JSON Responses
- Status Codes

---

## Lab 3 – Routing and Parameters

### Objective

Understand routing techniques.

### Topics Covered

- Attribute Routing
- Route Parameters
- Query Parameters

---

## Lab 4 – Entity Framework Core Integration

### Objective

Connect Web API with SQL Server using Entity Framework Core.

### Topics Covered

- DbContext
- Entity Classes
- CRUD Operations
- SQL Server Connection

---

## Lab 5 – Middleware

### Objective

Configure middleware in ASP.NET Core.

### Topics Covered

- Request Pipeline
- Logging
- HTTPS Redirection
- Exception Handling

---

## Lab 6 – Swagger API Testing

### Objective

Test APIs using Swagger UI.

### Topics Covered

- Swagger UI
- API Documentation
- Request Testing
- Response Validation

---

## Lab 7 – Authentication Basics

### Objective

Understand API security concepts.

### Topics Covered

- Authentication
- Authorization
- JWT Overview
- API Security

---

## Skills Learned

- ASP.NET Core 8
- REST API Development
- HTTP Methods
- Controllers
- Routing
- Entity Framework Core
- Middleware
- Swagger
- JSON
- SQL Server Integration
- API Testing

---

## Conclusion

These labs helped me understand the fundamentals of ASP.NET Core Web API development, including REST architecture, API creation, routing, middleware configuration, Entity Framework Core integration, and API testing using Swagger.

#middle ware#
# Middleware and Filters in ASP.NET Core Web API

## Introduction

Middleware and Filters are important components in ASP.NET Core Web API. They help process requests, improve security, handle exceptions, log application activity, and perform tasks before or after an API request.

---

# What is Middleware?

Middleware is software that runs between the client's request and the server's response.

Every request passes through a sequence of middleware components before reaching the controller.

Similarly, every response also passes through middleware before reaching the client.

Request Flow

```
Client

↓

Middleware

↓

Controller

↓

Database

↓

Controller

↓

Middleware

↓

Client
```

---

# Why do we use Middleware?

Middleware helps in:

- Authentication
- Authorization
- Exception Handling
- Logging
- HTTPS Redirection
- Static File Handling
- CORS
- Routing

---

# Built-in Middleware

ASP.NET Core provides several built-in middleware components.

Examples:

- Routing Middleware
- Authentication Middleware
- Authorization Middleware
- HTTPS Redirection Middleware
- Static File Middleware
- CORS Middleware
- Exception Handling Middleware

These middleware components are configured inside **Program.cs**.

---

# Request Processing Pipeline

Every HTTP request follows a pipeline.

Example

```
Client Request

↓

Authentication

↓

Authorization

↓

Routing

↓

Controller

↓

Response
```

Each middleware performs its task and forwards the request to the next middleware.

---

# Custom Middleware

Sometimes built-in middleware is not enough.

Developers can create custom middleware for specific requirements.

Examples

- Logging user activity
- Request validation
- Performance monitoring
- Custom exception handling

Advantages

- Reusable
- Easy to maintain
- Centralized logic

---

# What are Filters?

Filters execute before or after a controller action.

They allow developers to perform common tasks without writing duplicate code.

---

# Types of Filters

### Authorization Filter

Runs first.

Checks whether the user has permission to access the API.

Example

Admin APIs

Manager APIs

Employee APIs

---

### Action Filter

Runs before and after an action method.

Uses

- Logging
- Validation
- Performance measurement

---

### Exception Filter

Handles unexpected errors.

Instead of showing technical errors, it returns meaningful messages to the client.

Example

```
{
   "message":"Something went wrong."
}
```

---

### Result Filter

Runs before and after the action result is returned.

Uses

- Modify response
- Add headers
- Format output

---

# Middleware vs Filters

| Middleware | Filters |
|------------|----------|
| Executes for every request | Executes only for controller actions |
| Runs before routing | Runs after routing |
| Used for request pipeline | Used for action processing |
| Global functionality | Controller or Action level |

---

# Logging

Logging records application activities.

Examples

- User Login
- API Requests
- Errors
- Database Operations
- Warnings

Benefits

- Easy debugging
- Performance monitoring
- Error tracking
- Security auditing

Common logging providers

- ILogger
- Serilog
- NLog

---

# Exception Handling

Applications should always handle errors gracefully.

Instead of displaying technical errors, APIs should return meaningful responses.

Example

```
400 Bad Request

404 Not Found

500 Internal Server Error
```

Benefits

- Better user experience
- Easier debugging
- Secure applications

---

# CORS (Cross-Origin Resource Sharing)

By default, browsers block requests from different domains.

CORS allows APIs to accept requests from other applications.

Example

```
Angular Application

↓

ASP.NET Core API
```

Without CORS, the browser blocks the request.

---

# HTTPS Redirection

HTTPS encrypts communication between the client and the server.

Benefits

- Secure communication
- Protects sensitive information
- Prevents data interception

ASP.NET Core automatically supports HTTPS redirection.

---

# Dependency Injection

Middleware and Controllers use Dependency Injection to obtain required services.

Benefits

- Loose coupling
- Easy testing
- Better maintainability

---

# Best Practices

- Keep middleware simple.
- Handle exceptions globally.
- Enable HTTPS.
- Configure CORS carefully.
- Log important events only.
- Avoid unnecessary middleware.
- Use filters for reusable action logic.

---

# Real-Time Examples

### Authentication Middleware

Checks whether the user is logged in.

---

### Logging Middleware

Records every incoming API request.

---

### Exception Middleware

Returns a user-friendly error message when an exception occurs.

---

### Action Filter

Checks whether the request data is valid before executing the action.

---

# Summary

Middleware and Filters improve the performance, security, and maintainability of ASP.NET Core Web APIs. Middleware processes every request through the request pipeline, while Filters work around controller actions. Features like logging, exception handling, authentication, authorization, and CORS help in building secure and reliable Web APIs.