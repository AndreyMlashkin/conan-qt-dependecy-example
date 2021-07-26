import os
import shutil

from conans import ConanFile, tools, Meson, RunEnvironment, CMake
from conans.errors import ConanException


class TestPackageConan(ConanFile):
    settings = "os", "compiler", "build_type", "arch"
    generators = "qt", "cmake", "cmake_find_package_multi", "qmake"

    def requirements(self):
        self.requires("qt/5.15.2")

    def build(self):
        cmake = CMake(self, set_cmake_flags=True)
        cmake.configure()
        cmake.build()
