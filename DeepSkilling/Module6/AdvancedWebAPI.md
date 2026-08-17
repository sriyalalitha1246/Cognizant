# AdvancedWebAPI.md

# Advanced ASP.NET Core Web API Concepts

## Introduction

After learning how to build a basic Web API, the next step is understanding advanced concepts such as routing, middleware, authentication, authorization, filters, and exception handling. These features help in developing secure, maintainable, and enterprise-level applications.

---

# Attribute Routing

Attribute Routing is a routing technique where routes are defined directly on controllers and action methods using attributes.

Example:

```csharp
[Route("api/[controller]")]
public class ProductsController : ControllerBase
{
}
```

We can also define routes for individual actions.

```csharp
[HttpGet("{id}")]
public IActionResult GetProduct(int id)
{
}
```

Advantages:
- Better readability
- More control over URLs
- Easy to maintain
- Suitable for REST APIs

---

# Route Parameters

Route parameters allow values to be passed through the URL.

Example:

```
GET /api/products/5
```

Controller:

```csharp
[HttpGet("{id}")]
public IActionResult GetById(int id)
{
}
```

Here, **id** is received directly from the URL.

---

# Query Parameters

Query parameters are passed after the '?' symbol in the URL.

Example:

```
GET /api/products?category=Electronics
```

Controller:

```csharp
public IActionResult Get(string category)
{
}
```

Uses:
- Searching
- Filtering
- Sorting
- Pagination

---

# Middleware

Middleware is software that runs between the client request and server response.

Every HTTP request passes through middleware components.

Examples:
- Authentication
- Authorization
- Logging
- Exception Handling
- Static Files
- CORS

Request Flow:

Client

↓

Middleware

↓

Controller

↓

Database

↓

Response

---

# Built-in Middleware

ASP.NET Core provides many built-in middleware components.

Common middleware:

- HTTPS Redirection
- Authentication
- Authorization
- Static Files
- Routing
- CORS
- Exception Handling

Middleware is configured inside Program.cs.

---

# Custom Middleware

Developers can also create their own middleware.

Uses:
- Request Logging
- Performance Monitoring
- Custom Authentication
- Request Validation

Advantages:
- Reusable
- Centralized logic
- Easy maintenance

---

# Authentication

Authentication means verifying the identity of the user.

Question answered:

"Who are you?"

Examples:
- Username & Password
- Google Login
- Microsoft Login
- JWT Token

If authentication succeeds, the user is considered valid.

---

# Authorization

Authorization determines what an authenticated user is allowed to access.

Question answered:

"What are you allowed to do?"

Example:

Admin
- Add Product
- Delete Product
- Update Product

Customer
- View Products
- Place Orders

Authorization happens only after successful authentication.

---

# JWT Authentication

JWT stands for JSON Web Token.

It is commonly used for securing Web APIs.

JWT consists of three parts:

- Header
- Payload
- Signature

Flow:

User Login

↓

Server verifies credentials

↓

JWT Token generated

↓

Client stores token

↓

Client sends token with every request

↓

Server validates token

Advantages:
- Stateless
- Secure
- Lightweight
- Fast
- Widely used

---

# Role-Based Authorization

ASP.NET Core allows access based on user roles.

Example:

Admin

Manager

Customer

Controller Example:

```csharp
[Authorize(Roles="Admin")]
```

Only Admin users can access that API.

---

# Action Filters

Filters execute before or after controller actions.

Common filters:

- Authorization Filter
- Action Filter
- Exception Filter
- Result Filter

Uses:
- Logging
- Validation
- Exception Handling
- Performance Monitoring

---

# Exception Handling

Applications should handle unexpected errors properly.

Instead of displaying technical errors to users, meaningful messages should be returned.

Benefits:
- Better user experience
- Easier debugging
- Secure applications

Example response:

```
{
    "message":"Something went wrong."
}
```

---

# Logging

Logging records important application events.

Examples:
- User Login
- Errors
- API Requests
- Database Operations

Popular logging frameworks:

- Serilog
- NLog
- ILogger

Benefits:
- Easier debugging
- Performance monitoring
- Error tracking

---

# CORS (Cross-Origin Resource Sharing)

CORS allows one application to access resources from another domain.

Example:

Angular Application

↓

ASP.NET Core API

Without CORS, browsers block such requests.

ASP.NET Core allows configuring CORS policies.

---

# Swagger (OpenAPI)

Swagger is used for documenting and testing Web APIs.

Features:

- Lists all API endpoints
- Displays request and response models
- Allows testing APIs directly
- Automatically generates documentation

Swagger opens in the browser after running the application.

---

# Postman

Postman is a tool used to test Web APIs.

Using Postman we can:

- Send GET requests
- Send POST requests
- Send PUT requests
- Send DELETE requests
- Test JWT Authentication
- Verify API responses

It is widely used by developers and testers.

---

# SOAP and WCF

SOAP is a protocol for exchanging structured information between applications.

Characteristics:

- XML based
- Highly secure
- Strict standards
- Common in enterprise systems

WCF (Windows Communication Foundation) is Microsoft's framework used to build SOAP services.

Nowadays, REST APIs are more popular because they are lightweight and faster.

---

# REST vs SOAP

| REST | SOAP |
|------|------|
| Lightweight | Heavy |
| Uses JSON | Uses XML |
| Faster | Slower |
| Easy to use | Complex |
| Most modern applications | Legacy enterprise systems |

---

# Best Practices for Web APIs

- Use meaningful endpoint names.
- Follow REST conventions.
- Validate user input.
- Handle exceptions properly.
- Secure APIs using JWT.
- Use dependency injection.
- Keep controllers simple.
- Return proper HTTP status codes.
- Use asynchronous methods whenever possible.
- Document APIs using Swagger.

---

# Summary

Advanced ASP.NET Core Web API concepts help in building secure, scalable, and maintainable applications. Routing controls how requests reach controllers, middleware processes requests, JWT secures APIs, filters improve request handling, and Swagger simplifies API testing and documentation. Following best practices results in cleaner and more reliable applications.