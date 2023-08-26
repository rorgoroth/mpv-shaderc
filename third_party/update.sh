#!/bin/sh

SHADERC="39aa522785f130130927cd4766a37e8813af6d66"
GLSLANG="76b52ebf77833908dc4c0dd6c70a9c357ac720bd"
SPIRVHEADERS="124a9665e464ef98b8b718d572d5f329311061eb"
SPIRVTOOLS="e553b884c7c9febaa4e52334f683641fb5f196a0"

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

rm shaderc/.gitignore
rm shaderc/README.md
#rm -rf shaderc/third_party

rm -- *.tar.gz
