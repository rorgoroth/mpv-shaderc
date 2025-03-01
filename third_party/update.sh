#!/bin/sh

SHADERC="0968768c61d4eb7dd861114412e904bb3d59b7b6"
GLSLANG="8b822ee8ac2c3e52926820f46ad858532a895951"
SPIRVHEADERS="54a521dd130ae1b2f38fef79b09515702d135bdd"
SPIRVTOOLS="f289d047f49fb60488301ec62bafab85573668cc"

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
