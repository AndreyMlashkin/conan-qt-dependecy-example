FROM conanio/gcc11

COPY test_package ./
RUN conan install qt/5.15.2@
RUN ./rebuild.sh
