# React Theory

## Introduction

React is an open-source JavaScript library developed by Facebook (Meta) for building user interfaces. It is mainly used to develop Single Page Applications (SPAs), where only the required part of the page updates without refreshing the entire browser.

React is component-based, which means an application is divided into small reusable components. This makes development faster, easier to maintain, and more organized.

---

# What is React?

React is a front-end JavaScript library used to build interactive web applications.

It allows developers to create reusable UI components and efficiently update the user interface whenever data changes.

React mainly focuses on the View layer of the MVC architecture.

---

# Features of React

Some important features of React are:

- Component-Based Architecture
- Virtual DOM
- JSX
- One-Way Data Binding
- Reusable Components
- Fast Rendering
- Easy API Integration
- Strong Community Support

---

# Why React?

React is widely used because it is:

- Easy to learn
- Fast
- Reusable
- Flexible
- Efficient
- Suitable for large applications

Many companies use React to build modern web applications.

---

# Virtual DOM

DOM stands for Document Object Model.

Normally, updating the Real DOM is slow because the browser redraws the page.

React solves this problem using the Virtual DOM.

The Virtual DOM is a lightweight copy of the Real DOM.

Whenever data changes:

1. React creates a new Virtual DOM.
2. Compares it with the previous Virtual DOM.
3. Updates only the changed elements.

This improves application performance.

---

# Single Page Application (SPA)

React is mainly used to build Single Page Applications.

In an SPA:

- Only one HTML page is loaded.
- Data changes dynamically.
- The page is not refreshed completely.

Examples:

- Gmail
- Facebook
- Instagram
- Netflix

---

# React Architecture

A React application consists of:

- Components
- Props
- State
- Hooks
- Routing
- Services

Each component performs a specific task.

---

# React Components

Components are the building blocks of React applications.

Each component represents a part of the user interface.

Examples:

- Header
- Login
- Dashboard
- Product Card
- Footer

React encourages creating small and reusable components.

---

# Functional Components

React mainly uses Functional Components.

Example:

```jsx
function Home()
{
    return <h1>Welcome</h1>;
}
```

Functional components are simple and support Hooks.

---

# Advantages of React

- Faster rendering
- Reusable components
- Easy maintenance
- Better performance
- Virtual DOM
- Large community
- Easy API integration
- Easy testing

---

# Disadvantages of React

- React only handles the UI.
- Additional libraries are needed for routing and state management.
- Beginners may find JSX confusing.
- Frequent updates require continuous learning.

---

# React Project Structure

A basic React project contains:

src

Contains all source code.

components

Contains reusable UI components.

assets

Contains images and static files.

App.jsx

Main application component.

main.jsx

Application entry point.

package.json

Contains project dependencies.

---

# React Development Tools

Common tools used with React:

- Visual Studio Code
- Node.js
- npm
- Vite
- React Developer Tools
- Git
- GitHub

---

# Applications of React

React is used in:

- E-Commerce Websites
- Banking Applications
- Student Portals
- Hospital Management Systems
- Social Media Platforms
- Online Booking Systems
- Inventory Management Systems

---

# Best Practices

- Create reusable components.
- Keep components small.
- Use meaningful names.
- Organize folders properly.
- Avoid duplicate code.
- Use Hooks instead of Class Components.
- Handle errors properly.
- Write clean and readable code.

---

# Summary

React is a modern JavaScript library used for building fast and interactive user interfaces. Its component-based architecture, Virtual DOM, and reusable components make it one of the most popular technologies for front-end development. React simplifies UI development and is widely used for creating scalable Single Page Applications.

# PROPS 
# Components and Props in React

## Introduction

React applications are built using components. A component is a small and reusable part of the user interface. Instead of writing the entire application in one file, React divides it into multiple components.

Props are used to pass data from one component to another. They help make components reusable and dynamic.

---

# What is a Component?

A component is a reusable piece of code that returns JSX.

Each component performs a specific task.

Examples:

- Header
- Navbar
- Login
- Product Card
- Footer

Instead of writing everything in one file, React encourages creating multiple small components.

---

# Types of Components

React provides two types of components.

## Functional Components

Functional components are JavaScript functions that return JSX.

Example

```jsx
function Welcome()
{
    return <h1>Welcome to React</h1>;
}
```

Advantages

- Simple to write
- Easy to understand
- Supports Hooks
- Better performance

Nowadays, most React applications use functional components.

---

## Class Components

Class components are created using JavaScript classes.

Example

```jsx
class Welcome extends React.Component
{
    render()
    {
        return <h1>Welcome</h1>;
    }
}
```

Before React Hooks, class components were used for managing state.

Nowadays, functional components are preferred.

---

# Component Structure

A React component usually contains

- JSX
- JavaScript
- CSS
- State
- Event Handling

Each component should have a single responsibility.

---

# Reusable Components

One of React's biggest advantages is reusability.

Instead of creating the same UI multiple times, one component can be reused.

Example

Product Card

Instead of writing the Product Card five times,

Create one component and reuse it.

---

# What are Props?

Props stands for **Properties**.

Props are used to pass information from a parent component to a child component.

Props make components dynamic.

---

# Parent Component

The component that sends data is called the Parent Component.

Example

```jsx
<Student name="Likhitha" />
```

---

# Child Component

The component that receives data is called the Child Component.

Example

```jsx
function Student(props)
{
    return <h2>{props.name}</h2>;
}
```

Output

```
Likhitha
```

---

# Multiple Props

We can pass multiple values.

Example

```jsx
<Student

name="Likhitha"

branch="CSE"

year={3}

/>
```

Child Component

```jsx
function Student(props)
{
    return (

        <>

        <h2>{props.name}</h2>

        <h3>{props.branch}</h3>

        <h3>{props.year}</h3>

        </>

    );
}
```

---

# Destructuring Props

Instead of writing props.name repeatedly,

we can use destructuring.

Example

```jsx
function Student({name,branch})
{
    return (
        <>
        <h2>{name}</h2>

        <h3>{branch}</h3>
        </>
    );
}
```

The code becomes cleaner.

---

# Children Props

React allows components to receive nested content.

Example

```jsx
<Card>

<h2>Welcome</h2>

</Card>
```

Child Component

```jsx
function Card(props)
{
    return (

    <div>

    {props.children}

    </div>

    );
}
```

---

# One-Way Data Flow

React follows One-Way Data Binding.

Data always flows

Parent

↓

Child

A child component cannot directly modify the parent's data.

This makes applications easier to understand.

---

# Component Composition

Instead of inheritance,

React encourages Composition.

Example

```
App

↓

Header

↓

Navbar

↓

Dashboard

↓

Footer
```

Large applications are built by combining small components.

---

# Component Naming Rules

- Component names should start with a capital letter.
- Keep names meaningful.
- One component should perform one task.
- Avoid large components.

Examples

Good

```
ProductCard

StudentList

LoginForm
```

Bad

```
abc

xyz

data
```

---

# Advantages of Components

- Reusable
- Easy maintenance
- Better readability
- Faster development
- Independent testing
- Better organization

---

# Props vs State

| Props | State |
|--------|--------|
| Passed by Parent | Managed inside Component |
| Read-only | Can be changed |
| External Data | Internal Data |
| Used for Communication | Used for Dynamic UI |

---



# Summary

Components are the foundation of React applications. They divide the application into small reusable parts, making development easier and more organized. Props allow data to flow from parent to child components, helping create dynamic and reusable user interfaces. Using components effectively improves code quality, maintainability, and scalability.


# State and Hooks in React

## Introduction

React applications become interactive by using State and Hooks. State stores data that can change during the execution of the application. Hooks are special functions that allow functional components to use React features such as state, lifecycle methods, and references.

React Hooks were introduced in React 16.8 and are now the preferred way of writing React applications.

---

# What is State?

State is a built-in object that stores information about a component.

Whenever the state changes, React automatically updates the user interface.

Examples of State:

- Counter Value
- User Details
- Login Status
- Shopping Cart
- Form Input

State makes the application dynamic.

---

# Features of State

- Stores dynamic data.
- Managed inside the component.
- Can be updated.
- Re-renders the component when changed.
- Improves user interaction.

---

# useState Hook

useState() is the most commonly used React Hook.

It is used to create and update state inside a functional component.

Example

```jsx
const [count, setCount] = useState(0);
```

Here,

count → Current value

setCount → Function used to update the value

0 → Initial value

---

# Updating State

State is updated using the setter function.

Example

```jsx
setCount(count + 1);
```

Whenever the value changes, React automatically updates the screen.

---

# Multiple States

A component can have multiple state variables.

Example

```jsx
const [name, setName] = useState("");

const [age, setAge] = useState(20);

const [city, setCity] = useState("Hyderabad");
```

Each state variable manages different information.

---

# What are Hooks?

Hooks are built-in React functions that allow functional components to use React features.

Some commonly used Hooks are:

- useState()
- useEffect()
- useRef()
- useMemo()
- useCallback()
- useContext()

---

# useEffect Hook

useEffect() is used to perform side effects.

Examples:

- Calling APIs
- Fetching Data
- Timers
- Event Listeners

Example

```jsx
useEffect(() => {

console.log("Component Loaded");

}, []);
```

The empty dependency array means the effect runs only once after the component is rendered.

---

# Dependency Array

The dependency array controls when useEffect() executes.

Example

```jsx
useEffect(() => {

console.log("Updated");

}, [count]);
```

Whenever count changes, the effect executes again.

---

# useRef Hook

useRef() stores a value without causing the component to re-render.

Uses:

- Access HTML elements
- Store previous values
- Focus input fields

Example

```jsx
const inputRef = useRef();
```

---

# useMemo Hook

useMemo() improves performance by storing the result of expensive calculations.

Instead of recalculating every time, React reuses the stored value until the dependencies change.

Example

```jsx
const total = useMemo(() => calculateTotal(), []);
```

---

# useCallback Hook

useCallback() stores a function instead of recreating it every time the component renders.

It is mainly used to improve performance.

Example

```jsx
const handleClick = useCallback(() => {

console.log("Clicked");

}, []);
```

---

# useContext Hook

useContext() allows data to be shared between multiple components without passing props manually.

It is useful for:

- User Login
- Theme
- Language
- Application Settings

---

# Custom Hooks

React allows developers to create their own Hooks.

Custom Hooks help reuse logic across multiple components.

Example

```jsx
function useCounter()
{
}
```

Custom Hooks always start with the word "use".

---

# Rules of Hooks

- Call Hooks only inside React functional components.
- Do not call Hooks inside loops.
- Do not call Hooks inside conditions.
- Always call Hooks at the top level.
- Custom Hooks should begin with "use".

---

# State vs Props

| State | Props |
|--------|--------|
| Managed inside component | Passed from parent |
| Can change | Read-only |
| Dynamic | Static from child perspective |
| Causes re-render | Used for communication |

---

# React Lifecycle using Hooks

The useEffect() Hook replaces many lifecycle methods.

Component Mount

↓

useEffect()

↓

Component Update

↓

useEffect()

↓

Component Unmount

↓

Cleanup Function

Example

```jsx
useEffect(() => {

return () => {

console.log("Component Removed");

};

}, []);
```

---

# Advantages of Hooks

- Less code
- Easy to understand
- Reusable logic
- Better readability
- Improved performance
- Functional components only

---

# Best Practices

- Keep state as small as possible.
- Use useEffect() only when required.
- Avoid unnecessary state variables.
- Use useMemo() for expensive calculations.
- Use useCallback() for reusable functions.
- Create custom Hooks for repeated logic.

---

# Summary

State and Hooks are essential concepts in React. State stores dynamic information, while Hooks allow functional components to use features such as state management, lifecycle methods, references, and performance optimization. Using Hooks makes React applications cleaner, more reusable, and easier to maintain.


# Routing in React

## Introduction

Routing is used to navigate between different pages in a React application without reloading the browser. React uses the React Router library to implement navigation in Single Page Applications (SPAs).

Instead of loading a new HTML page every time, React updates only the required component, making navigation faster and improving the user experience.

---

# What is React Router?

React Router is a library that enables navigation between different components in a React application.

It allows users to move from one page to another without refreshing the browser.

Examples:

- Home
- About
- Contact
- Login
- Dashboard

---

# Why do we use Routing?

Routing provides several advantages:

- Easy navigation
- Faster page loading
- Better user experience
- No full page refresh
- Supports nested routes
- URL management

---

# Installing React Router

React Router can be installed using npm.

Command:

```
npm install react-router-dom
```

---

# BrowserRouter

BrowserRouter is the main router component.

It keeps the UI synchronized with the browser URL.

Example

```jsx
<BrowserRouter>

<App />

</BrowserRouter>
```

Normally, BrowserRouter wraps the entire application.

---

# Routes

Routes is used to group multiple Route components.

Example

```jsx
<Routes>

<Route path="/" element={<Home />} />

<Route path="/about" element={<About />} />

</Routes>
```

---

# Route

Route defines the path and the component that should be displayed.

Example

```jsx
<Route

path="/login"

element={<Login />}

/>
```

When the URL becomes

```
/login
```

the Login component is displayed.

---

# Link

The Link component is used for navigation.

Example

```jsx
<Link to="/about">

About

</Link>
```

Unlike HTML anchor tags, Link does not refresh the browser.

---

# NavLink

NavLink works like Link but also highlights the currently active page.

Example

```jsx
<NavLink to="/home">

Home

</NavLink>
```

Useful for navigation menus.

---

# useNavigate Hook

useNavigate() is used for programmatic navigation.

Example

```jsx
const navigate = useNavigate();

navigate("/dashboard");
```

Commonly used after successful login.

---

# Route Parameters

Route parameters allow passing values through the URL.

Example

```
/product/10
```

Route

```jsx
<Route

path="/product/:id"

element={<Product />}

/>
```

The Product component receives the value of **id**.

---

# useParams Hook

useParams() retrieves route parameters.

Example

```jsx
const { id } = useParams();
```

If the URL is

```
/product/10
```

then

```
id = 10
```

---

# Nested Routing

Nested Routing allows routes inside other routes.

Example

```
Dashboard

↓

Profile

↓

Settings

↓

Orders
```

This helps organize large applications.

---

# Protected Routes

Protected Routes restrict access to authorized users.

Example

```
Dashboard

Admin Panel

Profile
```

If the user is not logged in, the application redirects to the Login page.

---

# 404 Page

A 404 page is displayed when the user enters an invalid URL.

Example

```jsx
<Route

path="*"

element={<NotFound />}

/>
```

---

# Routing Flow

```
User Clicks Link

↓

React Router

↓

Matches Route

↓

Displays Component
```

---

# Advantages of React Router

- Fast navigation
- No page refresh
- Clean URLs
- Better user experience
- Easy route management
- Supports nested routes
- Supports protected routes

---

# Best Practices

- Keep routes organized.
- Use meaningful URL names.
- Protect sensitive pages.
- Avoid duplicate routes.
- Create a separate routing file for large projects.
- Use NavLink for navigation menus.
- Display a custom 404 page.

---

# Summary

React Router provides navigation in React applications without reloading the browser. Components like BrowserRouter, Routes, Route, Link, and NavLink simplify navigation, while Hooks such as useNavigate() and useParams() make routing dynamic and user-friendly. Proper routing improves application performance, organization, and user experience.

# API Integration in React

## Introduction

Most React applications need data from a server. Instead of storing all the information inside the application, React communicates with backend APIs to retrieve and update data. API Integration allows the frontend and backend to work together.

React can communicate with APIs using the Fetch API or Axios.

---

# What is an API?

API stands for Application Programming Interface.

An API allows two applications to exchange information.

Example:

React Application

↓

ASP.NET Core Web API

↓

SQL Server Database

The React application sends a request, and the server returns the required data.

---

# REST API

REST (Representational State Transfer) is the most commonly used architecture for building Web APIs.

REST APIs communicate using HTTP methods.

Common HTTP Methods:

- GET
- POST
- PUT
- DELETE

Most REST APIs exchange data in JSON format.

---

# JSON

JSON stands for JavaScript Object Notation.

It is a lightweight format used to exchange data.

Example

```json
{
    "id":1,
    "name":"Laptop",
    "price":65000
}
```

React automatically converts JSON into JavaScript objects.

---

# Fetch API

Fetch API is a built-in JavaScript function used to communicate with APIs.

Example

```javascript
fetch("https://example.com/api/products")
```

It returns a Promise.

Advantages

- Built into JavaScript
- No installation required
- Easy to use

---

# Axios

Axios is a popular library used for API communication.

Installation

```
npm install axios
```

Example

```javascript
axios.get("https://example.com/api/products");
```

Advantages

- Cleaner syntax
- Automatic JSON conversion
- Better error handling
- Supports request interceptors

---

# GET Request

GET retrieves data from the server.

Example

```javascript
fetch("/api/products")
```

or

```javascript
axios.get("/api/products")
```

Use Cases

- Display Products
- Display Students
- Display Employees

---

# POST Request

POST creates a new record.

Example

```javascript
axios.post("/api/products", product);
```

Use Cases

- Register User
- Add Product
- Create Order

---

# PUT Request

PUT updates an existing record.

Example

```javascript
axios.put("/api/products/1", product);
```

Use Cases

- Update Student
- Update Product
- Update Employee

---

# DELETE Request

DELETE removes a record.

Example

```javascript
axios.delete("/api/products/1");
```

Use Cases

- Delete Product
- Delete User
- Delete Employee

---

# Async and Await

API calls take time to complete.

JavaScript uses async and await to handle asynchronous operations.

Example

```javascript
async function loadData()
{
    const response = await fetch("/api/products");
}
```

Advantages

- Cleaner code
- Easy to read
- Better error handling

---

# Error Handling

Sometimes API requests fail.

Reasons:

- Network issues
- Server errors
- Invalid URL
- Unauthorized access

React applications should handle errors properly.

Example

```javascript
try
{
}
catch(error)
{
    console.log(error);
}
```

---

# Loading State

Fetching data takes time.

A loading message improves user experience.

Example

```
Loading...

Please wait...
```

Once data is received, React displays the actual content.

---

# API Flow

```
User

↓

React Application

↓

HTTP Request

↓

ASP.NET Core Web API

↓

Database

↓

JSON Response

↓

React UI
```

---

# Common Response Status Codes

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

# Fetch API vs Axios

| Fetch API | Axios |
|------------|--------|
| Built into JavaScript | External Library |
| Manual JSON conversion | Automatic JSON conversion |
| Basic error handling | Better error handling |
| Lightweight | More features |

---

# Best Practices

- Keep API URLs organized.
- Use async and await.
- Handle errors properly.
- Display loading indicators.
- Avoid duplicate API calls.
- Store reusable API logic in services.
- Validate server responses.

---

# Real-Time Example

Online Shopping Application

React Frontend

↓

Product API

↓

ASP.NET Core Backend

↓

SQL Server

The frontend requests products, the backend retrieves them from the database, and the data is displayed to the user.

---

# Summary

API Integration is an essential part of React development. React communicates with backend applications using REST APIs. Developers commonly use Fetch API or Axios to send HTTP requests and receive JSON responses. Proper error handling, loading indicators, and asynchronous programming help build responsive and user-friendly applications.


# React Best Practices

## Introduction

Writing a React application is not only about making it work, but also about making the code clean, reusable, and easy to maintain. Following best practices helps improve code quality, application performance, and teamwork in real-world projects.

---

# Organize the Project Structure

A well-organized project is easier to understand and maintain.

Example Folder Structure

```
src

├── components

├── pages

├── services

├── hooks

├── assets

├── styles

├── App.jsx

└── main.jsx
```

Advantages

- Easy navigation
- Better maintenance
- Improved readability

---

# Use Reusable Components

Instead of writing the same code multiple times, create reusable components.

Example

Instead of creating several buttons,

create one Button component and reuse it throughout the application.

Benefits

- Less code duplication
- Easier maintenance
- Consistent UI

---

# Keep Components Small

Each component should perform only one task.

Example

Good

```
Navbar

Footer

ProductCard

LoginForm
```

Bad

```
DashboardWithEverything
```

Small components are easier to understand and test.

---

# Use Functional Components

React recommends using Functional Components instead of Class Components.

Advantages

- Simple syntax
- Supports Hooks
- Better readability
- Easier testing

---

# Use Hooks Properly

React Hooks should be used correctly.

Examples

- useState()
- useEffect()
- useRef()
- useMemo()
- useCallback()

Rules

- Call Hooks only at the top level.
- Do not call Hooks inside loops.
- Do not call Hooks inside conditions.

---

# Keep State Minimal

Store only necessary information inside state.

Avoid storing duplicate data.

Example

Store

```
User Name
```

Instead of storing

```
User Name

User Age

User Details

User Name Again
```

This keeps state management simple.

---

# Use Meaningful Names

Choose meaningful names for:

- Components
- Variables
- Functions
- Files

Good Examples

```
ProductCard

StudentList

calculateTotal()

fetchProducts()
```

Bad Examples

```
abc

temp

x

data1
```

Meaningful names improve readability.

---

# Avoid Code Duplication

If the same logic appears multiple times,

move it into

- Components
- Custom Hooks
- Utility Functions

This makes maintenance easier.

---

# Use Environment Variables

Sensitive information should never be hardcoded.

Store values such as

- API URLs
- Secret Keys
- Configuration Settings

inside environment files.

Example

```
.env
```

Benefits

- Better security
- Easy configuration
- Cleaner code

---

# Error Handling

Applications should handle errors gracefully.

Instead of crashing,

display meaningful error messages.

Example

```
Unable to load data.

Please try again later.
```

Good error handling improves user experience.

---

# Performance Optimization

Large React applications should be optimized.

Common techniques

- React.memo()
- useMemo()
- useCallback()
- Lazy Loading
- Code Splitting

These reduce unnecessary rendering.

---

# Lazy Loading

Lazy Loading loads components only when needed.

Advantages

- Faster initial loading
- Reduced bundle size
- Better performance

---

# Code Splitting

Code Splitting divides a large application into smaller JavaScript files.

Only the required code is loaded.

Benefits

- Faster loading
- Better user experience
- Reduced memory usage

---

# API Calls

Best Practices

- Use Axios or Fetch consistently.
- Keep API logic inside service files.
- Handle loading states.
- Handle errors.
- Avoid unnecessary requests.

---

# Security Best Practices

- Validate user input.
- Do not expose secret keys.
- Use HTTPS.
- Sanitize user-generated content.
- Protect APIs using authentication.

---

# Testing

React applications should be tested before deployment.

Common testing types

- Unit Testing
- Integration Testing
- Component Testing

Popular tools

- Jest
- React Testing Library

---

# Git Best Practices

- Write meaningful commit messages.
- Push code regularly.
- Use feature branches.
- Review code before merging.

Example

Good Commit

```
Added Product List Component
```

Bad Commit

```
Update
```

---

# Coding Standards

- Use proper indentation.
- Write comments only when necessary.
- Remove unused code.
- Follow consistent formatting.
- Keep files organized.

---

# Deployment

React applications can be deployed using

- Vercel
- Netlify
- GitHub Pages
- Azure
- AWS

Choose the platform based on project requirements.

---

# Real-Time Example

Online Shopping Application

Components

- Navbar
- Product List
- Product Card
- Cart
- Checkout

Services

- Product API
- User API

Hooks

- useState
- useEffect

Routing

- Home
- Products
- Cart
- Orders

This structure keeps the application organized and easy to maintain.

---

# Summary

Following React best practices helps developers build clean, scalable, and maintainable applications. Organizing folders properly, creating reusable components, optimizing performance, handling errors, and writing readable code are essential for professional React development.