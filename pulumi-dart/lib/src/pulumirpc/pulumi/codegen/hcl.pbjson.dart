//
//  Generated code. Do not modify.
//  source: pulumi/codegen/hcl.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use diagnosticSeverityDescriptor instead')
const DiagnosticSeverity$json = {
  '1': 'DiagnosticSeverity',
  '2': [
    {'1': 'DIAG_INVALID', '2': 0},
    {'1': 'DIAG_ERROR', '2': 1},
    {'1': 'DIAG_WARNING', '2': 2},
  ],
};

/// Descriptor for `DiagnosticSeverity`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List diagnosticSeverityDescriptor = $convert.base64Decode(
    'ChJEaWFnbm9zdGljU2V2ZXJpdHkSEAoMRElBR19JTlZBTElEEAASDgoKRElBR19FUlJPUhABEh'
    'AKDERJQUdfV0FSTklORxAC');

@$core.Deprecated('Use posDescriptor instead')
const Pos$json = {
  '1': 'Pos',
  '2': [
    {'1': 'line', '3': 1, '4': 1, '5': 3, '10': 'line'},
    {'1': 'column', '3': 2, '4': 1, '5': 3, '10': 'column'},
    {'1': 'byte', '3': 3, '4': 1, '5': 3, '10': 'byte'},
  ],
};

/// Descriptor for `Pos`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List posDescriptor = $convert.base64Decode(
    'CgNQb3MSEgoEbGluZRgBIAEoA1IEbGluZRIWCgZjb2x1bW4YAiABKANSBmNvbHVtbhISCgRieX'
    'RlGAMgASgDUgRieXRl');

@$core.Deprecated('Use rangeDescriptor instead')
const Range$json = {
  '1': 'Range',
  '2': [
    {'1': 'filename', '3': 1, '4': 1, '5': 9, '10': 'filename'},
    {
      '1': 'start',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.codegen.Pos',
      '10': 'start'
    },
    {
      '1': 'end',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.codegen.Pos',
      '10': 'end'
    },
  ],
};

/// Descriptor for `Range`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rangeDescriptor = $convert.base64Decode(
    'CgVSYW5nZRIaCghmaWxlbmFtZRgBIAEoCVIIZmlsZW5hbWUSLAoFc3RhcnQYAiABKAsyFi5wdW'
    'x1bWlycGMuY29kZWdlbi5Qb3NSBXN0YXJ0EigKA2VuZBgDIAEoCzIWLnB1bHVtaXJwYy5jb2Rl'
    'Z2VuLlBvc1IDZW5k');

@$core.Deprecated('Use diagnosticDescriptor instead')
const Diagnostic$json = {
  '1': 'Diagnostic',
  '2': [
    {
      '1': 'severity',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.codegen.DiagnosticSeverity',
      '10': 'severity'
    },
    {'1': 'summary', '3': 2, '4': 1, '5': 9, '10': 'summary'},
    {'1': 'detail', '3': 3, '4': 1, '5': 9, '10': 'detail'},
    {
      '1': 'subject',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.codegen.Range',
      '10': 'subject'
    },
    {
      '1': 'context',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.codegen.Range',
      '10': 'context'
    },
  ],
};

/// Descriptor for `Diagnostic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diagnosticDescriptor = $convert.base64Decode(
    'CgpEaWFnbm9zdGljEkEKCHNldmVyaXR5GAEgASgOMiUucHVsdW1pcnBjLmNvZGVnZW4uRGlhZ2'
    '5vc3RpY1NldmVyaXR5UghzZXZlcml0eRIYCgdzdW1tYXJ5GAIgASgJUgdzdW1tYXJ5EhYKBmRl'
    'dGFpbBgDIAEoCVIGZGV0YWlsEjIKB3N1YmplY3QYBCABKAsyGC5wdWx1bWlycGMuY29kZWdlbi'
    '5SYW5nZVIHc3ViamVjdBIyCgdjb250ZXh0GAUgASgLMhgucHVsdW1pcnBjLmNvZGVnZW4uUmFu'
    'Z2VSB2NvbnRleHQ=');
