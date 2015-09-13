# makefile helper
This is a Makefile helper for lazy c/c++ programmers who just want to try something immeidately.

It provides a simple way to get rid of `compile-then-run` routine.

For example, the makefile-helper can change below scenario

    gcc xxx.c -o xxx
    ./xxx             # only if $? is 0
  
to 

    make xxx

You may compile different file in the same folders individually, for example:

    make abc      # gcc abc.c -o abc && ./abc
    make def      # gcc def.c -o def && ./def


# Usage
Firstly, please update COMPILER or EXTENSION as need,
Then, just type

    make TARGET

Enjoy : )
