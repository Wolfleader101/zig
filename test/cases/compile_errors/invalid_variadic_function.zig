fn foo(...) void {}
inline fn foo2(...) void {}

comptime {
    _ = foo;
}
comptime {
    _ = foo2;
}

// error
// target=x86_64-linux
//
// :1:1: error: variadic function does not support 'auto' calling convention
// :1:1: note: supported calling conventions: 'x86_64_sysv', 'x86_64_win'
// :1:1: error: variadic function does not support 'inline' calling convention
// :1:1: note: supported calling conventions: 'x86_64_sysv', 'x86_64_win'
