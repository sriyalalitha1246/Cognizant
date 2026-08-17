# React ES6

## Introduction

React applications are written using modern JavaScript, commonly known as ES6 (ECMAScript 2015). ES6 introduced many new features that make JavaScript code shorter, cleaner, and easier to maintain. React relies heavily on ES6 syntax.

---

# What is ES6?

ES6 is an updated version of JavaScript that introduced new language features such as:

- let and const
- Arrow Functions
- Classes
- Modules
- Template Literals
- Destructuring
- Spread Operator

These features simplify React development.

---

# var, let and const

## var

- Function scoped
- Can be redeclared
- Can be updated

Example

```javascript
var name = "John";
```

---

## let

- Block scoped
- Can be updated
- Cannot be redeclared

Example

```javascript
let age = 20;
```

---

## const

- Block scoped
- Cannot be reassigned
- Used for constants

Example

```javascript
const country = "India";
```

---

# Classes

ES6 introduced classes for creating objects.

Example

```javascript
class Student
{
    constructor(name)
    {
        this.name = name;
    }
}
```

React class components are based on JavaScript classes.

---

# Constructor

A constructor is a special method that executes automatically when an object is created.

Example

```javascript
constructor(props)
{
    super(props);
}
```

Purpose

- Initialize state
- Access props
- Perform setup tasks

---

# Inheritance

One class can inherit properties from another.

Example

```javascript
class Animal
{
}

class Dog extends Animal
{
}
```

React Class Components inherit from React.Component.

---

# this Keyword

The **this** keyword refers to the current object.

Example

```javascript
this.state
this.props
```

Inside React class components, this is used to access component data.

---

# Arrow Functions

Arrow functions provide a shorter syntax for writing functions.

Normal Function

```javascript
function add(a,b)
{
    return a+b;
}
```

Arrow Function

```javascript
const add = (a,b)=>a+b;
```

Advantages

- Less code
- Easy to read
- No binding issues with this

---

# Components in Separate Files

React recommends keeping each component in its own file.

Example

```
src

components

Header.jsx

Footer.jsx

Home.jsx
```

---

# Import and Export

Export

```javascript
export default Header;
```

Import

```javascript
import Header from "./Header";
```

This allows components to be reused.

---

# Default Props

Default Props provide default values when no props are supplied.

Example

```javascript
Student.defaultProps={
name:"Guest"
}
```

If no name is passed, React displays "Guest".

---

# JSX Styling

Styling can be added in different ways.

Inline Styling

```jsx
<h1 style={{color:"blue"}}>Hello</h1>
```

CSS File

```jsx
import "./App.css";
```

CSS Modules

```jsx
import styles from "./Home.module.css";
```

---

# Summary

ES6 introduced modern JavaScript features such as let, const, classes, arrow functions, modules, and destructuring. React applications use these features extensively to write clean, maintainable, and reusable code.

# React Events and Forms

## Introduction

React applications become interactive using events and forms. Events allow users to perform actions, while forms collect user input.

---

# React Events

Events occur whenever the user interacts with the application.

Examples

- Button Click
- Mouse Hover
- Key Press
- Form Submit

---

# Event Object

Whenever an event occurs, React passes an event object containing details about the event.

Example

```jsx
function handleClick(event)
{
console.log(event);
}
```

---

# Event Handlers

An event handler is a function that executes when an event occurs.

Example

```jsx
<button onClick={handleClick}>
Click Me
</button>
```

---

# Passing Arguments

Arguments can be passed to event handlers.

Example

```jsx
<button onClick={()=>deleteProduct(10)}>
Delete
</button>
```

---

# React Forms

Forms collect user information.

Examples

- Login
- Registration
- Feedback
- Contact Form

---

# Controlled Components

React controls the form values using state.

Example

```jsx
const[name,setName]=useState("");
```

Advantages

- Easy validation
- Better control
- Predictable data

---

# Uncontrolled Components

The DOM manages the form values.

React accesses the values using useRef().

Suitable for simple forms.

---

# Form Validation

Validation ensures that users enter correct information.

Example

- Required Fields
- Email Validation
- Password Length
- Mobile Number

---

# Displaying Error Messages

Example

```
Email is required.

Password must contain at least 8 characters.
```

---

# TextArea

Used for multiple lines of text.

```jsx
<textarea></textarea>
```

---

# Select Tag

Used for dropdown lists.

```jsx
<select>

<option>India</option>

<option>USA</option>

</select>
```

---

# Best Practices

- Validate inputs.
- Display meaningful errors.
- Use controlled components.
- Prevent empty submissions.
- Reset forms after successful submission.

---

# Summary

React forms collect user information, while events make applications interactive. Controlled components, validation, and event handlers help create reliable and user-friendly forms.