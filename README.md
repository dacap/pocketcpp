Pocket C++
==========

<a href="http://flattr.com/thing/1397406/Pocket-C" target="_blank"><img src="http://api.flattr.com/button/flattr-badge-large.png" alt="Flattr this" title="Flattr this" border="0" /></a>

**Download**

* [Download Pocket C++ 0.4 x86 (for 32 bits)](https://github.com/dacap/pocketcpp/releases/download/v0.4/pocketcpp-0.4-x86.exe)
* [Download Pocket C++ 0.4 x64 (for 64 bits)](https://github.com/dacap/pocketcpp/releases/download/v0.4/pocketcpp-0.4-x64.exe)
* [Download Pocket C++ 0.5 x64 (for 64 bits)](https://github.com/dacap/pocketcpp/releases/download/v0.5/pocketcpp-0.5.exe)

Portable and easy to use editor to write and test C++14 snippets ([supported features](https://gcc.gnu.org/projects/cxx1y.html)). It integrates [Notepad++](http://notepad-plus-plus.org/) and [Stephan T. Lavavej](http://nuwen.net/stl.html)'s [MinGW Distro](http://nuwen.net/mingw.html) (GCC 5.2.0). You can use F9 key to compile C++ files, and Ctrl+F9 to execute the compiled program.

See [FAQ](https://github.com/dacap/pocketcpp/wiki/FAQ) for installation instructions and more.

Important notes:

  * The .cpp file must be self-contained (it must contain a main() function),
  * The file is compiled using C++14 standard.
  * Static linking (-static) is used to generate the output (.exe file), in this way it doesn't depend on external .dll (e.g. C++ runtime).
  * In next versions you'll be able to link multiple .cpp files and to use third party libraries like Boost and SDL (which are already included in the Pocket C++ distribution).

Pocket C++ looks like (is) Notepad++

<img src="https://lh5.googleusercontent.com/-4IpNYHlsLTI/Tn8uctVfRiI/AAAAAAAAAtc/0SHaacR1lk8/s800/pocket_main.png" />

You can press **F9 to compile** your .cpp files. If there are compilation errors you can double-click them to go to the specific line.

<img src="https://lh3.googleusercontent.com/-WGs4vSSLB34/Tn8viHwLCeI/AAAAAAAAAto/pTa-KIwbiSE/s800/pocket_compilation.png" />

You can press **Ctrl+F9 to execute** the compiled program

<img src="https://lh6.googleusercontent.com/-Yl8XG_GlWHM/Tn8wBzWP-5I/AAAAAAAAAt0/F63okFqkkLI/s800/pocket_run.png" />
