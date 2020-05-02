mkdir build
cd build
cmake ..
make
cd ..
mv build/test.o ./
./test.o
