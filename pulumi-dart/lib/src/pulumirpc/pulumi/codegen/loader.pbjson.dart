// This is a generated file - do not edit.
//
// Generated from pulumi/codegen/loader.proto.

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

@$core.Deprecated('Use parameterizationDescriptor instead')
const Parameterization$json = {
  '1': 'Parameterization',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'value', '3': 3, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `Parameterization`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List parameterizationDescriptor = $convert.base64Decode(
    'ChBQYXJhbWV0ZXJpemF0aW9uEhIKBG5hbWUYASABKAlSBG5hbWUSGAoHdmVyc2lvbhgCIAEoCV'
    'IHdmVyc2lvbhIUCgV2YWx1ZRgDIAEoDFIFdmFsdWU=');

@$core.Deprecated('Use getSchemaRequestDescriptor instead')
const GetSchemaRequest$json = {
  '1': 'GetSchemaRequest',
  '2': [
    {'1': 'package', '3': 1, '4': 1, '5': 9, '10': 'package'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'download_url', '3': 3, '4': 1, '5': 9, '10': 'downloadUrl'},
    {
      '1': 'parameterization',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.codegen.Parameterization',
      '10': 'parameterization'
    },
  ],
};

/// Descriptor for `GetSchemaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSchemaRequestDescriptor = $convert.base64Decode(
    'ChBHZXRTY2hlbWFSZXF1ZXN0EhgKB3BhY2thZ2UYASABKAlSB3BhY2thZ2USGAoHdmVyc2lvbh'
    'gCIAEoCVIHdmVyc2lvbhIhCgxkb3dubG9hZF91cmwYAyABKAlSC2Rvd25sb2FkVXJsEkUKEHBh'
    'cmFtZXRlcml6YXRpb24YBCABKAsyGS5jb2RlZ2VuLlBhcmFtZXRlcml6YXRpb25SEHBhcmFtZX'
    'Rlcml6YXRpb24=');

@$core.Deprecated('Use getSchemaResponseDescriptor instead')
const GetSchemaResponse$json = {
  '1': 'GetSchemaResponse',
  '2': [
    {'1': 'schema', '3': 1, '4': 1, '5': 12, '10': 'schema'},
  ],
};

/// Descriptor for `GetSchemaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSchemaResponseDescriptor = $convert.base64Decode(
    'ChFHZXRTY2hlbWFSZXNwb25zZRIWCgZzY2hlbWEYASABKAxSBnNjaGVtYQ==');
