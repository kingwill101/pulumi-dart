// This is a generated file - do not edit.
//
// Generated from pulumi/errors.proto.

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

@$core.Deprecated('Use errorCauseDescriptor instead')
const ErrorCause$json = {
  '1': 'ErrorCause',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    {'1': 'stackTrace', '3': 2, '4': 1, '5': 9, '10': 'stackTrace'},
  ],
};

/// Descriptor for `ErrorCause`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorCauseDescriptor = $convert.base64Decode(
    'CgpFcnJvckNhdXNlEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2USHgoKc3RhY2tUcmFjZRgCIA'
    'EoCVIKc3RhY2tUcmFjZQ==');

@$core.Deprecated('Use inputPropertiesErrorDescriptor instead')
const InputPropertiesError$json = {
  '1': 'InputPropertiesError',
  '2': [
    {
      '1': 'errors',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.InputPropertiesError.PropertyError',
      '10': 'errors'
    },
  ],
  '3': [InputPropertiesError_PropertyError$json],
};

@$core.Deprecated('Use inputPropertiesErrorDescriptor instead')
const InputPropertiesError_PropertyError$json = {
  '1': 'PropertyError',
  '2': [
    {'1': 'property_path', '3': 1, '4': 1, '5': 9, '10': 'propertyPath'},
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `InputPropertiesError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inputPropertiesErrorDescriptor = $convert.base64Decode(
    'ChRJbnB1dFByb3BlcnRpZXNFcnJvchJFCgZlcnJvcnMYASADKAsyLS5wdWx1bWlycGMuSW5wdX'
    'RQcm9wZXJ0aWVzRXJyb3IuUHJvcGVydHlFcnJvclIGZXJyb3JzGkwKDVByb3BlcnR5RXJyb3IS'
    'IwoNcHJvcGVydHlfcGF0aBgBIAEoCVIMcHJvcGVydHlQYXRoEhYKBnJlYXNvbhgCIAEoCVIGcm'
    'Vhc29u');
