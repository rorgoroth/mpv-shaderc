#!/bin/sh

SHADERC="47a9387ef5b3600d30d84c71ec77a59dc7db46fa"
GLSLANG="142052fa30f9eca191aa9dcf65359fcaed09eeec"
SPIRVHEADERS="5e3ad389ee56fca27c9705d093ae5387ce404df4"
SPIRVTOOLS="dd4b663e13c07fea4fbb3f70c1c91c86731099f7"

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
rm -rf shaderc/.github

rm -- *.tar.gz
