# Builder Pattern

## Definition

Builder Pattern is a creational design pattern used to create complex objects step by step.

Instead of creating everything at once, we build the object gradually.

## Why do we use it?

- Simplifies object creation
- Makes code readable
- Reduces constructor complexity
- Easy to maintain

## Real life example

Building a burger.

We select:

- Bread
- Cheese
- Vegetables
- Sauce

Then the final burger is prepared.

## Working

1. Create builder class.
2. Add required attributes.
3. Build the object.
4. Return the final object.

## Pseudo Code

Start

Create Builder

Set required values

Build object

Return final object

End