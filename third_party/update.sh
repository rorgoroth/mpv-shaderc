#!/bin/sh

SHADERC="45b735dfddefe26a99b77e5a74e30d860713ac64"
GLSLANG="9fbc561947f6b5275289a1985676fb7267273e09"
SPIRVHEADERS="bdbfd019be6952fd8fa9bd5606a8798a7530c853"
SPIRVTOOLS="e7c6084fd1d6d6f5ac393e842728d8be309688ca"

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
