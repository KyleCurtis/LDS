//            _   _      _ _        __        __         _     _ 
//           | | | | ___| | | ___   \ \      / /__  _ __| | __| |
//           | |_| |/ _ \ | |/ _ \   \ \ /\ / / _ \| '__| |/ _` |
//           |  _  |  __/ | | (_) |   \ V  V / (_) | |  | | (_| |
//           |_| |_|\___|_|_|\___/     \_/\_/ \___/|_|  |_|\__,_|
// -----------------------------------------------------------------------------
//

const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, {s}!\n", .{"world"});
}

// -----------------------------------------------------------------------------
// HELLO-WORLD NOTES: 
// -----------------------------------------------------------------------------
// - 
// - 
// -----------------------------------------------------------------------------

// DEV NOTE:
// ------------------------------------------------------------------------------
// Zig only supports single-line comments.
// The linebreaks are 77 characters wide to support 
// the "//" comment intitialization.