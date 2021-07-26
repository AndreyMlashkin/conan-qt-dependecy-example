conan install . --build missing --build cascade -u && \
CMAKE_MODULE_PATH=. && CMAKE_MODULE_PATH=. cmake -DCMAKE_BUILD_TYPE=Debug . && \
cmake --build . -j6 --target test_package --config Debug 
