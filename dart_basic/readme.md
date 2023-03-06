# Flutter Forward Extended: Dart Basics

[Complete code lab for Dart Basics](https://dart.dev/samples#classes)

## Contents

- Dart Data Types, Variables, and Operators
- Dart Control Flow Statements
- Dart Functions
- Dart Classes and Objects
- Dart Inheritance
- Dart final vs const
- Dart Null Safety

## Dart Data Types, Variables, and Operators

### Dart Data Types

- Dart is a strongly typed language. This means that the type of a variable is known at compile time. Dart is also a static type language, which means that the type of a variable is known at compile time. Dart is also a static type language, which means that the type of a variable is known at compile time.
  
  list of data types in dart
  - Num(int, double)
  - String
  - Boolean
  - List
  - Map

### Dart Variables

Even in type-safe Dart code, most variables don’t need explicit types, thanks to type inference:

```
var <variable_name> = <value>;
```

### Dart Operators

- Arithmetic Operators
- Relational Operators
- Logical Operators
- Bitwise Operators
- Assignment Operators

## Dart Control Flow Statements
- if else
- switch case
- for loop
- while loop
- do while loop
- for in loop
- for each loop

## Dart Functions
- Function
- Arrow Function

## Dart Final vs Const
- final: A final variable can be set only once; a final top-level or class variable is initialized the first time it’s used.
- const: A const variable is implicitly final, but a final variable isn’t necessarily const. A const variable is a compile-time constant.
```
final int a;
const int b;
//Correct 
a = 10;
//Incorrect, won't compile
b = 10;

```
### Dart Null Safety

- Null safety is a sound null checking mode that Dart has had since Dart 2.12. It’s a compile-time error to pass a null value to a variable that has a non-nullable type. This is a big improvement over Dart’s legacy mode, which allows null values to flow into non-nullable types.

- Null Aware Operator

[Complete code lab for Dart Basics](https://dart.dev/samples#classes)