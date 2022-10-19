/* 
         ____          _ _       _          __   ____
        / ___|_      _(_) |_ ___| |__      / /  / ___|__ _ ___  ___
        \___ \ \ /\ / / | __/ __| '_ \    / /  | |   / _` / __|/ _ \
         ___) \ V  V /| | || (__| | | |  / /   | |__| (_| \__ \  __/
        |____/ \_/\_/ |_|\__\___|_| |_| /_/     \____\__,_|___/\___|
------------------------------------------------------------------------------*/

let weather = 'sunny';

switch (weather) {
    case 'cloudy':
        console.log('The weather is cloudy today.');
        console.log('Bring an umbrella just in case.');
        break;
    
    case 'rainy':
        console.log('The weather is rainy today.');
        console.log('Bring a rain jacket when traveling outside.');
        break;

    case 'stormy':
        console.log('The weather is stormy today.');
        console.log('Pefect day to stay inside and write JavaScript!');
        break;
    
    case 'sunny':
        console.log('The weather is sunny today.');
        console.log('Pefect day to go outside.');
        break;
    
    default:
        console.log('The weather could not be determined!');
        break;
}


/*------------------------------------------------------------------------------
SWITCH / CASE NOTES: 
--------------------------------------------------------------------------------
- 
------------------------------------------------------------------------------*/