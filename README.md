# Makefile Helper
This Makefile is designed for lazy C/C++ programmers who want to try something immeidately with minimal settings.

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
Clone the makefile-helper

    git clone https://github.com/rightson/makefile-helper.git
    
Create a soft link in your working directory

    cd your_playground_folder
    ln -s /path/to/the/cloned_makefile-helper/Makefile
    
Please update COMPILER or EXTENSION as need (if you are writing C++ and using g++/clang++...),
Then, type

    make TARGET

Enjoy : )
