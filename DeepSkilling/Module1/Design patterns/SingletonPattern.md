# Singleton Pattern

## Definition

Singleton Pattern ensures that only one object of a class is created throughout the application.

## Why do we use it?

- Saves memory
- Avoids duplicate objects
- Provides global access

## Real life example

Logger system

Database connection

Configuration manager

## Working

1. Create a private object.
2. Create a private constructor.
3. Create getInstance() method.
4. Return the same object every time.

## Pseudo Code

Start

Create private object

Create private constructor

Create getInstance()

If object is null

   Create object

Return object

End