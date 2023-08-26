// GENERATED FILE - DO NOT EDIT.
// Generated by generate_tests.py
//
// Copyright (c) 2022 Google LLC.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "../diff_test_utils.h"

#include "gtest/gtest.h"

namespace spvtools {
namespace diff {
namespace {

// Basic test for spirv-diff
constexpr char kSrc[] = R"(; SPIR-V
; Version: 1.0
; Generator: Google ANGLE Shader Compiler; 0
; Bound: 27
; Schema: 0
OpCapability Shader
  OpMemoryModel Logical GLSL450
  OpEntryPoint Vertex %22 "main" %4 %14 %19
  OpSource GLSL 450
  OpName %4 "_ua_position"
  OpName %14 "ANGLEXfbPosition"
  OpName %17 "gl_PerVertex"
  OpMemberName %17 0 "gl_Position"
OpMemberName %17 1 "gl_PointSize"
OpMemberName %17 2 "gl_ClipDistance"
  OpMemberName %17 3 "gl_CullDistance"
  OpName %19 ""
  OpName %22 "main"
  OpDecorate %4 Location 0
  OpDecorate %14 Location 0
  OpMemberDecorate %17 1 RelaxedPrecision
  OpMemberDecorate %17 0 BuiltIn Position
  OpMemberDecorate %17 1 BuiltIn PointSize
OpMemberDecorate %17 2 BuiltIn ClipDistance
OpMemberDecorate %17 3 BuiltIn CullDistance
OpDecorate %17 Block
%1 = OpTypeFloat 32
%2 = OpTypeVector %1 4
%5 = OpTypeInt 32 0
%6 = OpTypeInt 32 1
%15 = OpConstant %5 8
%16 = OpTypeArray %1 %15
%17 = OpTypeStruct %2 %1 %16 %16
%20 = OpTypeVoid
%25 = OpConstant %6 0
%3 = OpTypePointer Input %2
%13 = OpTypePointer Output %2
%18 = OpTypePointer Output %17
%21 = OpTypeFunction %20
%4 = OpVariable %3 Input
%14 = OpVariable %13 Output
%19 = OpVariable %18 Output
%22 = OpFunction %20 None %21
%23 = OpLabel
%24 = OpLoad %2 %4
%26 = OpAccessChain %13 %19 %25
OpStore %26 %24
OpReturn
OpFunctionEnd)";
constexpr char kDst[] = R"(; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 28
; Schema: 0
OpCapability Shader
%1 = OpExtInstImport "GLSL.std.450"
OpMemoryModel Logical GLSL450
OpEntryPoint Vertex %4 "main" %13 %17 %27
OpSource GLSL 450
OpName %4 "main"
OpName %11 "gl_PerVertex"
OpMemberName %11 0 "gl_Position"
OpMemberName %11 1 "gl_PointSize"
OpMemberName %11 2 "gl_ClipDistance"
OpMemberName %11 3 "gl_CullDistance"
OpName %13 ""
OpName %17 "_ua_position"
OpName %27 "ANGLEXfbPosition"
OpMemberDecorate %11 0 BuiltIn Position
OpMemberDecorate %11 1 BuiltIn PointSize
OpMemberDecorate %11 2 BuiltIn ClipDistance
OpMemberDecorate %11 3 BuiltIn CullDistance
OpDecorate %11 Block
OpDecorate %17 Location 0
OpDecorate %27 Location 0
%2 = OpTypeVoid
%3 = OpTypeFunction %2
%6 = OpTypeFloat 32
%7 = OpTypeVector %6 4
%8 = OpTypeInt 32 0
%9 = OpConstant %8 1
%10 = OpTypeArray %6 %9
%11 = OpTypeStruct %7 %6 %10 %10
%12 = OpTypePointer Output %11
%13 = OpVariable %12 Output
%14 = OpTypeInt 32 1
%15 = OpConstant %14 0
%16 = OpTypePointer Input %7
%17 = OpVariable %16 Input
%19 = OpTypePointer Output %7
%27 = OpVariable %19 Output
%4 = OpFunction %2 None %3
%5 = OpLabel
%18 = OpLoad %7 %17
%20 = OpAccessChain %19 %13 %15
OpStore %20 %18
OpReturn
OpFunctionEnd
)";

TEST(DiffTest, Basic) {
  constexpr char kDiff[] = R"( ; SPIR-V
 ; Version: 1.6
 ; Generator: Khronos SPIR-V Tools Assembler; 0
-; Bound: 27
+; Bound: 30
 ; Schema: 0
 OpCapability Shader
+%27 = OpExtInstImport "GLSL.std.450"
 OpMemoryModel Logical GLSL450
-OpEntryPoint Vertex %22 "main" %4 %14 %19
+OpEntryPoint Vertex %22 "main" %19 %4 %14
 OpSource GLSL 450
 OpName %4 "_ua_position"
 OpName %14 "ANGLEXfbPosition"
 OpName %17 "gl_PerVertex"
 OpMemberName %17 0 "gl_Position"
 OpMemberName %17 1 "gl_PointSize"
 OpMemberName %17 2 "gl_ClipDistance"
 OpMemberName %17 3 "gl_CullDistance"
 OpName %19 ""
 OpName %22 "main"
 OpDecorate %4 Location 0
 OpDecorate %14 Location 0
-OpMemberDecorate %17 1 RelaxedPrecision
 OpMemberDecorate %17 0 BuiltIn Position
 OpMemberDecorate %17 1 BuiltIn PointSize
 OpMemberDecorate %17 2 BuiltIn ClipDistance
 OpMemberDecorate %17 3 BuiltIn CullDistance
 OpDecorate %17 Block
 %1 = OpTypeFloat 32
 %2 = OpTypeVector %1 4
 %5 = OpTypeInt 32 0
 %6 = OpTypeInt 32 1
-%15 = OpConstant %5 8
-%16 = OpTypeArray %1 %15
-%17 = OpTypeStruct %2 %1 %16 %16
+%17 = OpTypeStruct %2 %1 %29 %29
+%28 = OpConstant %5 1
+%29 = OpTypeArray %1 %28
 %20 = OpTypeVoid
 %25 = OpConstant %6 0
 %3 = OpTypePointer Input %2
 %13 = OpTypePointer Output %2
 %18 = OpTypePointer Output %17
 %21 = OpTypeFunction %20
 %4 = OpVariable %3 Input
 %14 = OpVariable %13 Output
 %19 = OpVariable %18 Output
 %22 = OpFunction %20 None %21
 %23 = OpLabel
 %24 = OpLoad %2 %4
 %26 = OpAccessChain %13 %19 %25
 OpStore %26 %24
 OpReturn
 OpFunctionEnd
)";
  Options options;
  DoStringDiffTest(kSrc, kDst, kDiff, options);
}

TEST(DiffTest, BasicNoDebug) {
  constexpr char kSrcNoDebug[] = R"(; SPIR-V
; Version: 1.0
; Generator: Google ANGLE Shader Compiler; 0
; Bound: 27
; Schema: 0
OpCapability Shader
  OpMemoryModel Logical GLSL450
  OpEntryPoint Vertex %22 "main" %4 %14 %19
  OpSource GLSL 450
  OpDecorate %4 Location 0
  OpDecorate %14 Location 0
  OpMemberDecorate %17 1 RelaxedPrecision
  OpMemberDecorate %17 0 BuiltIn Position
  OpMemberDecorate %17 1 BuiltIn PointSize
OpMemberDecorate %17 2 BuiltIn ClipDistance
OpMemberDecorate %17 3 BuiltIn CullDistance
OpDecorate %17 Block
%1 = OpTypeFloat 32
%2 = OpTypeVector %1 4
%5 = OpTypeInt 32 0
%6 = OpTypeInt 32 1
%15 = OpConstant %5 8
%16 = OpTypeArray %1 %15
%17 = OpTypeStruct %2 %1 %16 %16
%20 = OpTypeVoid
%25 = OpConstant %6 0
%3 = OpTypePointer Input %2
%13 = OpTypePointer Output %2
%18 = OpTypePointer Output %17
%21 = OpTypeFunction %20
%4 = OpVariable %3 Input
%14 = OpVariable %13 Output
%19 = OpVariable %18 Output
%22 = OpFunction %20 None %21
%23 = OpLabel
%24 = OpLoad %2 %4
%26 = OpAccessChain %13 %19 %25
OpStore %26 %24
OpReturn
OpFunctionEnd
)";
  constexpr char kDstNoDebug[] = R"(; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 28
; Schema: 0
OpCapability Shader
%1 = OpExtInstImport "GLSL.std.450"
OpMemoryModel Logical GLSL450
OpEntryPoint Vertex %4 "main" %13 %17 %27
OpSource GLSL 450
OpMemberDecorate %11 0 BuiltIn Position
OpMemberDecorate %11 1 BuiltIn PointSize
OpMemberDecorate %11 2 BuiltIn ClipDistance
OpMemberDecorate %11 3 BuiltIn CullDistance
OpDecorate %11 Block
OpDecorate %17 Location 0
OpDecorate %27 Location 0
%2 = OpTypeVoid
%3 = OpTypeFunction %2
%6 = OpTypeFloat 32
%7 = OpTypeVector %6 4
%8 = OpTypeInt 32 0
%9 = OpConstant %8 1
%10 = OpTypeArray %6 %9
%11 = OpTypeStruct %7 %6 %10 %10
%12 = OpTypePointer Output %11
%13 = OpVariable %12 Output
%14 = OpTypeInt 32 1
%15 = OpConstant %14 0
%16 = OpTypePointer Input %7
%17 = OpVariable %16 Input
%19 = OpTypePointer Output %7
%27 = OpVariable %19 Output
%4 = OpFunction %2 None %3
%5 = OpLabel
%18 = OpLoad %7 %17
%20 = OpAccessChain %19 %13 %15
OpStore %20 %18
OpReturn
OpFunctionEnd
)";
  constexpr char kDiff[] = R"( ; SPIR-V
 ; Version: 1.6
 ; Generator: Khronos SPIR-V Tools Assembler; 0
-; Bound: 27
+; Bound: 30
 ; Schema: 0
 OpCapability Shader
+%27 = OpExtInstImport "GLSL.std.450"
 OpMemoryModel Logical GLSL450
-OpEntryPoint Vertex %22 "main" %4 %14 %19
+OpEntryPoint Vertex %22 "main" %19 %4 %14
 OpSource GLSL 450
 OpDecorate %4 Location 0
 OpDecorate %14 Location 0
-OpMemberDecorate %17 1 RelaxedPrecision
 OpMemberDecorate %17 0 BuiltIn Position
 OpMemberDecorate %17 1 BuiltIn PointSize
 OpMemberDecorate %17 2 BuiltIn ClipDistance
 OpMemberDecorate %17 3 BuiltIn CullDistance
 OpDecorate %17 Block
 %1 = OpTypeFloat 32
 %2 = OpTypeVector %1 4
 %5 = OpTypeInt 32 0
 %6 = OpTypeInt 32 1
-%15 = OpConstant %5 8
-%16 = OpTypeArray %1 %15
-%17 = OpTypeStruct %2 %1 %16 %16
+%17 = OpTypeStruct %2 %1 %29 %29
+%28 = OpConstant %5 1
+%29 = OpTypeArray %1 %28
 %20 = OpTypeVoid
 %25 = OpConstant %6 0
 %3 = OpTypePointer Input %2
 %13 = OpTypePointer Output %2
 %18 = OpTypePointer Output %17
 %21 = OpTypeFunction %20
 %4 = OpVariable %3 Input
 %14 = OpVariable %13 Output
 %19 = OpVariable %18 Output
 %22 = OpFunction %20 None %21
 %23 = OpLabel
 %24 = OpLoad %2 %4
 %26 = OpAccessChain %13 %19 %25
 OpStore %26 %24
 OpReturn
 OpFunctionEnd
)";
  Options options;
  DoStringDiffTest(kSrcNoDebug, kDstNoDebug, kDiff, options);
}

TEST(DiffTest, BasicDumpIds) {
  constexpr char kDiff[] = R"( ; SPIR-V
 ; Version: 1.6
 ; Generator: Khronos SPIR-V Tools Assembler; 0
-; Bound: 27
+; Bound: 30
 ; Schema: 0
 OpCapability Shader
+%27 = OpExtInstImport "GLSL.std.450"
 OpMemoryModel Logical GLSL450
-OpEntryPoint Vertex %22 "main" %4 %14 %19
+OpEntryPoint Vertex %22 "main" %19 %4 %14
 OpSource GLSL 450
 OpName %4 "_ua_position"
 OpName %14 "ANGLEXfbPosition"
 OpName %17 "gl_PerVertex"
 OpMemberName %17 0 "gl_Position"
 OpMemberName %17 1 "gl_PointSize"
 OpMemberName %17 2 "gl_ClipDistance"
 OpMemberName %17 3 "gl_CullDistance"
 OpName %19 ""
 OpName %22 "main"
 OpDecorate %4 Location 0
 OpDecorate %14 Location 0
-OpMemberDecorate %17 1 RelaxedPrecision
 OpMemberDecorate %17 0 BuiltIn Position
 OpMemberDecorate %17 1 BuiltIn PointSize
 OpMemberDecorate %17 2 BuiltIn ClipDistance
 OpMemberDecorate %17 3 BuiltIn CullDistance
 OpDecorate %17 Block
 %1 = OpTypeFloat 32
 %2 = OpTypeVector %1 4
 %5 = OpTypeInt 32 0
 %6 = OpTypeInt 32 1
-%15 = OpConstant %5 8
-%16 = OpTypeArray %1 %15
-%17 = OpTypeStruct %2 %1 %16 %16
+%17 = OpTypeStruct %2 %1 %29 %29
+%28 = OpConstant %5 1
+%29 = OpTypeArray %1 %28
 %20 = OpTypeVoid
 %25 = OpConstant %6 0
 %3 = OpTypePointer Input %2
 %13 = OpTypePointer Output %2
 %18 = OpTypePointer Output %17
 %21 = OpTypeFunction %20
 %4 = OpVariable %3 Input
 %14 = OpVariable %13 Output
 %19 = OpVariable %18 Output
 %22 = OpFunction %20 None %21
 %23 = OpLabel
 %24 = OpLoad %2 %4
 %26 = OpAccessChain %13 %19 %25
 OpStore %26 %24
 OpReturn
 OpFunctionEnd
 Src ->  Dst
   1 ->    6 [TypeFloat]
   2 ->    7 [TypeVector]
   3 ->   16 [TypePointer]
   4 ->   17 [Variable]
   5 ->    8 [TypeInt]
   6 ->   14 [TypeInt]
  13 ->   19 [TypePointer]
  14 ->   27 [Variable]
  15 ->   28 [Constant]
  16 ->   29 [TypeArray]
  17 ->   11 [TypeStruct]
  18 ->   12 [TypePointer]
  19 ->   13 [Variable]
  20 ->    2 [TypeVoid]
  21 ->    3 [TypeFunction]
  22 ->    4 [Function]
  23 ->    5 [Label]
  24 ->   18 [Load]
  25 ->   15 [Constant]
  26 ->   20 [AccessChain]
)";
  Options options;
  options.dump_id_map = true;
  DoStringDiffTest(kSrc, kDst, kDiff, options);
}

}  // namespace
}  // namespace diff
}  // namespace spvtools
