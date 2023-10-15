#!/bin/sh

SHADERC="3882b16417077aa8eaa7b5775920e7ba4b8a224d"
GLSLANG="48f9ed8b08be974f4e463ef38136c8f23513b2cf"
SPIRVHEADERS="4183b260f4cccae52a89efdfcdd43c4897989f42"
SPIRVTOOLS="360d469b9eac54d6c6e20f609f9ec35e3a5380ad"

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
