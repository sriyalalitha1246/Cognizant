# SOLID Principles

## Introduction

SOLID is a set of five object-oriented design principles that help developers create software that is easy to understand, maintain, extend and test.

SOLID was introduced by Robert C. Martin (Uncle Bob).

The five principles are:

1. Single Responsibility Principle (SRP)
2. Open Closed Principle (OCP)
3. Liskov Substitution Principle (LSP)
4. Interface Segregation Principle (ISP)
5. Dependency Inversion Principle (DIP)

---

## 1. Single Responsibility Principle (SRP)

### Definition

A class should have only one responsibility or one reason to change.

### Bad Example

java
class Employee {

    void calculateSalary(){}

    void saveEmployee(){}

    void sendEmail(){}
}


This class is handling multiple responsibilities.

### Good Example

```java
class Employee {

    String name;

    Employee(String name){

        this.name = name;
    }
}

class SalaryService {

    void calculateSalary(){

        System.out.println("Salary calculated");
    }
}

class EmailService {

    void sendEmail(){

        System.out.println("Email sent");
    }
}


### Advantages

* Easy to maintain
* Easy to modify
* Better code organization

---

## 2. Open Closed Principle (OCP)

### Definition

Software entities should be open for extension but closed for modification.

### Example

java
interface Shape {

    double area();
}

class Circle implements Shape {

    int radius = 5;

    public double area(){

        return 3.14 * radius * radius;
    }
}

class Rectangle implements Shape {

    int length = 10;

    int breadth = 5;

    public double area(){

        return length * breadth;
    }
}


### Advantages

* New functionality can be added easily
* Existing code remains unchanged
* Reduces bugs

---

## 3. Liskov Substitution Principle (LSP)

### Definition

Objects of a child class should be replaceable with objects of the parent class without affecting program correctness.

### Example

java
class Bird {

    void move(){

        System.out.println("Bird moving");
    }
}

class Sparrow extends Bird {

    void fly(){

        System.out.println("Sparrow flying");
    }
}


### Advantages

* Better inheritance design
* Improves code reliability

---

## 4. Interface Segregation Principle (ISP)

### Definition

Clients should not be forced to implement methods they do not use.

### Example

java
interface Workable {

    void work();
}

interface Eatable {

    void eat();
}

class Human implements Workable, Eatable {

    public void work(){

        System.out.println("Human working");
    }

    public void eat(){

        System.out.println("Human eating");
    }
}

class Robot implements Workable {

    public void work(){

        System.out.println("Robot working");
    }
}


### Advantages

* Smaller interfaces
* Better flexibility
* Easier maintenance

---

## 5. Dependency Inversion Principle (DIP)

### Definition

High-level modules should not depend on low-level modules. Both should depend on abstractions.

### Example

java
interface Engine {

    void start();
}

class PetrolEngine implements Engine {

    public void start(){

        System.out.println("Engine started");
    }
}

class Car {

    Engine engine;

    Car(Engine engine){

        this.engine = engine;
    }

    void drive(){

        engine.start();

        System.out.println("Car moving");
    }
}


### Advantages

* Loose coupling
* Easy to extend
* Better testing

---

## Conclusion

SOLID principles help developers build maintainable, scalable and reusable software systems. Applying these principles improves code quality and reduces future maintenance efforts.
