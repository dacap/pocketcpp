#! /bin/sh

srcdir=$(pwd)
version=0.8
outputdir="C:/pocketcpp-build"

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

mkdir $outputdir
mkdir $outputdir/pocketcpp
start $outputdir/pocketcpp
cd $outputdir/pocketcpp

# ----------------------------------------
# Download files
# ----------------------------------------

wget https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.9/npp.7.8.9.bin.minimalist.x64.7z -O npp.7z
wget https://nuwen.net/files/mingw/history/mingw-17.1.exe -O mingw.exe
wget https://github.com/d0vgan/nppexec/releases/download/v06-RC3/NppExec_06RC3_dll_x64_PA.zip -O NppExec.zip

# ----------------------------------------
# Uncompress
# ----------------------------------------

if [[ ! -d npp ]] ; then
    7z x npp.7z -onpp
fi
if [[ ! -d MinGW ]] ; then
    7z x mingw.exe
fi

# ----------------------------------------
# Copy pocket++ files
# ----------------------------------------

cp $srcdir/launchers/*.bat .
cp -r $srcdir/npp .
cp -r $srcdir/QuickStart QuickStart

# ----------------------------------------
# Install notepad++ plugins
# ----------------------------------------

if [[ ! -f npp/plugins/NppExec/NppExec.dll ]] ; then
    unzip NppExec.zip NppExec/NppExec.dll
    mkdir -q npp/plugins
    mv NppExec npp/plugins
fi

# ----------------------------------------
# Remove downloaded files
# ----------------------------------------

rm npp.7z mingw.exe NppExec.zip

# ----------------------------------------
# Create package
# ----------------------------------------

cd ..
7z a -sfx7z.sfx pocketcpp-$version.exe pocketcpp
