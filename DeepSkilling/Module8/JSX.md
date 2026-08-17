# JSX (JavaScript XML)

## Introduction

JSX stands for JavaScript XML. It is a syntax extension of JavaScript that allows developers to write HTML-like code inside JavaScript. JSX makes React code easier to read and write.

Although JSX looks like HTML, it is converted into JavaScript by Babel before the browser executes it.

---

# What is JSX?

JSX is used to describe how the user interface should look.

Instead of writing JavaScript functions to create HTML elements, developers can directly write HTML-like syntax.

Example:

```jsx
const element = <h1>Welcome to React</h1>;
```

---

# Why do we use JSX?

JSX provides several benefits:

- Easy to read
- Easy to write
- Reduces code complexity
- Improves code readability
- Supports JavaScript expressions
- Better developer experience

---

# JSX Syntax

A JSX element must have only one parent element.

Correct

```jsx
return (
    <div>
        <h1>Hello</h1>
        <p>Welcome</p>
    </div>
);
```

Incorrect

```jsx
return (
    <h1>Hello</h1>
    <p>Welcome</p>
);
```

---

# JavaScript Expressions in JSX

JavaScript expressions are written inside curly braces.

Example

```jsx
const name = "Likhitha";

return <h1>Hello {name}</h1>;
```

Output

```
Hello Likhitha
```

---

# Attributes in JSX

JSX attributes are similar to HTML attributes.

However, some names are different.

Example

HTML

```html
class
```

JSX

```jsx
className
```

Example

```jsx
<div className="container">
</div>
```

---

# Rendering Elements

React displays JSX elements using ReactDOM.

Example

```jsx
const element = <h2>Welcome</h2>;
```

React renders the element inside the browser.

---

# Fragments

Sometimes we don't want extra HTML elements.

React provides Fragments.

Example

```jsx
<>
    <h1>React</h1>
    <p>Learning JSX</p>
</>
```

Fragments avoid unnecessary div tags.

---

# Conditional Rendering

React allows displaying content based on conditions.

Example

```jsx
const isLoggedIn = true;

return (
    <div>
        {isLoggedIn ? <h2>Welcome</h2> : <h2>Please Login</h2>}
    </div>
);
```

Output

```
Welcome
```

if

```
isLoggedIn = true
```

---

# Lists in JSX

Lists are displayed using the map() function.

Example

```jsx
const fruits = ["Apple","Orange","Mango"];

return (
<ul>
{
fruits.map((fruit)=>(
<li>{fruit}</li>
))
}
</ul>
);
```

Output

```
Apple

Orange

Mango
```

---

# Keys

Whenever we display lists, every item should have a unique key.

Example

```jsx
<li key={fruit.id}>
```

Keys help React update the UI efficiently.

---

# Event Handling

React handles events similar to JavaScript.

Example

```jsx
<button onClick={showMessage}>
Click Me
</button>
```

Some common events

- onClick
- onChange
- onSubmit
- onMouseOver
- onKeyDown

---

# JSX vs HTML

| HTML | JSX |
|------|------|
| class | className |
| for | htmlFor |
| Uses HTML | Uses JavaScript |
| Static | Dynamic |

---

# Advantages of JSX

- Easy to understand
- Improves readability
- Supports JavaScript expressions
- Better performance
- Less code
- Faster UI development

---

# Best Practices

- Keep JSX simple.
- Use meaningful variable names.
- Use Fragments when needed.
- Use unique keys for lists.
- Avoid writing large JSX blocks.
- Keep components reusable.

---

# Summary

JSX is a syntax extension used in React for writing user interfaces. It combines the simplicity of HTML with the power of JavaScript. JSX makes code easier to read, supports expressions, conditional rendering, event handling, and list rendering, making React applications more organized and maintainable.

# Advanced React Concepts

## Conditional Rendering

Conditional Rendering displays different UI based on a condition.

Example

```jsx
{
isLoggedIn?

<h2>Welcome</h2>

:

<h2>Please Login</h2>
}
```

---

# Preventing Component Rendering

Sometimes a component should not display.

Example

```jsx
if(!show)

return null;
```

React skips rendering the component.

---

# Lists

Lists are displayed using map().

Example

```jsx
students.map(student=>

<li>{student.name}</li>

)
```

---

# Keys

Keys uniquely identify list items.

Example

```jsx
<li key={student.id}>
```

Keys improve rendering performance.

---

# Calling APIs

React communicates with servers using APIs.

Methods

- Fetch API
- Axios
- XMLHttpRequest

---

# Fetch API

```javascript
fetch("/api/products")
```

Built into JavaScript.

---

# Axios

```javascript
axios.get("/api/products")
```

Provides better error handling and cleaner syntax.

---

# XMLHttpRequest

Older JavaScript method for making HTTP requests.

Example

```javascript
const xhr=new XMLHttpRequest();

xhr.open("GET","/api/products");

xhr.send();
```

Although Fetch and Axios are preferred today, XMLHttpRequest is still found in older applications.

---

# Comparison

| Feature | Fetch | Axios | XMLHttpRequest |
|----------|--------|--------|----------------|
| Built-in | Yes | No | Yes |
| Easy Syntax | Yes | Yes | No |
| Promise Support | Yes | Yes | No |
| JSON Handling | Manual | Automatic | Manual |

---

# Summary

React supports conditional rendering, lists, keys, and multiple ways of communicating with APIs. Fetch API and Axios are the preferred choices for modern React applications, while XMLHttpRequest is mainly used in legacy systems.