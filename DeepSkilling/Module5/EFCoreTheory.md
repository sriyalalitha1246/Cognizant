# Entity Framework Core (EF Core) Theory

## Introduction

Entity Framework Core (EF Core) is Microsoft's ORM (Object Relational Mapper) for .NET applications. It helps developers work with databases using C# classes instead of writing SQL queries for every operation.

With EF Core, we can easily create databases, insert records, update data, delete records, and retrieve information using C# code.

---

# What is ORM?

ORM stands for Object Relational Mapping.

It is a technique that connects objects in a programming language with tables in a relational database.

Instead of writing SQL manually, we work with C# objects and Entity Framework converts those operations into SQL queries.

### Example

Database Table

```
Products
-------------------------
Id
Name
Price
Category
```

Entity Class

```csharp
public class Product
{
    public int Id { get; set; }
    public string Name { get; set; }
    public decimal Price { get; set; }
}
```

EF Core automatically maps this class to the Products table.

---

# Why do we use EF Core?

Some advantages are:

- Less SQL code
- Easy CRUD operations
- Supports LINQ queries
- Faster development
- Database migrations
- Easy database management

---

# Main Components of EF Core

## Entity

An Entity is simply a C# class that represents a database table.

Example

```csharp
public class Product
{
    public int Id { get; set; }
    public string Name { get; set; }
}
```

Here Product represents the Products table.

---

## DbContext

DbContext is the main class used by EF Core.

It creates a connection between the application and SQL Server.

It keeps track of all database operations.

Example

```csharp
public class AppDbContext : DbContext
{
    public DbSet<Product> Products { get; set; }
}
```

---

## DbSet

DbSet represents a table in the database.

Using DbSet we can perform operations like

- Insert
- Update
- Delete
- Select

Example

```csharp
context.Products.Add(product);
```

---

# Code First Approach

In Code First, we first create C# classes.

After creating the classes, Entity Framework automatically creates the database tables.

Steps

1. Create Entity Class
2. Create DbContext
3. Add Migration
4. Update Database

This approach is easy because we don't need to design tables manually.

---

# Migrations

Migration is a feature that keeps the database structure synchronized with our C# classes.

Whenever we change the model, we create a new migration.

Commands

```
Add-Migration InitialCreate

Update-Database
```

The first command creates migration files.

The second command applies those changes to SQL Server.

---

# CRUD Operations

CRUD means

- Create
- Read
- Update
- Delete

These are the basic operations performed on database records.

---

## Insert Data

```csharp
context.Products.Add(product);
context.SaveChanges();
```

SaveChanges() permanently stores the data.

---

## Read Data

```csharp
var products = context.Products.ToList();
```

This retrieves all records.

---

## Update Data

```csharp
product.Price = 50000;

context.SaveChanges();
```

After changing the value, SaveChanges() updates the database.

---

## Delete Data

```csharp
context.Products.Remove(product);

context.SaveChanges();
```

The selected record gets deleted.

---

# LINQ

LINQ stands for Language Integrated Query.

It is used to query data directly in C# without writing SQL statements.

Example

```csharp
var result = context.Products
                    .Where(p => p.Price > 1000)
                    .ToList();
```

LINQ makes the code simple and easy to understand.

---

# Common LINQ Methods

### Where()

Used to filter records.

Example

```csharp
.Where(p => p.Price > 5000)
```

---

### OrderBy()

Sorts data in ascending order.

```csharp
.OrderBy(p => p.Name)
```

---

### OrderByDescending()

Sorts data in descending order.

```csharp
.OrderByDescending(p => p.Price)
```

---

### Select()

Returns only required columns.

```csharp
.Select(p => p.Name)
```

---

### FirstOrDefault()

Returns the first matching record.

```csharp
.FirstOrDefault()
```

---

### Count()

Returns total number of records.

```csharp
.Count()
```

---

# SaveChanges()

SaveChanges() is one of the most important methods in EF Core.

Without calling SaveChanges(), no changes are stored in the database.

---

# Benefits of EF Core

- Reduces SQL coding
- Easy to learn
- Supports LINQ
- Works with SQL Server
- Faster application development
- Easy CRUD operations
- Supports Code First approach
- Easy database migrations

---

# What I Learned

In this module, I understood how Entity Framework Core simplifies database programming in .NET applications. I learned how entities are mapped to tables, how DbContext manages database communication, and how CRUD operations can be performed using C# code. I also learned about migrations, the Code First approach, and LINQ queries, which make database operations much easier compared to writing SQL statements manually.

---

# Conclusion

Entity Framework Core is a powerful framework for database development in .NET. It allows developers to work with C# objects instead of writing complex SQL queries. Using EF Core, we can easily create databases, manage data, perform CRUD operations, and write efficient LINQ queries, making application development faster and more organized.
#ADVANCED CONCEPTS:
# Advanced Entity Framework Core Topics

## Introduction

After learning the basics of Entity Framework Core like DbContext, CRUD operations, LINQ, and Migrations, there are some advanced concepts that help us build real-world applications. These concepts improve performance, maintain relationships between tables, and make applications easier to manage.

---

# EF Core vs Entity Framework

Many people confuse Entity Framework and Entity Framework Core.


Nowadays most developers use Entity Framework Core.

---

# New Features in EF Core 8

EF Core 8 includes several improvements.

- Better performance
- Faster query execution
- Improved JSON support
- Better LINQ translation
- Easier database migrations
- Improved bulk operations
- Better compatibility with .NET 8

---

# Installing EF Core Packages

Entity Framework Core packages are installed using NuGet Package Manager.

Common packages are

- Microsoft.EntityFrameworkCore
- Microsoft.EntityFrameworkCore.SqlServer
- Microsoft.EntityFrameworkCore.Tools

These packages allow the application to communicate with SQL Server.

---

# DbContext

DbContext acts like a bridge between our application and the database.

It keeps track of

- Tables
- Changes
- Database connection

Example

```csharp
public class AppDbContext : DbContext
{
    public DbSet<Product> Products { get; set; }
}
```

---

# Entity

An Entity is simply a C# class that represents a database table.

Example

```csharp
public class Product
{
    public int Id { get; set; }
    public string Name { get; set; }
}
```

---

# Primary Key

A Primary Key uniquely identifies every row.

Example

```csharp
public int Id { get; set; }
```

Every table should have one primary key.

---

# Foreign Key

A Foreign Key creates a relationship between two tables.

Example

```
Department
------------
DepartmentId

Employee
------------
EmployeeId
DepartmentId
```

DepartmentId inside Employee is a Foreign Key.

---

# Navigation Properties

Navigation Properties help move between related tables.

Example

```csharp
public class Student
{
    public int StudentId { get; set; }

    public int DepartmentId { get; set; }

    public Department Department { get; set; }
}
```

This allows EF Core to load department details along with the student.

---

# Code First Approach

In Code First we first create C# classes.

Later EF Core creates the database automatically.

Steps

1. Create Entity
2. Create DbContext
3. Add Migration
4. Update Database

---

# CRUD Operations

CRUD stands for

- Create
- Read
- Update
- Delete

These are the basic database operations.

---

# Add()

Used to insert one record.

```csharp
context.Products.Add(product);
context.SaveChanges();
```

---

# AddAsync()

Used for asynchronous insertion.

```csharp
await context.Products.AddAsync(product);

await context.SaveChangesAsync();
```

Useful in web applications.

---

# Find()

Find() searches using Primary Key.

```csharp
var product = context.Products.Find(1);
```

---

# FirstOrDefault()

Returns the first matching record.

```csharp
var product = context.Products
                     .FirstOrDefault(p => p.Price > 1000);
```

If nothing is found, it returns null.

---

# ToListAsync()

Returns all records asynchronously.

```csharp
var products = await context.Products.ToListAsync();
```

---

# Remove()

Deletes one record.

```csharp
context.Products.Remove(product);

context.SaveChanges();
```

---

# RemoveRange()

Deletes multiple records.

```csharp
context.Products.RemoveRange(products);

context.SaveChanges();
```

---

# LINQ Queries

LINQ means Language Integrated Query.

It allows us to query the database using C#.

Example

```csharp
var result = context.Products
                    .Where(p => p.Price > 1000)
                    .ToList();
```

---

# Projection (DTO)

Sometimes we don't need every column.

DTO returns only required data.

Example

```csharp
var result = context.Products
.Select(p => new
{
    p.Name,
    p.Price
});
```

This reduces unnecessary data transfer.

---

# Aggregate Functions

Aggregate functions calculate values.

Examples

```csharp
Count()

Sum()

Average()

Max()

Min()
```

Example

```csharp
int total = context.Products.Count();
```

---

# Migrations

Migration keeps the database synchronized with Entity classes.

Commands

```
Add-Migration InitialCreate

Update-Database
```

---

# Remove Migration

If a migration is created by mistake, we can remove it.

Command

```
Remove-Migration
```

---

# Seed Data

Seed Data means inserting default records automatically.

Example

Administrator account

Country list

Product categories

This data is inserted when the database is created.

---

# Eager Loading

Related data is loaded together.

Example

Student + Department

Both are loaded in one query.

Use

```csharp
Include()
```

---

# Lazy Loading

Related data loads only when needed.

This reduces initial loading time.

---

# Explicit Loading

Related data is loaded manually whenever required.

It gives better control over database queries.

---

# One-to-One Relationship

One record relates to one record.

Example

Person ↔ Passport

---

# One-to-Many Relationship

One parent has many children.

Example

Department → Employees

---

# Many-to-Many Relationship

Many records relate to many records.

Example

Students ↔ Courses

---

# Query Tracking

By default EF Core tracks every entity.

When data changes,

SaveChanges()

updates the database automatically.

---

# AsNoTracking()

Used only for reading data.

Example

```csharp
var products = context.Products
.AsNoTracking()
.ToList();
```

This improves performance.

---

# Bulk Operations

Bulk Operations process many records together.

Examples

Insert 1000 records

Delete 500 records

Update 2000 records

Bulk operations improve performance.

---

# Concurrency

Sometimes two users edit the same record.

Concurrency prevents data conflicts.

RowVersion is commonly used.

---

# Compiled Queries

Compiled Queries improve performance by storing execution plans.

Frequently used queries become faster.

---

# Best Practices

- Use Code First
- Keep DbContext small
- Use LINQ instead of raw SQL
- Use AsNoTracking() for read-only data
- Use async methods in web applications
- Keep entities simple
- Use migrations properly
- Avoid unnecessary database calls

---

# What I Learned

Through these advanced topics, I understood how Entity Framework Core manages relationships, improves performance, and handles real-world database applications. I learned about loading techniques, migrations, asynchronous operations, query optimization, and different types of relationships. These concepts help in developing efficient and maintainable .NET applications.

---

# Conclusion

Entity Framework Core is one of the most useful frameworks in .NET for database development. It reduces coding effort, simplifies CRUD operations, manages relationships, supports LINQ, and provides advanced features like migrations, loading strategies, and performance optimization. Learning these concepts makes it easier to build scalable and professional applications.
