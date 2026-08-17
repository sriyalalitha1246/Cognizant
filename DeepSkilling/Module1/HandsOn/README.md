# Week 1 - Design Patterns and Principles

## Overview

This week focuses on implementing two important Creational Design Patterns in C#:

- Singleton Pattern
- Factory Method Pattern

These patterns help build software that is reusable, maintainable, and scalable.

---

# Exercise 1: Implementing the Singleton Pattern

## Scenario

A logging utility should have only one instance throughout the application to ensure consistent logging.

## Objective

Implement the Singleton Design Pattern by:

- Creating a Logger class.
- Making the constructor private.
- Creating a private static instance.
- Providing a public static method to access the single instance.
- Verifying that only one object is created.

## Files

- Logger.cs
- Program.cs

## Output

```
Logger instance created.
Log: Application Started
Log: Application Running
Only one Logger instance exists.
```

## Learning Outcome

- Understood the Singleton Design Pattern.
- Learned how to restrict object creation to a single instance.
- Learned how multiple objects share the same instance.

---

# Exercise 2: Implementing the Factory Method Pattern

## Scenario

A document management system should create different types of documents such as Word, PDF, and Excel using the Factory Method Pattern.

## Objective

Implement the Factory Method Pattern by:

- Creating an IDocument interface.
- Creating WordDocument, PdfDocument, and ExcelDocument classes.
- Creating an abstract DocumentFactory.
- Creating concrete factory classes for each document type.
- Demonstrating object creation through factory classes.

## Files

- IDocument.cs
- DocumentFactory.cs
- WordDocument.cs
- PdfDocument.cs
- ExcelDocument.cs
- WordDocumentFactory.cs
- PdfDocumentFactory.cs
- ExcelDocumentFactory.cs
- Program.cs

## Output

```
Word Document Created
PDF Document Created
Excel Document Created
```

## Learning Outcome

- Understood the Factory Method Design Pattern.
- Learned how factories create objects without exposing object creation logic.
- Improved understanding of abstraction and polymorphism.

---

## Technologies Used

- C#
- .NET 10 Console Application
- Microsoft Visual Studio 2026 Community

---

## Conclusion

Successfully implemented two Creational Design Patterns:

- Singleton Pattern
- Factory Method Pattern

These patterns improve code organization, maintainability, and flexibility in software development.