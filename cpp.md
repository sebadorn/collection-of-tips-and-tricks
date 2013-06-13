## C++ notes

### Print variable type

    #include <typeinfo>
    std::cout << typeid( myVariable ).name() << std::endl;

Source: [stackoverflow.com/a/81886](http://stackoverflow.com/a/81886)

### Error: undefined reference to vtable for …

Many possible reasons.

* An unimplemented method, like the destructor.
* *[tbc]*

