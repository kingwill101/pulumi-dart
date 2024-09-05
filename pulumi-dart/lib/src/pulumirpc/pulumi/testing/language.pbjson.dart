//
//  Generated code. Do not modify.
//  source: pulumi/testing/language.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getLanguageTestsRequestDescriptor instead')
const GetLanguageTestsRequest$json = {
  '1': 'GetLanguageTestsRequest',
};

/// Descriptor for `GetLanguageTestsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLanguageTestsRequestDescriptor =
    $convert.base64Decode('ChdHZXRMYW5ndWFnZVRlc3RzUmVxdWVzdA==');

@$core.Deprecated('Use getLanguageTestsResponseDescriptor instead')
const GetLanguageTestsResponse$json = {
  '1': 'GetLanguageTestsResponse',
  '2': [
    {'1': 'tests', '3': 1, '4': 3, '5': 9, '10': 'tests'},
  ],
};

/// Descriptor for `GetLanguageTestsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLanguageTestsResponseDescriptor =
    $convert.base64Decode(
        'ChhHZXRMYW5ndWFnZVRlc3RzUmVzcG9uc2USFAoFdGVzdHMYASADKAlSBXRlc3Rz');

@$core.Deprecated('Use prepareLanguageTestsRequestDescriptor instead')
const PrepareLanguageTestsRequest$json = {
  '1': 'PrepareLanguageTestsRequest',
  '2': [
    {
      '1': 'language_plugin_name',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'languagePluginName'
    },
    {
      '1': 'language_plugin_target',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'languagePluginTarget'
    },
    {
      '1': 'snapshot_directory',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'snapshotDirectory'
    },
    {
      '1': 'temporary_directory',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'temporaryDirectory'
    },
    {
      '1': 'core_sdk_directory',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'coreSdkDirectory'
    },
    {'1': 'core_sdk_version', '3': 6, '4': 1, '5': 9, '10': 'coreSdkVersion'},
    {
      '1': 'snapshot_edits',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.testing.PrepareLanguageTestsRequest.Replacement',
      '10': 'snapshotEdits'
    },
  ],
  '3': [PrepareLanguageTestsRequest_Replacement$json],
};

@$core.Deprecated('Use prepareLanguageTestsRequestDescriptor instead')
const PrepareLanguageTestsRequest_Replacement$json = {
  '1': 'Replacement',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'pattern', '3': 2, '4': 1, '5': 9, '10': 'pattern'},
    {'1': 'replacement', '3': 3, '4': 1, '5': 9, '10': 'replacement'},
  ],
};

/// Descriptor for `PrepareLanguageTestsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prepareLanguageTestsRequestDescriptor = $convert.base64Decode(
    'ChtQcmVwYXJlTGFuZ3VhZ2VUZXN0c1JlcXVlc3QSMAoUbGFuZ3VhZ2VfcGx1Z2luX25hbWUYAS'
    'ABKAlSEmxhbmd1YWdlUGx1Z2luTmFtZRI0ChZsYW5ndWFnZV9wbHVnaW5fdGFyZ2V0GAIgASgJ'
    'UhRsYW5ndWFnZVBsdWdpblRhcmdldBItChJzbmFwc2hvdF9kaXJlY3RvcnkYAyABKAlSEXNuYX'
    'BzaG90RGlyZWN0b3J5Ei8KE3RlbXBvcmFyeV9kaXJlY3RvcnkYBCABKAlSEnRlbXBvcmFyeURp'
    'cmVjdG9yeRIsChJjb3JlX3Nka19kaXJlY3RvcnkYBSABKAlSEGNvcmVTZGtEaXJlY3RvcnkSKA'
    'oQY29yZV9zZGtfdmVyc2lvbhgGIAEoCVIOY29yZVNka1ZlcnNpb24SYQoOc25hcHNob3RfZWRp'
    'dHMYByADKAsyOi5wdWx1bWlycGMudGVzdGluZy5QcmVwYXJlTGFuZ3VhZ2VUZXN0c1JlcXVlc3'
    'QuUmVwbGFjZW1lbnRSDXNuYXBzaG90RWRpdHMaXQoLUmVwbGFjZW1lbnQSEgoEcGF0aBgBIAEo'
    'CVIEcGF0aBIYCgdwYXR0ZXJuGAIgASgJUgdwYXR0ZXJuEiAKC3JlcGxhY2VtZW50GAMgASgJUg'
    'tyZXBsYWNlbWVudA==');

@$core.Deprecated('Use prepareLanguageTestsResponseDescriptor instead')
const PrepareLanguageTestsResponse$json = {
  '1': 'PrepareLanguageTestsResponse',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `PrepareLanguageTestsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prepareLanguageTestsResponseDescriptor =
    $convert.base64Decode(
        'ChxQcmVwYXJlTGFuZ3VhZ2VUZXN0c1Jlc3BvbnNlEhQKBXRva2VuGAEgASgJUgV0b2tlbg==');

@$core.Deprecated('Use runLanguageTestRequestDescriptor instead')
const RunLanguageTestRequest$json = {
  '1': 'RunLanguageTestRequest',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'test', '3': 2, '4': 1, '5': 9, '10': 'test'},
  ],
};

/// Descriptor for `RunLanguageTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runLanguageTestRequestDescriptor =
    $convert.base64Decode(
        'ChZSdW5MYW5ndWFnZVRlc3RSZXF1ZXN0EhQKBXRva2VuGAEgASgJUgV0b2tlbhISCgR0ZXN0GA'
        'IgASgJUgR0ZXN0');

@$core.Deprecated('Use runLanguageTestResponseDescriptor instead')
const RunLanguageTestResponse$json = {
  '1': 'RunLanguageTestResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'messages', '3': 2, '4': 3, '5': 9, '10': 'messages'},
    {'1': 'stdout', '3': 3, '4': 1, '5': 9, '10': 'stdout'},
    {'1': 'stderr', '3': 4, '4': 1, '5': 9, '10': 'stderr'},
  ],
};

/// Descriptor for `RunLanguageTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runLanguageTestResponseDescriptor = $convert.base64Decode(
    'ChdSdW5MYW5ndWFnZVRlc3RSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhoKCG'
    '1lc3NhZ2VzGAIgAygJUghtZXNzYWdlcxIWCgZzdGRvdXQYAyABKAlSBnN0ZG91dBIWCgZzdGRl'
    'cnIYBCABKAlSBnN0ZGVycg==');
