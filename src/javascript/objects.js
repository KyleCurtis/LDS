/*
                          ___  _     _           _
                         / _ \| |__ (_) ___  ___| |_ ___
                         | | | | '_ \| |/ _ \/ __| __/ __|
                         | |_| | |_) | |  __/ (__| |_\__ \
                         \___/|_.__// |\___|\___|\__|___/
                                  |__/
--------------------------------------------------------------------------------

<declaration> <objectName> = {key:value,}

|-----------| = Object Property (seperated by commas)
 key: value,

|---| = Object Property Name (identifier)
 key

|-----| = Object Property Value
 value

--------------------------------------------------------------------------------
OBJECT BASICS
------------------------------------------------------------------------------*/

const person = {};                  // literal object
const newPerson = new Object();     // constructor object

// OBJECT LITERAL EXAMPLE
const player = {            // object example
    name: 'player_01',      // values are seperated with a comma
    level: 32,              // and can end with a trailing comma

    // identifiers can also contain spaces and special characters if
    // it is surrounded by single/double quotes.
    // bracket notation is required to access these identifiers
    "this value": null,
};

/*------------------------------------------------------------------------------
ADDING AND REMOVING OBJECT PROPERTIES
------------------------------------------------------------------------------*/

player.healthLevel = 100;   // adds player property via dot-notation

delete player.manaLevel;    // use the 'delete' keyword to remove a property

// BRACKET NOTATION
player['manaLevel'] = 100;      // you can also add/delete w/ bracket notation

player["this value"] = 1;       // this method is required for identifiers w/
                                // spaces or special characters

/*------------------------------------------------------------------------------
NESTED OBJECTS
------------------------------------------------------------------------------*/

const groceries = {
    foods: {
        food_list: ['bacon', 'eggs', 'potatoes'],
    },

    drinks: {
        drink_list: ['water', 'coffee', 'milk', 'tea'],

        alcohol: {
            beer: 'IPA',
        },
    },

    supplies: {
        supply_list: ['paper towels', 'trash bags', 'toilet paper'],
    },
};


/*------------------------------------------------------------------------------
OBJECTS NOTES:
--------------------------------------------------------------------------------

- An object is a collection of {key: value} pairs.

- An object value can be most data types and structures.

- If the 'key' and 'value' are the same name within an object, you can just
  reference the key alone. For example: number: number === number.

------------------------------------------------------------------------------*/
