import os
import shutil

from conans import ConanFile, tools, Meson, RunEnvironment, CMake
from conans.errors import ConanException


class TestPackageConan(ConanFile):
    settings = "os", "compiler", "build_type", "arch"
    generators = "qt", "cmake", "cmake_find_package_multi", "qmake"
    exports_sources = "*"

    def requirements(self):
        self.requires("qt/6.1.2")
        self.options["qt"].qttools = True
        self.options["qt"].qtactiveqt = True
        self.options["qt"].qtdeclarative = True
        self.options["qt"].qtsvg = True
        
    def build(self):
        cmake = CMake(self)
        cmake.configure()
        cmake.build()
