<h1>GCC-i686-Cross-Compiler-Build-Script</h1>

This is a simple bash script that builds a cross compiler for i686 platforms using base GCC packages. It was made on Arch Linux, however it should also work on Debian based distros. To build the cross compiler, first make sure you have a stable internet connection, then simply download the script, and execute it. 

<h2>Build Process</h2>

Lines 5 and 6 set the values of two variables needed throughout the process. $PREFIX is the directory where you want to build the compiler, and $TARGET is the target platform for which the cross compiler will be able to compile code. Both of these can be changed freely depending on your preferences.

For more information about what's happening in the script or cross compilers in general, see the following page:\
https://wiki.osdev.org/GCC_Cross-Compiler
