#!/bin/sh

SHADERC="e6edd6d48fa5bdd9d176794c6810fae7f8e938e1"
GLSLANG="a91631b260cba3f22858d6c6827511e636c2458a"
SPIRVHEADERS="1c6bb2743599e6eb6f37b2969acc0aef812e32e3"
SPIRVTOOLS="f0cc85efdbbe3a46eae90e0f915dc1509836d0fc"

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
