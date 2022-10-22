/* 
                               _____
                              |  ___|__  _ __
                              | |_ / _ \| '__|
                              |  _| (_) | |
                              |_|  \___/|_|
------------------------------------------------------------------------------*/

// for (<initial expression>; <condition>; <increment expression>) {}

/*------------------------------------------------------------------------------
STANDARD FOR LOOP
------------------------------------------------------------------------------*/

for (let i = 0; i <= 5; i++) {
    console.log(i);
}

/*------------------------------------------------------------------------------
FOR-IN LOOP
    - provides access to the object keys only.
------------------------------------------------------------------------------*/

let cities = ['Seattle', 'Atlanta', 'Miami', 'Chicago'];

for (let city in cities) {
    console.log(city, cities[city]);
}


/*------------------------------------------------------------------------------
FOR-OF LOOP
    - provides access to the value(s) of the object key(s).
    - Can only be used with iterables (arrays, maps, etc.)
------------------------------------------------------------------------------*/

let colors = ['Blue', 'Purple', 'Pink', 'Green'];

for (let color of colors) {
    console.log(color);
}


/*------------------------------------------------------------------------------
FOR LOOP NOTES: 
--------------------------------------------------------------------------------
FOR LOOP
    - Used to complete repetitive tasks.

FOR-IN LOOP
    - Used to iterate over the an object's properties.

FOR-OF LOOP
    - Used to iterate over the elements in a data structure.

------------------------------------------------------------------------------*/