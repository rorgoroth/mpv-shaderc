#!/bin/sh

SHADERC="3ac03b8ad85a8e328a6182cddee8d05810bd5a2c"
GLSLANG="fa9c3deb49e035a8abcabe366f26aac010f6cbfb"
SPIRVHEADERS="2acb319af38d43be3ea76bfabf3998e5281d8d12"
SPIRVTOOLS="0cfe9e7219148716dfd30b37f4d21753f098707a"

rm -- *.tar.gz

axel https://github.com/google/shaderc/archive/"$SHADERC".tar.gz
axel https://github.com/KhronosGroup/glslang/archive/"$GLSLANG".tar.gz
axel https://github.com/KhronosGroup/SPIRV-Headers/archive/"$SPIRVHEADERS".tar.gz
axel https://github.com/KhronosGroup/SPIRV-Tools/archive/"$SPIRVTOOLS".tar.gz

rm -rf -- glslang
rm -rf -- spirv-headers
rm -rf -- spirv-tools
rm -rf -- shaderc

for i in *.tar.gz
do
  tar xf "$i"
done

mv glslang-"$GLSLANG" glslang
mv shaderc-"$SHADERC" shaderc
mv SPIRV-Headers-"$SPIRVHEADERS" spirv-headers
mv SPIRV-Tools-"$SPIRVTOOLS" spirv-tools

rm -rf shaderc/.gitignore
rm -rf shaderc/.github
rm shaderc/.clang-format
rm shaderc/AUTHORS
rm shaderc/Android.mk
rm shaderc/BUILD.gn
rm shaderc/CONTRIBUTING.md
rm shaderc/CONTRIBUTORS
rm shaderc/DEPS
rm shaderc/DEVELOPMENT.howto.md
rm shaderc/Dockerfile
rm shaderc/downloads.md
rm shaderc/license-checker.cfg

rm -- *.tar.gz
