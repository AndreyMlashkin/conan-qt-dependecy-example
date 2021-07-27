conan install . --build missing && \
CMAKE_PREFIX_PATH=. cmake -DCMAKE_BUILD_TYPE=Debug . && \
cmake --build . -j6 --target test_package --config Debug 
