// JavaScript is dunamic typing language, by that same variable can get different data type.

var str = 'Hello';
var num = 1;
var bool = true;

var foo = 'string';
console.log(typeof foo); // string
foo = 1;
console.log(typeof foo); // number

// Javascript Data type

// 1. Javascript Data type _ primitive data type & object type, reference type

// 1-1. Primitive data type : immutable value, memory: stack segment

// 1-1-1. Boolean : logical type true or false / empty string, null, undifined, 0 = false

var foo = true;
var bar = false;

// 1-1-2. null : intentional absance of any object value. null is not an identifier for a property of the global object, like undefined can be.

var foo = 'lee';
foo = null; // remove value
console.log(typeof foo); //object ===> when checking the data type if it is null, instead of using typeof use identity operators(===).
console.log(foo === null); //true

// 1-1-3. undefined : global object, a variable that has not been assigned a value & a method or statement if the variable that is being evaluated does not have an assigned value.

var foo;
console.log(foo); // undefined

var bar = {
  name: 'lee'
};
console.log(bar.baz); // undefined

// 1-1-4. number : If the argument cannot be converted into a number, it returns NaN. also it has + / - infinity

var x = 10;
var y = 10.12;
var z = -20;
var foo = 42 / -0 ; // -infinity
console.log (typeof foo); // number
var bar = 1 * 'string';
console.log (bar); // NaN
console.log(typeof bar); // number

// 1-1-5. string : holding data that can be represented in text form. For character access using bracket notation, attempting to delete or assign a value to these properties will not succeed. ===> immutable.

var str = 'string';
str[0] = 'R';
console.log(str); // string

var str = 'String';
console.log(str) // String

// 1-1-6. string(ES6_new) : Optional, string. A description of the symbol which can be used for debugging but not to access the symbol itself.

var sym1 = Symbol();
var sym2 = Symbol('foo');
var sym3 = Symbol('foo');

Symbol('foo') === Symbol('foo'); // false

// 1-2. Object type: accapt primitive type all javascript is based on object type. reference type, memory in the heap segment.

// Javascript Control Flow statement: Can be use to incorporate a great deal of interactivity in application.

// 1. Block statement: the basic statement, used to group statements. delimited by a pair of curly brakets.

//function
function foo() {
  var x = 1, y = 2;
  console.log(x + y);
}
foo(); 

//object literal
var obj = {
  x: 1,
  y: 2
};
console.log(obj.x + obj.y);

// control flow statement : e.g. if, for, while 
var x = 0;
while (x < 10) {
  x++;
}
console.log(x);







