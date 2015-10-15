#! /bin/sh

srcdir=$(pwd)
version=0.5
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

wget --no-check-certificate https://notepad-plus-plus.org/repository/6.x/6.8.3/npp.6.8.3.bin.minimalist.7z -O npp.7z
wget http://nuwen.net/files/mingw/c07e0a6898dd528c/mingw-13.2.exe -O mingw.exe
wget http://sourceforge.net/projects/npp-plugins/files/NppExec/NppExec%20Plugin%20v0.5.3/NppExec_update_0531.zip/download -O NppExec.zip

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

unzip NppExec.zip dll_Unicode/NppExec.dll
mv dll_Unicode/NppExec.dll npp/plugins
rmdir dll_Unicode

# ----------------------------------------
# Remove downloaded files
# ----------------------------------------

rm npp.7z mingw.exe NppExec.zip

# ----------------------------------------
# Create package
# ----------------------------------------

cd ..
7z a -sfx7z.sfx pocketcpp-$version.exe pocketcpp
