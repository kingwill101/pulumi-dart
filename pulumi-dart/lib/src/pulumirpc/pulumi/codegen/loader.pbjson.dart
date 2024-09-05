//
//  Generated code. Do not modify.
//  source: pulumi/codegen/loader.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getSchemaRequestDescriptor instead')
const GetSchemaRequest$json = {
  '1': 'GetSchemaRequest',
  '2': [
    {'1': 'package', '3': 1, '4': 1, '5': 9, '10': 'package'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `GetSchemaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSchemaRequestDescriptor = $convert.base64Decode(
    'ChBHZXRTY2hlbWFSZXF1ZXN0EhgKB3BhY2thZ2UYASABKAlSB3BhY2thZ2USGAoHdmVyc2lvbh'
    'gCIAEoCVIHdmVyc2lvbg==');

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
