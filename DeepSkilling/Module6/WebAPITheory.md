# ASP.NET Core Web API Theory

## Introduction

A Web API (Application Programming Interface) is a software interface that allows two applications to communicate over the internet using HTTP. It acts as a bridge between the client application and the server application. Web APIs are commonly used in web, mobile, and desktop applications to exchange data.

---

# What is an API?

API stands for Application Programming Interface. It is a collection of rules and methods that allows one application to communicate with another.

Example:
- A weather application retrieves weather data from an online weather API.
- An e-commerce website communicates with a payment gateway using APIs.

Advantages:
- Reusability
- Faster development
- Easy integration
- Platform independent

---

# What is a Web API?

A Web API is an API that works over HTTP.

It allows clients to:
- Retrieve data
- Insert new records
- Update existing records
- Delete records

The response is generally returned in JSON format.

Example:

Client → HTTP Request → Web API → Database

Database → Web API → JSON Response → Client

---

# REST API

REST stands for Representational State Transfer.

REST is an architectural style used to develop web services.

Characteristics:
- Stateless communication
- Uses HTTP protocol
- Supports CRUD operations
- Lightweight
- Easy to develop and maintain

REST APIs exchange data mostly in JSON format.

---

# ASP.NET Core Web API

ASP.NET Core Web API is Microsoft's framework used to build RESTful services.

Features:
- High performance
- Cross-platform support
- Built-in Dependency Injection
- Easy integration with Entity Framework Core
- Swagger support
- Secure authentication using JWT
- Supports asynchronous programming

---

# Setting up .NET 8 Development Environment

Required Software:

- Visual Studio 2022
- .NET 8 SDK
- SQL Server
- SQL Server Management Studio (SSMS)
- Postman (optional)
- Git and GitHub

Create a project:

File → New → Project

Select

ASP.NET Core Web API

Choose

.NET 8

Enable

OpenAPI (Swagger)

Create the project.

---

# ASP.NET Core Web API Project Structure

A typical Web API project contains:

Controllers
Contains API endpoints.

Models
Contains data models or entities.

Program.cs
Application startup file.

appsettings.json
Stores configuration such as connection strings.

Properties
Launch settings.

Dependencies
NuGet packages used in the project.

---

# Controllers

Controllers receive HTTP requests and return responses.

A controller class inherits from ControllerBase.

Example:

ProductController

contains methods like

GetProducts()

AddProduct()

UpdateProduct()

DeleteProduct()

Each controller is decorated with

[ApiController]

and

[Route("api/[controller]")]

---

# Models

Models represent the structure of the data.

Example:

Product

Properties:
- ProductId
- ProductName
- Category
- Price

Models are used for both database operations and API communication.

---

# Routing

Routing maps an incoming URL to a controller action.

There are two types:

1. Conventional Routing
2. Attribute Routing

Example:

api/products

api/products/5

Route attributes improve readability and flexibility.

---

# HTTP Methods

Web APIs use different HTTP methods for different operations.

GET
Retrieves data.

POST
Creates a new record.

PUT
Updates an existing record.

DELETE
Deletes a record.

PATCH
Updates only selected fields.

---

# CRUD Operations

CRUD stands for:

Create → POST

Read → GET

Update → PUT

Delete → DELETE

Every Web API generally supports these four operations.

Example:

GET /api/products

POST /api/products

PUT /api/products/5

DELETE /api/products/5

---

# JSON

JSON stands for JavaScript Object Notation.

It is a lightweight format used for exchanging data.

Example:

{
    "productId":1,
    "productName":"Laptop",
    "category":"Electronics",
    "price":65000
}

JSON is easy for both humans and machines to understand.

---

# Serialization

Serialization is the process of converting an object into JSON before sending it to the client.

Deserialization converts JSON back into an object.

ASP.NET Core automatically performs serialization and deserialization.

---

# Advantages of ASP.NET Core Web API

- High performance
- Cross-platform
- Easy integration with databases
- Supports REST architecture
- Built-in Dependency Injection
- Swagger support
- Secure authentication
- Scalable
- Easy maintenance

---

# Summary

ASP.NET Core Web API is a modern framework for developing RESTful services. It uses HTTP methods to perform CRUD operations and exchanges data using JSON. Controllers handle client requests, Models represent data, and Routing directs requests to the appropriate action. ASP.NET Core Web API is widely used for developing secure, scalable, and high-performance backend applications.