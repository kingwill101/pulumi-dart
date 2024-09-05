//
//  Generated code. Do not modify.
//  source: pulumi/alias.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use aliasDescriptor instead')
const Alias$json = {
  '1': 'Alias',
  '2': [
    {'1': 'urn', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'urn'},
    {
      '1': 'spec',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.Alias.Spec',
      '9': 0,
      '10': 'spec'
    },
  ],
  '3': [Alias_Spec$json],
  '8': [
    {'1': 'alias'},
  ],
};

@$core.Deprecated('Use aliasDescriptor instead')
const Alias_Spec$json = {
  '1': 'Spec',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    {'1': 'stack', '3': 3, '4': 1, '5': 9, '10': 'stack'},
    {'1': 'project', '3': 4, '4': 1, '5': 9, '10': 'project'},
    {'1': 'parentUrn', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'parentUrn'},
    {'1': 'noParent', '3': 6, '4': 1, '5': 8, '9': 0, '10': 'noParent'},
  ],
  '8': [
    {'1': 'parent'},
  ],
};

/// Descriptor for `Alias`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aliasDescriptor = $convert.base64Decode(
    'CgVBbGlhcxISCgN1cm4YASABKAlIAFIDdXJuEisKBHNwZWMYAiABKAsyFS5wdWx1bWlycGMuQW'
    'xpYXMuU3BlY0gAUgRzcGVjGqYBCgRTcGVjEhIKBG5hbWUYASABKAlSBG5hbWUSEgoEdHlwZRgC'
    'IAEoCVIEdHlwZRIUCgVzdGFjaxgDIAEoCVIFc3RhY2sSGAoHcHJvamVjdBgEIAEoCVIHcHJvam'
    'VjdBIeCglwYXJlbnRVcm4YBSABKAlIAFIJcGFyZW50VXJuEhwKCG5vUGFyZW50GAYgASgISABS'
    'CG5vUGFyZW50QggKBnBhcmVudEIHCgVhbGlhcw==');
