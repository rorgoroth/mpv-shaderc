#!/bin/sh

SHADERC="3362e24c42ab5bf7ad32c0fec64b0a0ddeb2fda1"
GLSLANG="697683e6b8871420d7d942b1a2fe233242ab5608"
SPIRVHEADERS="aa6cef192b8e693916eb713e7a9ccadf06062ceb"
SPIRVTOOLS="a62abcb402009b9ca5975e6167c09f237f630e0e"

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
