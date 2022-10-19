/* 
                   ___                       _
                  / _ \ _ __   ___ _ __ __ _| |_ ___  _ __ ___
                 | | | | '_ \ / _ \ '__/ _` | __/ _ \| '__/ __|
                 | |_| | |_) |  __/ | | (_| | || (_) | |  \__ \
                  \___/| .__/ \___|_|  \__,_|\__\___/|_|  |___/
                       |_|
------------------------------------------------------------------------------*/

let x = 10;
let y = 5;



/*------------------------------------------------------------------------------
MATHMATICAL & ASSIGNMENT OPERATORS: 
------------------------------------------------------------------------------*/

// MATHMATICAL OPERATORS
console.log(x + y);     // ADDITION (SUM)
console.log(x - y);     // SUBTRACTION (DIFFERENCE)
console.log(x * y);     // MULTIPLICATION
console.log(x / y);     // DIVISION
console.log(x % y);     // MODULUS (REMAINDER AFTER DIVISION)
console.log(x ** y);    // POWER OF (x^y)

// ASSIGNMENT OPERATORS ()
x += 1;     // SAME AS: (x = x + 1)
x -= 1;     // SAME AS: (x = x - 1)
x *= 1;     // SAME AS: (x = x * 1)
x /= 1;     // SAME AS: (x = x / 1)
x %= 1;     // SAME AS: (x = x % 1)
x **= 1;    // SAME AS: (x = x ** 1)



/*------------------------------------------------------------------------------
INCREMENT/DECREMENT OPERATORS: 
------------------------------------------------------------------------------*/

console.log(++x);   // THIS WILL INCREMENT BEFORE PRINTING X
console.log(x);     // RESULT = 11

console.log(--x);   // THIS WILL DECREMENT BEFORE PRINTING X
console.log(x);     // RESULT = 10

console.log(x++);   // THIS WILL MAKE X = 11 AFTER PRINTING X
console.log(x);     // RESULT = 11

console.log(x--);   // THIS WILL MAKE X = 10 AFTER PRINTING X
console.log(x);     // RESULT = 10



/*------------------------------------------------------------------------------
COMPARISON OPERATORS: 
------------------------------------------------------------------------------*/

console.log(x > 1);     // GREATER THAN (>)
console.log(x < 1);     // LESS THAN (<)

console.log(x >= 1);    // GREATER THAN OR EQUAL TO (>=)
console.log(x <= 1);    // LESS THAN OR EQUAL TO (<=)

// EQUALITY OPERATORS
console.log(x === 1);   // EQUAL TO (STRICT) 
console.log(x !== 1);   // NOT EQUAL TO (STRICT)

console.log(x == 1);    // EQUAL TO (LOOSE)
console.log(x != 1);    // NOT EQUAL TO (LOOSE)


/*------------------------------------------------------------------------------
TERNARY (CONDITIONAL) OPERATORS: 
------------------------------------------------------------------------------*/

let score = 101;
let highScore = score > 100 ? 'New record holder' : 'High score remains';

// IF SCORE IS GREATER THAN (>) HIGHSCORE, THEN (?), USE THE FIRST VALUE.
// OTHERWISE (:), USE THE SECOND VALUE.



/*------------------------------------------------------------------------------
LOGICAL OPERATORS: 
------------------------------------------------------------------------------*/

// BOOLEAN VALUES
console.log(true && true);      // && (BOTH VALUES NEED TO BE TRUE)
console.log(true || false);     // || (ONE VALUE NEEDS TO BE TRUE)

// NON-BOOLEAN VALUES
console.log(false || 'javascript');     // 'JavaScript' IS FIRST TRUE VALUE
console.log(false || 10 || 20);         // '10' IS THE FIRST TRUE VALUE


// FALSY VALUES (INTERPRETED AS FALSE IN COMPARISON)
// undefined, null, 0, false, '', NaN



/*------------------------------------------------------------------------------
BITWISE OPERATORS: 
------------------------------------------------------------------------------*/

// NEED TO ADD


/*------------------------------------------------------------------------------
OPERATOR NOTES: 
--------------------------------------------------------------------------------
- Comparison operators return a boolean (true / false).

- Strict equality (===) requires the type and value to be considered when 
comparing.

- Loose quality (==) requires the value to be the same, not the type.
------------------------------------------------------------------------------*/