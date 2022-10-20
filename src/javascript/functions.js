/*
                   _____                 _   _
                  |  ___|   _ _ __   ___| |_(_) ___  _ __  ___
                  | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
                  |  _|| |_| | | | | (__| |_| | (_) | | | \__ \
                  |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
--------------------------------------------------------------------------------

                         function <functionName>() {}

------------------------------------------------------------------------------*/

// OUPUT ONLY FUNCTION 
function greet() {
    console.log('hello');
}

greet(); // CALLING THE FUNCTION


/*------------------------------------------------------------------------------
TASK FUNCTION
    - a function that perfoms a task
------------------------------------------------------------------------------*/

// - parameter is the value given when declaring the function (message).
function lesson(language, chapter) { 
    console.log('This is for' + language + chapter);
}

// - argument is the value assigned to the parameter ('Hello!').
new_greeting('JavaScript', 'functions');


/*------------------------------------------------------------------------------
CALCULATION FUNCTION
    - a function that returns calculations
------------------------------------------------------------------------------*/

function square(number) {
    return number * number; // RETURN
}

let number = square(2);

console.log(number);


/*------------------------------------------------------------------------------
FACTORY FUNCTION
    - style convention: camelCase
    - a function that returns an object
------------------------------------------------------------------------------*/

function createShape(radius) {  // camelCase
    return {

        // SAME AS: 'radius: radius'
        // The value 'radius' is referenced to the function argument
        radius,

        // SAME AS:
        // draw: function() {console.log('draw');}
        draw() {
            console.log('draw');
        },
    };
}


/*------------------------------------------------------------------------------
CONSTRUCTOR FUNCTION
    - style convention: PascalCase
    - a function that requires the 'new' operator
    - uses 'this' keyword instead of returning an object via factory function
------------------------------------------------------------------------------*/

function Circle(radius) {
    this.radius = radius;       // 'this' references the parent object
    this.draw = function() {
        console.log('draw');
    }
}

const circle = new Circle(1);


/*------------------------------------------------------------------------------
KEY FUNCTION NOTES: 
--------------------------------------------------------------------------------
- If a value is not given for an argument, it will become 'undefined'.

- The 'return' keyword is used to return a value from a function calculation.

- Factory Functions are functions that return new objects.
------------------------------------------------------------------------------*/