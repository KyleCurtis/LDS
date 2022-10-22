/*
             ____        _          _____                      
            |  _ \  __ _| |_ __ _  |_   _|   _ _ __   ___  ___ 
            | | | |/ _` | __/ _` |   | || | | | '_ \ / _ \/ __|
            | |_| | (_| | || (_| |   | || |_| | |_) |  __/\__ \
            |____/ \__,_|\__\__,_|   |_| \__, | .__/ \___||___/
                                         |___/|_|              
------------------------------------------------------------------------------*/

/* ------------------------------------------------------------------------------
LITERALS
-------------------------------------------------------------------------------*/
let stringLiteral = "JavaScript";   // string literal
let numberLiteral = 32;             // number literal
let bigInteger = 100n;              // big integer
let booleanLiteral = true;          // boolean literal


// UNDEFINED & NULL TYPE
let highScore = undefined;      // UNDEFINED TYPE
let userScore = null;           // NULL TYPE

/* ------------------------------------------------------------------------------
CONSTRUCTORS
-------------------------------------------------------------------------------*/
let StringConstructor = new String('JavaScript');   // string constructor
let NumberConstructor = new Number(32);             // number constructor
let BooleanConstructor = new Boolean(true);         // boolean constructor

/* ------------------------------------------------------------------------------
DYNAMIC TYPING & TYPEOF
-------------------------------------------------------------------------------*/

console.log(typeof(highScore)); // GET THE DATA TYPE OF A VARIABLE


highScore = 100; // CHANGE THE TYPE FROM 'UNDEFINED' TO 'NUMBER'
console.log(typeof(highScore))


/*------------------------------------------------------------------------------
DATA TYPE NOTES: 
--------------------------------------------------------------------------------
- 
------------------------------------------------------------------------------*/