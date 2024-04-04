#!/bin/sh

SHADERC="d792558a8902cb39b1c237243cc4edab226513a5"
GLSLANG="d73712b8f6c9047b09e99614e20d456d5ada2390"
SPIRVHEADERS="8b246ff75c6615ba4532fe4fde20f1be090c3764"
SPIRVTOOLS="04896c462d9f3f504c99a4698605b6524af813c1"

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
#rm -rf shaderc/third_party

rm -- *.tar.gz
