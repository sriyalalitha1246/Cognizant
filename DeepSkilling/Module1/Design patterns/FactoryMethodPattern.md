# Factory Method Pattern

## Definition

Factory Method Pattern is a creational design pattern that creates objects without exposing the object creation logic to the user.

Instead of directly creating objects using the new keyword, we create them through a factory.

## Why do we use it?

- Reduces dependency
- Makes code reusable
- Makes future changes easier
- Keeps object creation centralized

## Real life example

A document management system creates different types of documents.

Examples:

- Word Document
- PDF Document
- Excel Document

The user simply selects the document type and the factory creates the required object.

## Working

1. Create a common interface.
2. Create multiple classes.
3. Create a factory class.
4. Pass the input type.
5. Factory returns the required object.

## Pseudo Code

Start

Create Document interface

Create Word, PDF and Excel classes

Create Factory class

Pass document type

Factory returns corresponding object

End