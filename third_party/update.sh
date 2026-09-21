#!/bin/bash

SHADERC="b64fd42c4a2a9d501c47aca5d3571f7673a5e9cc"
GLSLANG="e1b562a8bed273a02f30b59b66a5d499793cede5"
SPIRVHEADERS="04fd3caa1e8267e4d95c806cad901181728e1006"
SPIRVTOOLS="ef96ed763b43b59b33b31b362f09a02b729fa1c9"

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
