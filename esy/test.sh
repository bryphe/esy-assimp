pwd
cd _build

INCLUDE=$cur__install/include

if which x86_64-w64-mingw32-gcc; then
    CXX=x86_64-w64-mingw32-g++
    CCLIB=
    BIN="$(cygpath -u $cur__bin)"
else
    CXX=g++
    CCLIB=
    BIN=$cur__bin
fi

echo "Using compiler: $CC"

echo "include..."
ls -a $INCLUDE
echo "lib.."
ls -a $cur__lib
$CXX ./../esy/test.cpp -o ./test -static -static-libgcc -static-libstdc++ -I$INCLUDE -L$cur__lib -Wl,-Bstatic -l:libassimp.dll.a


echo "** Compile successful; running test app **"

if which x86_64-w64-mingw32-gcc; then
    echo "  - Copying runtime files for Windows..."
    cp $cur__bin/cygassimp-4.dll cygassimp-4.dll
    cp /usr/x86_64-w64-mingw32/sys-root/mingw/bin/*.dll .
fi

# Need to include bin path for cygwin runtime dll

export PATH=$PATH:$BIN

echo $PATH
./test
