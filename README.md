<h1>GCC-i686-Cross-Compiler-Build-Script</h1>

This is a simple bash script that builds a cross compiler for i686 platforms using base GCC packages. It was made on Arch Linux, however it should also work on Debian based distros. To build the cross compiler, first make sure you have a stable internet connection, then simply download the script, and execute it. 

<h2>Build Process</h2>

Before executing the script you may want to read the following for some additional information:

Lines 5 and 6 set the values of two variables needed throughout the process. $PREFIX is the directory where you want to build the compiler, and $TARGET is the target platform for which the cross compiler will be able to compile code. Both of these can be changed freely depending on your preferences.

Line 9 TEMPORARILY adds the directory that will contain the compiler binaries to the PATH environment variable for the duration of the current terminal session. To add it permanently, you will have to modify the .bashrc file located in /$HOME directory by adding the following line:\

<span style="font-family:Babas">export PATH="build-directory/bin:$PATH"</span>  NOTE: Replace build-directory whith the directory where your cross compiler will be located ($PREFIX) 

For more information about what's happening in the script or cross compilers in general, see the following page:\
https://wiki.osdev.org/GCC_Cross-Compiler
