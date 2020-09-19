# Pocket C++

Portable and easy to use editor to write and test C++11/14/17/20 snippets.

## Features

* Press `F9` key to compile C++ files
* Press `Ctrl+F9` to execute the compiled program
* Press `F4`/`Ctrl+F4` to go to next/previous compiler error
* Includes [MinGW Distro](http://nuwen.net/mingw.html) by [Stephan T. Lavavej](http://nuwen.net/stl.html), gcc 9.2.0 ([supported features](https://gcc.gnu.org/projects/cxx-status.html))
* Includes [Notepad++ v7.8.9](http://notepad-plus-plus.org/) with [NppExec](https://github.com/d0vgan/nppexec) plugin
* Includes [cmake v3.18.2](http://cmake.org/)

## Download

[Pocket C++ 0.8 Windows 64-bit](https://github.com/dacap/pocketcpp/releases/download/v0.8/pocketcpp-0.8.exe)

See [FAQ](https://github.com/dacap/pocketcpp/wiki/FAQ) for
installation instructions and more.

## Notes

* The `.cpp` file must be self-contained (it must contain a `main()` function),
* The file is compiled using `-std=c++2a` flag with gcc 9.2.0
* Static linking (`-static`) is used to generate the output (`.exe`
  file), in this way it doesn't depend on external `.dll` (e.g. C++
  runtime).
* In next versions you'll be able to link multiple `.cpp` files and to
  use third party libraries like Boost and SDL (which are already
  included in the Pocket C++ distribution).

Pocket C++ looks like (is) Notepad++

<img src="https://lh5.googleusercontent.com/-4IpNYHlsLTI/Tn8uctVfRiI/AAAAAAAAAtc/0SHaacR1lk8/s800/pocket_main.png" />

You can press **F9 to compile** your .cpp files. If there are compilation errors you can double-click them to go to the specific line.

<img src="https://lh3.googleusercontent.com/-WGs4vSSLB34/Tn8viHwLCeI/AAAAAAAAAto/pTa-KIwbiSE/s800/pocket_compilation.png" />

You can press **Ctrl+F9 to execute** the compiled program

<img src="https://lh6.googleusercontent.com/-Yl8XG_GlWHM/Tn8wBzWP-5I/AAAAAAAAAt0/F63okFqkkLI/s800/pocket_run.png" />
