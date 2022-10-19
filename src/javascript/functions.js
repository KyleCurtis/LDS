/*
                   _____                 _   _
                  |  ___|   _ _ __   ___| |_(_) ___  _ __  ___
                  | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
                  |  _|| |_| | | | | (__| |_| | (_) | | | \__ \
                  |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
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

// - Parameter is the value given when declaring the function (message).
function lesson(language, chapter) { 
    console.log('This is for' + language + chapter);
}

// - Argument is the value assigned to the parameter ('Hello!').
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
    - a function that returns objects
------------------------------------------------------------------------------*/

function createShape(radius) {
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
FUNCTION NOTES: 
--------------------------------------------------------------------------------
- If a value is not given for an argument, it will become 'undefined'.

- The 'return' keyword is used to return a value from a function calculation.

- Factory Functions are functions that return new objects.
------------------------------------------------------------------------------*/