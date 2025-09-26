#!/bin/bash

SHADERC="c7e73e87aebdafa98e57809e0357e3d3285540aa"
GLSLANG="d213562e35573012b6348b2d584457c3704ac09b"
SPIRVHEADERS="01e0577914a75a2569c846778c2f93aa8e6feddd"
SPIRVTOOLS="19042c8921f35f7bec56b9e5c96c5f5691588ca8"

rm -- *.tar.gz

axel https://github.com/google/shaderc/archive/"$SHADERC".tar.gz
axel https://github.com/KhronosGroup/glslang/archive/"$GLSLANG".tar.gz
axel https://github.com/KhronosGroup/SPIRV-Headers/archive/"$SPIRVHEADERS".tar.gz
axel https://github.com/KhronosGroup/SPIRV-Tools/archive/"$SPIRVTOOLS".tar.gz

rm -rf -- glslang
rm -rf -- spirv-headers
rm -rf -- spirv-tools
rm -rf -- shaderc
rm -rfv {Android.mk,CMakeLists.txt,LICENSE.glslang,LICENSE.spirv-tools}

for i in *.tar.gz
do
  tar xf "$i"
done

mv glslang-"$GLSLANG" glslang
mv shaderc-"$SHADERC" shaderc
mv SPIRV-Headers-"$SPIRVHEADERS" spirv-headers
mv SPIRV-Tools-"$SPIRVTOOLS" spirv-tools

rm -rf shaderc/.github
rm -rf shaderc/.gitignore
rm shaderc/.clang-format
rm shaderc/Android.mk
rm shaderc/AUTHORS
rm shaderc/BUILD.gn
rm shaderc/CONTRIBUTING.md
rm shaderc/CONTRIBUTORS
rm shaderc/DEPS
rm shaderc/DEVELOPMENT.howto.md
rm shaderc/Dockerfile
rm shaderc/downloads.md
rm shaderc/license-checker.cfg
rm shaderc/README.md

rm -- *.tar.gz
