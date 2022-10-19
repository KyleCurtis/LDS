/*
                      ____  _        _
                     / ___|| |_ _ __(_)_ __   __ _ ___ 
                     \___ \| __| '__| | '_ \ / _` / __|
                      ___) | |_| |  | | | | | (_| \__ \
                     |____/ \__|_|  |_|_| |_|\__, |___/
                                             |___/   
--------------------------------------------------------------------------------
*/

let language = "Rust";

// RAW STRINGS:
// ESCAPE CHARACTERS AND WHITESPACE WILL BE PRESERVED.
let install_path = r"C:\Program Files\LDS\";

println!("{}", language);

/*
--------------------------------------------------------------------------------
STRINGS NOTES: 
--------------------------------------------------------------------------------
- Rust has two main types of strings: '&str' and 'String'.

- &str      - string slice; fixed size that cannot be mutated.
- String    - heap allocated; commonly used with the to_string method.

- 'String' is stored as a (Vec<u8>)
- All strings are guaranteed to be a valid encoding of UTF-8 sequences.
- Not NUL-terminated and can contain NUL bytes.
--------------------------------------------------------------------------------
*/