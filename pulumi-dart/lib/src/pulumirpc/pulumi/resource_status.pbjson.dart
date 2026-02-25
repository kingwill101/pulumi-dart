// This is a generated file - do not edit.
//
// Generated from pulumi/resource_status.proto.

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

@$core.Deprecated('Use publishViewStepsRequestDescriptor instead')
const PublishViewStepsRequest$json = {
  '1': 'PublishViewStepsRequest',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {
      '1': 'steps',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ViewStep',
      '10': 'steps'
    },
  ],
};

/// Descriptor for `PublishViewStepsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishViewStepsRequestDescriptor =
    $convert.base64Decode(
        'ChdQdWJsaXNoVmlld1N0ZXBzUmVxdWVzdBIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SKQoFc3RlcH'
        'MYAiADKAsyEy5wdWx1bWlycGMuVmlld1N0ZXBSBXN0ZXBz');

@$core.Deprecated('Use publishViewStepsResponseDescriptor instead')
const PublishViewStepsResponse$json = {
  '1': 'PublishViewStepsResponse',
};

/// Descriptor for `PublishViewStepsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishViewStepsResponseDescriptor =
    $convert.base64Decode('ChhQdWJsaXNoVmlld1N0ZXBzUmVzcG9uc2U=');

@$core.Deprecated('Use viewStepDescriptor instead')
const ViewStep$json = {
  '1': 'ViewStep',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.ViewStep.Status',
      '10': 'status'
    },
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
    {
      '1': 'op',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.ViewStep.Op',
      '10': 'op'
    },
    {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
    {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'old',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ViewStepState',
      '10': 'old'
    },
    {
      '1': 'new',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ViewStepState',
      '10': 'new'
    },
    {'1': 'keys', '3': 8, '4': 3, '5': 9, '10': 'keys'},
    {'1': 'diffs', '3': 9, '4': 3, '5': 9, '10': 'diffs'},
    {
      '1': 'detailed_diff',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ViewStep.DetailedDiffEntry',
      '10': 'detailedDiff'
    },
    {
      '1': 'has_detailed_diff',
      '3': 11,
      '4': 1,
      '5': 8,
      '10': 'hasDetailedDiff'
    },
  ],
  '3': [ViewStep_DetailedDiffEntry$json],
  '4': [ViewStep_Op$json, ViewStep_Status$json],
};

@$core.Deprecated('Use viewStepDescriptor instead')
const ViewStep_DetailedDiffEntry$json = {
  '1': 'DetailedDiffEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.PropertyDiff',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use viewStepDescriptor instead')
const ViewStep_Op$json = {
  '1': 'Op',
  '2': [
    {'1': 'UNSPECIFIED', '2': 0},
    {'1': 'SAME', '2': 1},
    {'1': 'CREATE', '2': 2},
    {'1': 'UPDATE', '2': 3},
    {'1': 'DELETE', '2': 4},
    {'1': 'REPLACE', '2': 5},
    {'1': 'CREATE_REPLACEMENT', '2': 6},
    {'1': 'DELETE_REPLACED', '2': 7},
    {'1': 'READ', '2': 8},
    {'1': 'READ_REPLACEMENT', '2': 9},
    {'1': 'REFRESH', '2': 10},
    {'1': 'READ_DISCARD', '2': 11},
    {'1': 'DISCARD_REPLACED', '2': 12},
    {'1': 'REMOVE_PENDING_REPLACE', '2': 13},
    {'1': 'IMPORT', '2': 14},
    {'1': 'IMPORT_REPLACEMENT', '2': 15},
  ],
};

@$core.Deprecated('Use viewStepDescriptor instead')
const ViewStep_Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'PARTIAL_FAILURE', '2': 1},
    {'1': 'UNKNOWN', '2': 2},
  ],
};

/// Descriptor for `ViewStep`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List viewStepDescriptor = $convert.base64Decode(
    'CghWaWV3U3RlcBIyCgZzdGF0dXMYASABKA4yGi5wdWx1bWlycGMuVmlld1N0ZXAuU3RhdHVzUg'
    'ZzdGF0dXMSFAoFZXJyb3IYAiABKAlSBWVycm9yEiYKAm9wGAMgASgOMhYucHVsdW1pcnBjLlZp'
    'ZXdTdGVwLk9wUgJvcBISCgR0eXBlGAQgASgJUgR0eXBlEhIKBG5hbWUYBSABKAlSBG5hbWUSKg'
    'oDb2xkGAYgASgLMhgucHVsdW1pcnBjLlZpZXdTdGVwU3RhdGVSA29sZBIqCgNuZXcYByABKAsy'
    'GC5wdWx1bWlycGMuVmlld1N0ZXBTdGF0ZVIDbmV3EhIKBGtleXMYCCADKAlSBGtleXMSFAoFZG'
    'lmZnMYCSADKAlSBWRpZmZzEkoKDWRldGFpbGVkX2RpZmYYCiADKAsyJS5wdWx1bWlycGMuVmll'
    'd1N0ZXAuRGV0YWlsZWREaWZmRW50cnlSDGRldGFpbGVkRGlmZhIqChFoYXNfZGV0YWlsZWRfZG'
    'lmZhgLIAEoCFIPaGFzRGV0YWlsZWREaWZmGlgKEURldGFpbGVkRGlmZkVudHJ5EhAKA2tleRgB'
    'IAEoCVIDa2V5Ei0KBXZhbHVlGAIgASgLMhcucHVsdW1pcnBjLlByb3BlcnR5RGlmZlIFdmFsdW'
    'U6AjgBIpICCgJPcBIPCgtVTlNQRUNJRklFRBAAEggKBFNBTUUQARIKCgZDUkVBVEUQAhIKCgZV'
    'UERBVEUQAxIKCgZERUxFVEUQBBILCgdSRVBMQUNFEAUSFgoSQ1JFQVRFX1JFUExBQ0VNRU5UEA'
    'YSEwoPREVMRVRFX1JFUExBQ0VEEAcSCAoEUkVBRBAIEhQKEFJFQURfUkVQTEFDRU1FTlQQCRIL'
    'CgdSRUZSRVNIEAoSEAoMUkVBRF9ESVNDQVJEEAsSFAoQRElTQ0FSRF9SRVBMQUNFRBAMEhoKFl'
    'JFTU9WRV9QRU5ESU5HX1JFUExBQ0UQDRIKCgZJTVBPUlQQDhIWChJJTVBPUlRfUkVQTEFDRU1F'
    'TlQQDyIyCgZTdGF0dXMSBgoCT0sQABITCg9QQVJUSUFMX0ZBSUxVUkUQARILCgdVTktOT1dOEA'
    'I=');

@$core.Deprecated('Use viewStepStateDescriptor instead')
const ViewStepState$json = {
  '1': 'ViewStepState',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'parent_type', '3': 3, '4': 1, '5': 9, '10': 'parentType'},
    {'1': 'parent_name', '3': 4, '4': 1, '5': 9, '10': 'parentName'},
    {
      '1': 'inputs',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'inputs'
    },
    {
      '1': 'outputs',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'outputs'
    },
  ],
};

/// Descriptor for `ViewStepState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List viewStepStateDescriptor = $convert.base64Decode(
    'Cg1WaWV3U3RlcFN0YXRlEhIKBHR5cGUYASABKAlSBHR5cGUSEgoEbmFtZRgCIAEoCVIEbmFtZR'
    'IfCgtwYXJlbnRfdHlwZRgDIAEoCVIKcGFyZW50VHlwZRIfCgtwYXJlbnRfbmFtZRgEIAEoCVIK'
    'cGFyZW50TmFtZRIvCgZpbnB1dHMYBSABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgZpbn'
    'B1dHMSMQoHb3V0cHV0cxgGIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSB291dHB1dHM=');
