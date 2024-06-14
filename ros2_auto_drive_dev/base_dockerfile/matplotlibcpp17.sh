git clone https://github.com/soblin/matplotlibcpp17.git
cd matplotlibcpp17
mkdir build; cd build;
cmake .. -DADD_DEMO=0
make -j
make install