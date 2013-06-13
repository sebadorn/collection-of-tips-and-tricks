## C++ notes

### Print variable type

    #include <typeinfo>
    std::cout << typeid( myVariable ).name() << std::endl;

Source: [stackoverflow.com/a/81886](http://stackoverflow.com/a/81886)

### Strings

Strings are a part of the standard library and can simply be used by `std::string`. The header file `<string.h>` only offers some string related functions, but not a string class.

### Error: undefined reference to vtable for …

Many possible reasons.

* A declared, but unimplemented method. Could be the destructor, for example.
* *[tbc]*

### Stupid mistakes to look out for

* Using the same variable name for a class member and function parameter.

