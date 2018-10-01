mkdirp _build
cd _build
cmake -G "Unix Makefiles" ../ -DASSIMP_BUILD_ASSIMP_TOOLS=OFF -DASSIMP_BUILD_TESTS=OFF -DENABLE_BOOST_WORKAROUND=ON -DCMAKE_C_COMPILER=x86_64-w64-mingw32-gcc -DCMAKE_CXX_COMPILER=x86_64-w64-mingw32-g++ -DCMAKE_AR=/usr/bin/x86_64-w64-mingw32-ar -DCMAKE_LINKER=/usr/bin/x86_64-w64-mingw32-ld -DCMAKE_NM=/usr/bin/x86_64-w64-mingw32-nm -DCMAKE_OBJCOPY=/usr/bin/x86_64-w64-mingw32-objcopy -DCMAKE_OBJDUMP=/usr/bin/x86_64-w64-mingw32-objdump -DCMAKE_RANLIB=/usr/bin/x86_64-w64-mingw32-ranlib -DCMAKE_RC_COMPILER=/usr/bin/x86_64-w64-mingw32-windres
