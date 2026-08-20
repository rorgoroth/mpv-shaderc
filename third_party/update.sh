#!/bin/bash

SHADERC="2c8cae778eec0283b44acbe7ed1a386865d78799"
GLSLANG="168d452a4f460d24b588fed08477a81c44ee27a1"
SPIRVHEADERS="29981f65241605e08b0ede4cfeb999fe3b723c6a"
SPIRVTOOLS="b707790a898e44038547df54580022fc1cf89c3d"

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
