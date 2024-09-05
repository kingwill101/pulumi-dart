//
//  Generated code. Do not modify.
//  source: pulumi/plugin.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pluginInfoDescriptor instead')
const PluginInfo$json = {
  '1': 'PluginInfo',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `PluginInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pluginInfoDescriptor = $convert
    .base64Decode('CgpQbHVnaW5JbmZvEhgKB3ZlcnNpb24YASABKAlSB3ZlcnNpb24=');

@$core.Deprecated('Use pluginDependencyDescriptor instead')
const PluginDependency$json = {
  '1': 'PluginDependency',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    {'1': 'server', '3': 4, '4': 1, '5': 9, '10': 'server'},
    {
      '1': 'checksums',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.PluginDependency.ChecksumsEntry',
      '10': 'checksums'
    },
  ],
  '3': [PluginDependency_ChecksumsEntry$json],
};

@$core.Deprecated('Use pluginDependencyDescriptor instead')
const PluginDependency_ChecksumsEntry$json = {
  '1': 'ChecksumsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PluginDependency`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pluginDependencyDescriptor = $convert.base64Decode(
    'ChBQbHVnaW5EZXBlbmRlbmN5EhIKBG5hbWUYASABKAlSBG5hbWUSEgoEa2luZBgCIAEoCVIEa2'
    'luZBIYCgd2ZXJzaW9uGAMgASgJUgd2ZXJzaW9uEhYKBnNlcnZlchgEIAEoCVIGc2VydmVyEkgK'
    'CWNoZWNrc3VtcxgFIAMoCzIqLnB1bHVtaXJwYy5QbHVnaW5EZXBlbmRlbmN5LkNoZWNrc3Vtc0'
    'VudHJ5UgljaGVja3N1bXMaPAoOQ2hlY2tzdW1zRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoF'
    'dmFsdWUYAiABKAxSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use pluginAttachDescriptor instead')
const PluginAttach$json = {
  '1': 'PluginAttach',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `PluginAttach`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pluginAttachDescriptor = $convert
    .base64Decode('CgxQbHVnaW5BdHRhY2gSGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcw==');
