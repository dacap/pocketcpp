Pocket C++
==========

<a href="http://flattr.com/thing/1397406/Pocket-C" target="_blank"><img src="http://api.flattr.com/button/flattr-badge-large.png" alt="Flattr this" title="Flattr this" border="0" /></a>

Portable and easy to use editor to write and test C++11 snippets ([supported features](http://gcc.gnu.org/gcc-4.8/cxx0x_status.html)). It integrates [Notepad++](http://notepad-plus-plus.org/) and [Stephan T. Lavavej](http://nuwen.net/stl.html)'s [MinGW Distro](http://nuwen.net/mingw.html) (GCC 4.8.1). You can use F9 key to compile C++ files, and Ctrl+F9 to execute the compiled program.

See [FAQ](https://code.google.com/p/pocketcpp/wiki/FAQ) for installation instructions and more.

Important notes:

  * The .cpp file must be self-contained (it must contain a main() function),
  * The file is compiled using C++11 standard.
  * Static linking (-static) is used to generate the output (.exe file), in this way it doesn't depend on external .dll (e.g. C++ runtime).
  * In next versions you'll be able to link multiple .cpp files and to use third party libraries like Boost and SDL (which are already included in the Pocket C++ distribution)
  * Warning `<regex>`: g++ doesn't have full support of std::regex yet.

Pocket C++ looks like (is) Notepad++

<img src="https://lh5.googleusercontent.com/-4IpNYHlsLTI/Tn8uctVfRiI/AAAAAAAAAtc/0SHaacR1lk8/s800/pocket_main.png" />

You can press **F9 to compile** your .cpp files. If there are compilation errors you can double-click them to go to the specific line.

<img src="https://lh3.googleusercontent.com/-WGs4vSSLB34/Tn8viHwLCeI/AAAAAAAAAto/pTa-KIwbiSE/s800/pocket_compilation.png" />

You can press **Ctrl+F9 to execute** the compiled program

<img src="https://lh6.googleusercontent.com/-Yl8XG_GlWHM/Tn8wBzWP-5I/AAAAAAAAAt0/F63okFqkkLI/s800/pocket_run.png" />
