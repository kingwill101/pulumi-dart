// This is a generated file - do not edit.
//
// Generated from pulumi/source.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sourcePositionDescriptor instead')
const SourcePosition$json = {
  '1': 'SourcePosition',
  '2': [
    {'1': 'uri', '3': 1, '4': 1, '5': 9, '10': 'uri'},
    {'1': 'line', '3': 2, '4': 1, '5': 5, '10': 'line'},
    {'1': 'column', '3': 3, '4': 1, '5': 5, '10': 'column'},
  ],
};

/// Descriptor for `SourcePosition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sourcePositionDescriptor = $convert.base64Decode(
    'Cg5Tb3VyY2VQb3NpdGlvbhIQCgN1cmkYASABKAlSA3VyaRISCgRsaW5lGAIgASgFUgRsaW5lEh'
    'YKBmNvbHVtbhgDIAEoBVIGY29sdW1u');

@$core.Deprecated('Use stackFrameDescriptor instead')
const StackFrame$json = {
  '1': 'StackFrame',
  '2': [
    {
      '1': 'pc',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.SourcePosition',
      '10': 'pc'
    },
  ],
};

/// Descriptor for `StackFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stackFrameDescriptor = $convert.base64Decode(
    'CgpTdGFja0ZyYW1lEikKAnBjGAEgASgLMhkucHVsdW1pcnBjLlNvdXJjZVBvc2l0aW9uUgJwYw'
    '==');

@$core.Deprecated('Use stackTraceDescriptor instead')
const StackTrace$json = {
  '1': 'StackTrace',
  '2': [
    {
      '1': 'frames',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.StackFrame',
      '10': 'frames'
    },
  ],
};

/// Descriptor for `StackTrace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stackTraceDescriptor = $convert.base64Decode(
    'CgpTdGFja1RyYWNlEi0KBmZyYW1lcxgBIAMoCzIVLnB1bHVtaXJwYy5TdGFja0ZyYW1lUgZmcm'
    'FtZXM=');
