# Swagger and Postman

## Introduction

After developing a Web API, it is important to test whether the API is working correctly. Two popular tools used for API testing are Swagger and Postman. Both allow developers to send HTTP requests and verify the responses returned by the API.

---

# What is Swagger?

Swagger is an API documentation and testing tool that is automatically integrated with ASP.NET Core Web API.

It provides a browser-based interface where developers can view all API endpoints and test them without writing any additional code.

---

# Features of Swagger

- Automatically generates API documentation.
- Displays all available endpoints.
- Supports GET, POST, PUT, and DELETE methods.
- Allows testing directly from the browser.
- Shows request and response models.
- Easy to use for beginners.

---

# Advantages of Swagger

- Interactive API documentation.
- No external software required.
- Easy API testing.
- Saves development time.
- Helpful for debugging APIs.

---

# Swagger in ASP.NET Core

Swagger is enabled while creating the Web API project.

Example:

```csharp
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
```

Inside Program.cs

```csharp
app.UseSwagger();
app.UseSwaggerUI();
```

After running the project, Swagger opens automatically in the browser.

---

# What is Postman?

Postman is a desktop application used for testing Web APIs.

It allows developers to send HTTP requests to any API and inspect the responses.

Unlike Swagger, Postman can test APIs from different servers and applications.

---

# Features of Postman

- Supports all HTTP methods.
- Easy request creation.
- JSON request body support.
- Environment variables.
- Authorization support.
- Collection management.
- Response validation.

---

# HTTP Methods Tested in Postman

## GET

Retrieves records from the server.

Example:

```
GET /api/products
```

---

## POST

Creates a new record.

Example:

```
POST /api/products
```

---

## PUT

Updates an existing record.

Example:

```
PUT /api/products/1
```

---

## DELETE

Deletes a record.

Example:

```
DELETE /api/products/1
```

---

# API Response

A successful API generally returns:

- Status Code
- Response Body
- Headers
- Execution Time

Example Response

```json
{
  "productId": 1,
  "productName": "Laptop",
  "price": 65000
}
```

---

# HTTP Status Codes

| Status Code | Meaning |
|-------------|---------|
|200|OK|
|201|Created|
|204|No Content|
|400|Bad Request|
|401|Unauthorized|
|403|Forbidden|
|404|Not Found|
|500|Internal Server Error|

---

# Swagger vs Postman

| Swagger | Postman |
|----------|----------|
|Runs in Browser|Desktop Application|
|API Documentation|API Testing Tool|
|Automatically Generated|Manual Requests|
|Easy for Beginners|Advanced Testing|
|Integrated with ASP.NET Core|Works with Any API|

---

# Best Practices

- Test every API endpoint.
- Validate request parameters.
- Verify status codes.
- Check JSON responses.
- Test invalid inputs.
- Secure APIs before deployment.

---

# Summary

Swagger and Postman are widely used tools for testing Web APIs. Swagger provides interactive documentation, while Postman offers advanced API testing features. Using both tools helps developers verify API functionality before deployment.

     #AUTHENTICATION #
     # JWT Authentication and Authorization

## Introduction

Authentication and Authorization are two essential concepts in Web API security. Authentication verifies the identity of the user, while Authorization determines what resources the authenticated user is allowed to access. ASP.NET Core commonly uses JWT (JSON Web Token) to secure Web APIs.

---

# Authentication

Authentication is the process of verifying the identity of a user.

It answers the question:

**"Who are you?"**

Common authentication methods:

- Username and Password
- Email and Password
- Google Login
- Microsoft Login
- JWT Authentication

Example:

A user enters a username and password. If the credentials are correct, the server considers the user authenticated.

---

# Authorization

Authorization is the process of deciding what an authenticated user is allowed to do.

It answers the question:

**"What are you allowed to access?"**

Example:

Admin
- Add Products
- Delete Products
- Update Products

Customer
- View Products
- Place Orders

Authorization happens only after successful authentication.

---

# JWT (JSON Web Token)

JWT stands for **JSON Web Token**.

It is an open standard used to securely exchange information between a client and a server.

JWT is widely used in ASP.NET Core Web APIs because it is lightweight, secure, and easy to use.

---

# Structure of JWT

A JWT consists of three parts.

## 1. Header

The header contains information about the token type and signing algorithm.

Example:

```json
{
  "alg": "HS256",
  "typ": "JWT"
}
```

---

## 2. Payload

The payload contains user information called claims.

Example:

```json
{
  "UserId": 101,
  "Username": "Likhitha",
  "Role": "Admin"
}
```

---

## 3. Signature

The signature verifies that the token has not been modified.

It is generated using a secret key.

---

# JWT Authentication Flow

The JWT authentication process works as follows.

1. User logs into the application.
2. Server verifies the username and password.
3. If the credentials are valid, the server generates a JWT token.
4. The token is returned to the client.
5. The client stores the token.
6. The client sends the token with every API request.
7. The server validates the token before processing the request.

---

# Claims

Claims are pieces of information stored inside the JWT payload.

Examples:

- User ID
- Username
- Email
- Role
- Permissions

Claims help identify the authenticated user.

---

# Roles

Roles are used for role-based authorization.

Common roles:

- Admin
- Manager
- Employee
- Customer

Example:

Only Admin users can delete records.

---

# Authorize Attribute

ASP.NET Core provides the **Authorize** attribute to secure API endpoints.

Example:

```csharp
[Authorize]
public IActionResult GetProducts()
{
    return Ok();
}
```

Only authenticated users can access this API.

---

# Role-Based Authorization

Role-based authorization restricts access based on user roles.

Example:

```csharp
[Authorize(Roles = "Admin")]
```

Only users with the Admin role can access the endpoint.

---

# Anonymous Access

Some APIs should be available without authentication.

Example:

Login

Register

These endpoints use:

```csharp
[AllowAnonymous]
```

---

# Benefits of JWT

- Lightweight
- Secure
- Stateless
- Fast
- Easy to implement
- Cross-platform
- Suitable for Web APIs

---

# Authentication vs Authorization

| Authentication | Authorization |
|----------------|---------------|
| Verifies user identity | Verifies user permissions |
| Happens first | Happens after authentication |
| Login process | Access control |
| Uses username and password | Uses roles and permissions |

---

# Best Practices

- Use HTTPS for all API communication.
- Store secret keys securely.
- Set token expiration time.
- Validate every incoming token.
- Avoid storing sensitive data in the payload.
- Implement role-based authorization whenever required.

---

# Summary

JWT Authentication is one of the most common methods for securing ASP.NET Core Web APIs. Authentication verifies the identity of users, while Authorization controls access to resources. JWT provides a secure, lightweight, and scalable approach for protecting APIs and is widely used in modern web applications.
