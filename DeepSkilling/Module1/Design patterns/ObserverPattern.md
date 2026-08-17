# Observer Pattern

## Definition

Observer Pattern is a behavioral design pattern where one object notifies multiple dependent objects whenever a change occurs.

It creates a one-to-many relationship.

## Why do we use it?

- Automatic updates
- Loose coupling
- Easy communication between objects

## Real life example

YouTube notifications.

When a creator uploads a video, all subscribers receive notifications.

## Working

1. Create Subject.
2. Create Observers.
3. Register observers.
4. Notify observers whenever data changes.

## Pseudo Code

Start

Create Subject

Create Observers

Attach Observers

Update Subject

Notify all Observers

End