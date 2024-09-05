//
//  Generated code. Do not modify.
//  source: pulumi/errors.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

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
