#! /bin/sh

srcdir=$(pwd)
version=0.8
outputdir="/c/pocketcpp-build"

# ----------------------------------------
# Output directory
# ----------------------------------------

echo -n "Output directory ($outputdir)? "
read ans
if [[ "$ans" != "" ]] ; then
    outputdir=$ans
fi

if [[ -d "$outputdir" ]] ; then
    echo Directory $outputdir already exist
    echo -n "Do you want to continue anyway (yes/NO)? "
    read ans
    if [[ "$ans" != "yes" ]] ; then
        exit 1 ;
    fi
fi

if [[ ! -d "$outputdir" ]] ; then mkdir "$outputdir" ; fi
if [[ ! -d "$outputdir/cache" ]] ; then mkdir "$outputdir/cache" ; fi
if [[ ! -d "$outputdir/pocketcpp" ]] ; then mkdir "$outputdir/pocketcpp" ; fi
start "$outputdir"

# ----------------------------------------
# Download files
# ----------------------------------------

cd "$outputdir/cache"
if [[ ! -f npp.7z ]] ; then
    wget https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.9/npp.7.8.9.bin.minimalist.x64.7z -O npp.7z
fi
if [[ ! -f mingw.exe ]] ; then
    wget https://nuwen.net/files/mingw/history/mingw-17.1.exe -O mingw.exe
fi
if [[ ! -f NppExec.zip ]] ; then
    wget https://github.com/d0vgan/nppexec/releases/download/v06-RC3/NppExec_06RC3_dll_x64_PA.zip -O NppExec.zip
fi
if [[ ! -f cmake.zip ]] ; then
    wget https://github.com/Kitware/CMake/releases/download/v3.18.2/cmake-3.18.2-win64-x64.zip -O cmake.zip
fi

# ----------------------------------------
# Uncompress
# ----------------------------------------

cd "$outputdir/pocketcpp"
if [[ ! -d npp ]] ; then
    7z x "$outputdir/cache/npp.7z" -onpp
fi
if [[ ! -d MinGW ]] ; then
    7z x "$outputdir/cache/mingw.exe"
fi
if [[ ! -d cmake ]] ; then
    unzip "$outputdir/cache/cmake.zip"
    mv cmake-3.18.2-win64-x64 cmake
fi

# ----------------------------------------
# Copy Pocket++ files
# ----------------------------------------

cd "$outputdir/pocketcpp"
cp $srcdir/launchers/*.bat .
cp -r $srcdir/npp .
cp -r $srcdir/QuickStart QuickStart

# ----------------------------------------
# Install Notepad++ plugins
# ----------------------------------------

if [[ ! -f npp/plugins/NppExec/NppExec.dll ]] ; then
    unzip "$outputdir/cache/NppExec.zip" NppExec/NppExec.dll
    mkdir -q npp/plugins
    mv NppExec npp/plugins
fi

# ----------------------------------------
# Create package
# ----------------------------------------

cd "$outputdir"
7z a -sfx7z.sfx pocketcpp-$version.exe pocketcpp
