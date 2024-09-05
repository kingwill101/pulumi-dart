//
//  Generated code. Do not modify.
//  source: pulumi/codegen/mapper.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getMappingRequestDescriptor instead')
const GetMappingRequest$json = {
  '1': 'GetMappingRequest',
  '2': [
    {'1': 'provider', '3': 1, '4': 1, '5': 9, '10': 'provider'},
    {'1': 'pulumi_provider', '3': 2, '4': 1, '5': 9, '10': 'pulumiProvider'},
  ],
};

/// Descriptor for `GetMappingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMappingRequestDescriptor = $convert.base64Decode(
    'ChFHZXRNYXBwaW5nUmVxdWVzdBIaCghwcm92aWRlchgBIAEoCVIIcHJvdmlkZXISJwoPcHVsdW'
    '1pX3Byb3ZpZGVyGAIgASgJUg5wdWx1bWlQcm92aWRlcg==');

@$core.Deprecated('Use getMappingResponseDescriptor instead')
const GetMappingResponse$json = {
  '1': 'GetMappingResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `GetMappingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMappingResponseDescriptor = $convert
    .base64Decode('ChJHZXRNYXBwaW5nUmVzcG9uc2USEgoEZGF0YRgBIAEoDFIEZGF0YQ==');
