/*
                          _
                         / \   _ __ _ __ __ _ _   _ ___
                        / _ \ | '__| '__/ _` | | | / __|
                       / ___ \| |  | | | (_| | |_| \__ \
                      /_/   \_\_|  |_|  \__,_|\__, |___/
                                              |___/
------------------------------------------------------------------------------*/

let colors = ['red', 'green', 'blue'];  // INLINE ARRAY EXAMPLE

let planets = [     // MULTI-LINE ARRAY EXAMPLE
    'Mercury',      // INDEX: 0
    'Venus',        // INDEX: 1
    'Earth',        // INDEX: 2
    'Mars',         // INDEX: 3
    'Jupiter',      // INDEX: 4
    'Saturn',       // INDEX: 5
    'Uranus',       // INDEX: 6
    'Neptune'       // INDEX: 7
];


/*------------------------------------------------------------------------------
WORKING WITH ARRAYS
------------------------------------------------------------------------------*/

// GET THE TYPE OF ARRAY ('Object').
console.log(typeof(planets));

// GET THE LENGTH OF AN ARRAY
console.log(planets.length);

// APPEND A VALUE TO THE ARRAY
planets[8] = 'Pluto'; // 'Pluto' IS NOW ADDED TO THE ARRAY.

// GET THE ARRAY OBJECT VALUES.
console.log(planets);


/*------------------------------------------------------------------------------
ARRAY NOTES: 
--------------------------------------------------------------------------------
- An array is type 'Object' and the length & values are dynamic.

- Arrays are 0-index (the first value starts at 0).
------------------------------------------------------------------------------*/