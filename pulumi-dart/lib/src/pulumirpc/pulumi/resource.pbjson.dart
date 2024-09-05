//
//  Generated code. Do not modify.
//  source: pulumi/resource.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use resultDescriptor instead')
const Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'SUCCESS', '2': 0},
    {'1': 'FAIL', '2': 1},
    {'1': 'SKIP', '2': 2},
  ],
};

/// Descriptor for `Result`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resultDescriptor = $convert
    .base64Decode('CgZSZXN1bHQSCwoHU1VDQ0VTUxAAEggKBEZBSUwQARIICgRTS0lQEAI=');

@$core.Deprecated('Use supportsFeatureRequestDescriptor instead')
const SupportsFeatureRequest$json = {
  '1': 'SupportsFeatureRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `SupportsFeatureRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supportsFeatureRequestDescriptor = $convert
    .base64Decode('ChZTdXBwb3J0c0ZlYXR1cmVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use supportsFeatureResponseDescriptor instead')
const SupportsFeatureResponse$json = {
  '1': 'SupportsFeatureResponse',
  '2': [
    {'1': 'hasSupport', '3': 1, '4': 1, '5': 8, '10': 'hasSupport'},
  ],
};

/// Descriptor for `SupportsFeatureResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supportsFeatureResponseDescriptor =
    $convert.base64Decode(
        'ChdTdXBwb3J0c0ZlYXR1cmVSZXNwb25zZRIeCgpoYXNTdXBwb3J0GAEgASgIUgpoYXNTdXBwb3'
        'J0');

@$core.Deprecated('Use readResourceRequestDescriptor instead')
const ReadResourceRequest$json = {
  '1': 'ReadResourceRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'parent', '3': 4, '4': 1, '5': 9, '10': 'parent'},
    {
      '1': 'properties',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {'1': 'dependencies', '3': 6, '4': 3, '5': 9, '10': 'dependencies'},
    {'1': 'provider', '3': 7, '4': 1, '5': 9, '10': 'provider'},
    {'1': 'version', '3': 8, '4': 1, '5': 9, '10': 'version'},
    {'1': 'acceptSecrets', '3': 9, '4': 1, '5': 8, '10': 'acceptSecrets'},
    {
      '1': 'additionalSecretOutputs',
      '3': 10,
      '4': 3,
      '5': 9,
      '10': 'additionalSecretOutputs'
    },
    {'1': 'acceptResources', '3': 12, '4': 1, '5': 8, '10': 'acceptResources'},
    {
      '1': 'pluginDownloadURL',
      '3': 13,
      '4': 1,
      '5': 9,
      '10': 'pluginDownloadURL'
    },
    {
      '1': 'pluginChecksums',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ReadResourceRequest.PluginChecksumsEntry',
      '10': 'pluginChecksums'
    },
    {
      '1': 'sourcePosition',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.SourcePosition',
      '10': 'sourcePosition'
    },
    {'1': 'packageRef', '3': 16, '4': 1, '5': 9, '10': 'packageRef'},
  ],
  '3': [ReadResourceRequest_PluginChecksumsEntry$json],
  '9': [
    {'1': 11, '2': 12},
  ],
  '10': ['aliases'],
};

@$core.Deprecated('Use readResourceRequestDescriptor instead')
const ReadResourceRequest_PluginChecksumsEntry$json = {
  '1': 'PluginChecksumsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ReadResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readResourceRequestDescriptor = $convert.base64Decode(
    'ChNSZWFkUmVzb3VyY2VSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBISCgR0eXBlGAIgASgJUgR0eX'
    'BlEhIKBG5hbWUYAyABKAlSBG5hbWUSFgoGcGFyZW50GAQgASgJUgZwYXJlbnQSNwoKcHJvcGVy'
    'dGllcxgFIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCnByb3BlcnRpZXMSIgoMZGVwZW'
    '5kZW5jaWVzGAYgAygJUgxkZXBlbmRlbmNpZXMSGgoIcHJvdmlkZXIYByABKAlSCHByb3ZpZGVy'
    'EhgKB3ZlcnNpb24YCCABKAlSB3ZlcnNpb24SJAoNYWNjZXB0U2VjcmV0cxgJIAEoCFINYWNjZX'
    'B0U2VjcmV0cxI4ChdhZGRpdGlvbmFsU2VjcmV0T3V0cHV0cxgKIAMoCVIXYWRkaXRpb25hbFNl'
    'Y3JldE91dHB1dHMSKAoPYWNjZXB0UmVzb3VyY2VzGAwgASgIUg9hY2NlcHRSZXNvdXJjZXMSLA'
    'oRcGx1Z2luRG93bmxvYWRVUkwYDSABKAlSEXBsdWdpbkRvd25sb2FkVVJMEl0KD3BsdWdpbkNo'
    'ZWNrc3VtcxgPIAMoCzIzLnB1bHVtaXJwYy5SZWFkUmVzb3VyY2VSZXF1ZXN0LlBsdWdpbkNoZW'
    'Nrc3Vtc0VudHJ5Ug9wbHVnaW5DaGVja3N1bXMSQQoOc291cmNlUG9zaXRpb24YDiABKAsyGS5w'
    'dWx1bWlycGMuU291cmNlUG9zaXRpb25SDnNvdXJjZVBvc2l0aW9uEh4KCnBhY2thZ2VSZWYYEC'
    'ABKAlSCnBhY2thZ2VSZWYaQgoUUGx1Z2luQ2hlY2tzdW1zRW50cnkSEAoDa2V5GAEgASgJUgNr'
    'ZXkSFAoFdmFsdWUYAiABKAxSBXZhbHVlOgI4AUoECAsQDFIHYWxpYXNlcw==');

@$core.Deprecated('Use readResourceResponseDescriptor instead')
const ReadResourceResponse$json = {
  '1': 'ReadResourceResponse',
  '2': [
    {'1': 'urn', '3': 1, '4': 1, '5': 9, '10': 'urn'},
    {
      '1': 'properties',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
  ],
};

/// Descriptor for `ReadResourceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readResourceResponseDescriptor = $convert.base64Decode(
    'ChRSZWFkUmVzb3VyY2VSZXNwb25zZRIQCgN1cm4YASABKAlSA3VybhI3Cgpwcm9wZXJ0aWVzGA'
    'IgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKcHJvcGVydGllcw==');

@$core.Deprecated('Use registerResourceRequestDescriptor instead')
const RegisterResourceRequest$json = {
  '1': 'RegisterResourceRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'parent', '3': 3, '4': 1, '5': 9, '10': 'parent'},
    {'1': 'custom', '3': 4, '4': 1, '5': 8, '10': 'custom'},
    {
      '1': 'object',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'object'
    },
    {'1': 'protect', '3': 6, '4': 1, '5': 8, '10': 'protect'},
    {'1': 'dependencies', '3': 7, '4': 3, '5': 9, '10': 'dependencies'},
    {'1': 'provider', '3': 8, '4': 1, '5': 9, '10': 'provider'},
    {
      '1': 'propertyDependencies',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.RegisterResourceRequest.PropertyDependenciesEntry',
      '10': 'propertyDependencies'
    },
    {
      '1': 'deleteBeforeReplace',
      '3': 10,
      '4': 1,
      '5': 8,
      '10': 'deleteBeforeReplace'
    },
    {'1': 'version', '3': 11, '4': 1, '5': 9, '10': 'version'},
    {'1': 'ignoreChanges', '3': 12, '4': 3, '5': 9, '10': 'ignoreChanges'},
    {'1': 'acceptSecrets', '3': 13, '4': 1, '5': 8, '10': 'acceptSecrets'},
    {
      '1': 'additionalSecretOutputs',
      '3': 14,
      '4': 3,
      '5': 9,
      '10': 'additionalSecretOutputs'
    },
    {'1': 'aliasURNs', '3': 15, '4': 3, '5': 9, '10': 'aliasURNs'},
    {'1': 'importId', '3': 16, '4': 1, '5': 9, '10': 'importId'},
    {
      '1': 'customTimeouts',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.RegisterResourceRequest.CustomTimeouts',
      '10': 'customTimeouts'
    },
    {
      '1': 'deleteBeforeReplaceDefined',
      '3': 18,
      '4': 1,
      '5': 8,
      '10': 'deleteBeforeReplaceDefined'
    },
    {
      '1': 'supportsPartialValues',
      '3': 19,
      '4': 1,
      '5': 8,
      '10': 'supportsPartialValues'
    },
    {'1': 'remote', '3': 20, '4': 1, '5': 8, '10': 'remote'},
    {'1': 'acceptResources', '3': 21, '4': 1, '5': 8, '10': 'acceptResources'},
    {
      '1': 'providers',
      '3': 22,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.RegisterResourceRequest.ProvidersEntry',
      '10': 'providers'
    },
    {
      '1': 'replaceOnChanges',
      '3': 23,
      '4': 3,
      '5': 9,
      '10': 'replaceOnChanges'
    },
    {
      '1': 'pluginDownloadURL',
      '3': 24,
      '4': 1,
      '5': 9,
      '10': 'pluginDownloadURL'
    },
    {
      '1': 'pluginChecksums',
      '3': 30,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.RegisterResourceRequest.PluginChecksumsEntry',
      '10': 'pluginChecksums'
    },
    {'1': 'retainOnDelete', '3': 25, '4': 1, '5': 8, '10': 'retainOnDelete'},
    {
      '1': 'aliases',
      '3': 26,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.Alias',
      '10': 'aliases'
    },
    {'1': 'deletedWith', '3': 27, '4': 1, '5': 9, '10': 'deletedWith'},
    {'1': 'aliasSpecs', '3': 28, '4': 1, '5': 8, '10': 'aliasSpecs'},
    {
      '1': 'sourcePosition',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.SourcePosition',
      '10': 'sourcePosition'
    },
    {
      '1': 'transforms',
      '3': 31,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.Callback',
      '10': 'transforms'
    },
    {
      '1': 'supportsResultReporting',
      '3': 32,
      '4': 1,
      '5': 8,
      '10': 'supportsResultReporting'
    },
    {'1': 'packageRef', '3': 33, '4': 1, '5': 9, '10': 'packageRef'},
  ],
  '3': [
    RegisterResourceRequest_PropertyDependencies$json,
    RegisterResourceRequest_CustomTimeouts$json,
    RegisterResourceRequest_PropertyDependenciesEntry$json,
    RegisterResourceRequest_ProvidersEntry$json,
    RegisterResourceRequest_PluginChecksumsEntry$json
  ],
};

@$core.Deprecated('Use registerResourceRequestDescriptor instead')
const RegisterResourceRequest_PropertyDependencies$json = {
  '1': 'PropertyDependencies',
  '2': [
    {'1': 'urns', '3': 1, '4': 3, '5': 9, '10': 'urns'},
  ],
};

@$core.Deprecated('Use registerResourceRequestDescriptor instead')
const RegisterResourceRequest_CustomTimeouts$json = {
  '1': 'CustomTimeouts',
  '2': [
    {'1': 'create', '3': 1, '4': 1, '5': 9, '10': 'create'},
    {'1': 'update', '3': 2, '4': 1, '5': 9, '10': 'update'},
    {'1': 'delete', '3': 3, '4': 1, '5': 9, '10': 'delete'},
  ],
};

@$core.Deprecated('Use registerResourceRequestDescriptor instead')
const RegisterResourceRequest_PropertyDependenciesEntry$json = {
  '1': 'PropertyDependenciesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.RegisterResourceRequest.PropertyDependencies',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use registerResourceRequestDescriptor instead')
const RegisterResourceRequest_ProvidersEntry$json = {
  '1': 'ProvidersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use registerResourceRequestDescriptor instead')
const RegisterResourceRequest_PluginChecksumsEntry$json = {
  '1': 'PluginChecksumsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `RegisterResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResourceRequestDescriptor = $convert.base64Decode(
    'ChdSZWdpc3RlclJlc291cmNlUmVxdWVzdBISCgR0eXBlGAEgASgJUgR0eXBlEhIKBG5hbWUYAi'
    'ABKAlSBG5hbWUSFgoGcGFyZW50GAMgASgJUgZwYXJlbnQSFgoGY3VzdG9tGAQgASgIUgZjdXN0'
    'b20SLwoGb2JqZWN0GAUgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIGb2JqZWN0EhgKB3'
    'Byb3RlY3QYBiABKAhSB3Byb3RlY3QSIgoMZGVwZW5kZW5jaWVzGAcgAygJUgxkZXBlbmRlbmNp'
    'ZXMSGgoIcHJvdmlkZXIYCCABKAlSCHByb3ZpZGVyEnAKFHByb3BlcnR5RGVwZW5kZW5jaWVzGA'
    'kgAygLMjwucHVsdW1pcnBjLlJlZ2lzdGVyUmVzb3VyY2VSZXF1ZXN0LlByb3BlcnR5RGVwZW5k'
    'ZW5jaWVzRW50cnlSFHByb3BlcnR5RGVwZW5kZW5jaWVzEjAKE2RlbGV0ZUJlZm9yZVJlcGxhY2'
    'UYCiABKAhSE2RlbGV0ZUJlZm9yZVJlcGxhY2USGAoHdmVyc2lvbhgLIAEoCVIHdmVyc2lvbhIk'
    'Cg1pZ25vcmVDaGFuZ2VzGAwgAygJUg1pZ25vcmVDaGFuZ2VzEiQKDWFjY2VwdFNlY3JldHMYDS'
    'ABKAhSDWFjY2VwdFNlY3JldHMSOAoXYWRkaXRpb25hbFNlY3JldE91dHB1dHMYDiADKAlSF2Fk'
    'ZGl0aW9uYWxTZWNyZXRPdXRwdXRzEhwKCWFsaWFzVVJOcxgPIAMoCVIJYWxpYXNVUk5zEhoKCG'
    'ltcG9ydElkGBAgASgJUghpbXBvcnRJZBJZCg5jdXN0b21UaW1lb3V0cxgRIAEoCzIxLnB1bHVt'
    'aXJwYy5SZWdpc3RlclJlc291cmNlUmVxdWVzdC5DdXN0b21UaW1lb3V0c1IOY3VzdG9tVGltZW'
    '91dHMSPgoaZGVsZXRlQmVmb3JlUmVwbGFjZURlZmluZWQYEiABKAhSGmRlbGV0ZUJlZm9yZVJl'
    'cGxhY2VEZWZpbmVkEjQKFXN1cHBvcnRzUGFydGlhbFZhbHVlcxgTIAEoCFIVc3VwcG9ydHNQYX'
    'J0aWFsVmFsdWVzEhYKBnJlbW90ZRgUIAEoCFIGcmVtb3RlEigKD2FjY2VwdFJlc291cmNlcxgV'
    'IAEoCFIPYWNjZXB0UmVzb3VyY2VzEk8KCXByb3ZpZGVycxgWIAMoCzIxLnB1bHVtaXJwYy5SZW'
    'dpc3RlclJlc291cmNlUmVxdWVzdC5Qcm92aWRlcnNFbnRyeVIJcHJvdmlkZXJzEioKEHJlcGxh'
    'Y2VPbkNoYW5nZXMYFyADKAlSEHJlcGxhY2VPbkNoYW5nZXMSLAoRcGx1Z2luRG93bmxvYWRVUk'
    'wYGCABKAlSEXBsdWdpbkRvd25sb2FkVVJMEmEKD3BsdWdpbkNoZWNrc3VtcxgeIAMoCzI3LnB1'
    'bHVtaXJwYy5SZWdpc3RlclJlc291cmNlUmVxdWVzdC5QbHVnaW5DaGVja3N1bXNFbnRyeVIPcG'
    'x1Z2luQ2hlY2tzdW1zEiYKDnJldGFpbk9uRGVsZXRlGBkgASgIUg5yZXRhaW5PbkRlbGV0ZRIq'
    'CgdhbGlhc2VzGBogAygLMhAucHVsdW1pcnBjLkFsaWFzUgdhbGlhc2VzEiAKC2RlbGV0ZWRXaX'
    'RoGBsgASgJUgtkZWxldGVkV2l0aBIeCgphbGlhc1NwZWNzGBwgASgIUgphbGlhc1NwZWNzEkEK'
    'DnNvdXJjZVBvc2l0aW9uGB0gASgLMhkucHVsdW1pcnBjLlNvdXJjZVBvc2l0aW9uUg5zb3VyY2'
    'VQb3NpdGlvbhIzCgp0cmFuc2Zvcm1zGB8gAygLMhMucHVsdW1pcnBjLkNhbGxiYWNrUgp0cmFu'
    'c2Zvcm1zEjgKF3N1cHBvcnRzUmVzdWx0UmVwb3J0aW5nGCAgASgIUhdzdXBwb3J0c1Jlc3VsdF'
    'JlcG9ydGluZxIeCgpwYWNrYWdlUmVmGCEgASgJUgpwYWNrYWdlUmVmGioKFFByb3BlcnR5RGVw'
    'ZW5kZW5jaWVzEhIKBHVybnMYASADKAlSBHVybnMaWAoOQ3VzdG9tVGltZW91dHMSFgoGY3JlYX'
    'RlGAEgASgJUgZjcmVhdGUSFgoGdXBkYXRlGAIgASgJUgZ1cGRhdGUSFgoGZGVsZXRlGAMgASgJ'
    'UgZkZWxldGUagAEKGVByb3BlcnR5RGVwZW5kZW5jaWVzRW50cnkSEAoDa2V5GAEgASgJUgNrZX'
    'kSTQoFdmFsdWUYAiABKAsyNy5wdWx1bWlycGMuUmVnaXN0ZXJSZXNvdXJjZVJlcXVlc3QuUHJv'
    'cGVydHlEZXBlbmRlbmNpZXNSBXZhbHVlOgI4ARo8Cg5Qcm92aWRlcnNFbnRyeRIQCgNrZXkYAS'
    'ABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGkIKFFBsdWdpbkNoZWNrc3Vtc0Vu'
    'dHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use registerResourceResponseDescriptor instead')
const RegisterResourceResponse$json = {
  '1': 'RegisterResourceResponse',
  '2': [
    {'1': 'urn', '3': 1, '4': 1, '5': 9, '10': 'urn'},
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'object',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'object'
    },
    {'1': 'stable', '3': 4, '4': 1, '5': 8, '10': 'stable'},
    {'1': 'stables', '3': 5, '4': 3, '5': 9, '10': 'stables'},
    {
      '1': 'propertyDependencies',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.RegisterResourceResponse.PropertyDependenciesEntry',
      '10': 'propertyDependencies'
    },
    {
      '1': 'result',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.Result',
      '10': 'result'
    },
  ],
  '3': [
    RegisterResourceResponse_PropertyDependencies$json,
    RegisterResourceResponse_PropertyDependenciesEntry$json
  ],
};

@$core.Deprecated('Use registerResourceResponseDescriptor instead')
const RegisterResourceResponse_PropertyDependencies$json = {
  '1': 'PropertyDependencies',
  '2': [
    {'1': 'urns', '3': 1, '4': 3, '5': 9, '10': 'urns'},
  ],
};

@$core.Deprecated('Use registerResourceResponseDescriptor instead')
const RegisterResourceResponse_PropertyDependenciesEntry$json = {
  '1': 'PropertyDependenciesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.RegisterResourceResponse.PropertyDependencies',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `RegisterResourceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResourceResponseDescriptor = $convert.base64Decode(
    'ChhSZWdpc3RlclJlc291cmNlUmVzcG9uc2USEAoDdXJuGAEgASgJUgN1cm4SDgoCaWQYAiABKA'
    'lSAmlkEi8KBm9iamVjdBgDIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSBm9iamVjdBIW'
    'CgZzdGFibGUYBCABKAhSBnN0YWJsZRIYCgdzdGFibGVzGAUgAygJUgdzdGFibGVzEnEKFHByb3'
    'BlcnR5RGVwZW5kZW5jaWVzGAYgAygLMj0ucHVsdW1pcnBjLlJlZ2lzdGVyUmVzb3VyY2VSZXNw'
    'b25zZS5Qcm9wZXJ0eURlcGVuZGVuY2llc0VudHJ5UhRwcm9wZXJ0eURlcGVuZGVuY2llcxIpCg'
    'ZyZXN1bHQYByABKA4yES5wdWx1bWlycGMuUmVzdWx0UgZyZXN1bHQaKgoUUHJvcGVydHlEZXBl'
    'bmRlbmNpZXMSEgoEdXJucxgBIAMoCVIEdXJucxqBAQoZUHJvcGVydHlEZXBlbmRlbmNpZXNFbn'
    'RyeRIQCgNrZXkYASABKAlSA2tleRJOCgV2YWx1ZRgCIAEoCzI4LnB1bHVtaXJwYy5SZWdpc3Rl'
    'clJlc291cmNlUmVzcG9uc2UuUHJvcGVydHlEZXBlbmRlbmNpZXNSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use registerResourceOutputsRequestDescriptor instead')
const RegisterResourceOutputsRequest$json = {
  '1': 'RegisterResourceOutputsRequest',
  '2': [
    {'1': 'urn', '3': 1, '4': 1, '5': 9, '10': 'urn'},
    {
      '1': 'outputs',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'outputs'
    },
  ],
};

/// Descriptor for `RegisterResourceOutputsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResourceOutputsRequestDescriptor =
    $convert.base64Decode(
        'Ch5SZWdpc3RlclJlc291cmNlT3V0cHV0c1JlcXVlc3QSEAoDdXJuGAEgASgJUgN1cm4SMQoHb3'
        'V0cHV0cxgCIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSB291dHB1dHM=');

@$core.Deprecated('Use resourceInvokeRequestDescriptor instead')
const ResourceInvokeRequest$json = {
  '1': 'ResourceInvokeRequest',
  '2': [
    {'1': 'tok', '3': 1, '4': 1, '5': 9, '10': 'tok'},
    {
      '1': 'args',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'args'
    },
    {'1': 'provider', '3': 3, '4': 1, '5': 9, '10': 'provider'},
    {'1': 'version', '3': 4, '4': 1, '5': 9, '10': 'version'},
    {'1': 'acceptResources', '3': 5, '4': 1, '5': 8, '10': 'acceptResources'},
    {
      '1': 'pluginDownloadURL',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'pluginDownloadURL'
    },
    {
      '1': 'pluginChecksums',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ResourceInvokeRequest.PluginChecksumsEntry',
      '10': 'pluginChecksums'
    },
    {
      '1': 'sourcePosition',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.SourcePosition',
      '10': 'sourcePosition'
    },
    {'1': 'packageRef', '3': 9, '4': 1, '5': 9, '10': 'packageRef'},
  ],
  '3': [ResourceInvokeRequest_PluginChecksumsEntry$json],
};

@$core.Deprecated('Use resourceInvokeRequestDescriptor instead')
const ResourceInvokeRequest_PluginChecksumsEntry$json = {
  '1': 'PluginChecksumsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ResourceInvokeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceInvokeRequestDescriptor = $convert.base64Decode(
    'ChVSZXNvdXJjZUludm9rZVJlcXVlc3QSEAoDdG9rGAEgASgJUgN0b2sSKwoEYXJncxgCIAEoCz'
    'IXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSBGFyZ3MSGgoIcHJvdmlkZXIYAyABKAlSCHByb3Zp'
    'ZGVyEhgKB3ZlcnNpb24YBCABKAlSB3ZlcnNpb24SKAoPYWNjZXB0UmVzb3VyY2VzGAUgASgIUg'
    '9hY2NlcHRSZXNvdXJjZXMSLAoRcGx1Z2luRG93bmxvYWRVUkwYBiABKAlSEXBsdWdpbkRvd25s'
    'b2FkVVJMEl8KD3BsdWdpbkNoZWNrc3VtcxgIIAMoCzI1LnB1bHVtaXJwYy5SZXNvdXJjZUludm'
    '9rZVJlcXVlc3QuUGx1Z2luQ2hlY2tzdW1zRW50cnlSD3BsdWdpbkNoZWNrc3VtcxJBCg5zb3Vy'
    'Y2VQb3NpdGlvbhgHIAEoCzIZLnB1bHVtaXJwYy5Tb3VyY2VQb3NpdGlvblIOc291cmNlUG9zaX'
    'Rpb24SHgoKcGFja2FnZVJlZhgJIAEoCVIKcGFja2FnZVJlZhpCChRQbHVnaW5DaGVja3N1bXNF'
    'bnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoDFIFdmFsdWU6AjgB');

@$core.Deprecated('Use resourceCallRequestDescriptor instead')
const ResourceCallRequest$json = {
  '1': 'ResourceCallRequest',
  '2': [
    {'1': 'tok', '3': 1, '4': 1, '5': 9, '10': 'tok'},
    {
      '1': 'args',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'args'
    },
    {
      '1': 'argDependencies',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ResourceCallRequest.ArgDependenciesEntry',
      '10': 'argDependencies'
    },
    {'1': 'provider', '3': 4, '4': 1, '5': 9, '10': 'provider'},
    {'1': 'version', '3': 5, '4': 1, '5': 9, '10': 'version'},
    {
      '1': 'pluginDownloadURL',
      '3': 13,
      '4': 1,
      '5': 9,
      '10': 'pluginDownloadURL'
    },
    {
      '1': 'pluginChecksums',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ResourceCallRequest.PluginChecksumsEntry',
      '10': 'pluginChecksums'
    },
    {
      '1': 'sourcePosition',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.SourcePosition',
      '10': 'sourcePosition'
    },
    {'1': 'packageRef', '3': 17, '4': 1, '5': 9, '10': 'packageRef'},
  ],
  '3': [
    ResourceCallRequest_ArgumentDependencies$json,
    ResourceCallRequest_ArgDependenciesEntry$json,
    ResourceCallRequest_PluginChecksumsEntry$json
  ],
  '9': [
    {'1': 6, '2': 7},
    {'1': 7, '2': 8},
    {'1': 8, '2': 9},
    {'1': 9, '2': 10},
    {'1': 10, '2': 11},
    {'1': 11, '2': 12},
    {'1': 12, '2': 13},
    {'1': 14, '2': 15},
  ],
  '10': [
    'project',
    'stack',
    'config',
    'configSecretKeys',
    'dryRun',
    'parallel',
    'monitorEndpoint',
    'organization'
  ],
};

@$core.Deprecated('Use resourceCallRequestDescriptor instead')
const ResourceCallRequest_ArgumentDependencies$json = {
  '1': 'ArgumentDependencies',
  '2': [
    {'1': 'urns', '3': 1, '4': 3, '5': 9, '10': 'urns'},
  ],
};

@$core.Deprecated('Use resourceCallRequestDescriptor instead')
const ResourceCallRequest_ArgDependenciesEntry$json = {
  '1': 'ArgDependenciesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.ResourceCallRequest.ArgumentDependencies',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use resourceCallRequestDescriptor instead')
const ResourceCallRequest_PluginChecksumsEntry$json = {
  '1': 'PluginChecksumsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ResourceCallRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceCallRequestDescriptor = $convert.base64Decode(
    'ChNSZXNvdXJjZUNhbGxSZXF1ZXN0EhAKA3RvaxgBIAEoCVIDdG9rEisKBGFyZ3MYAiABKAsyFy'
    '5nb29nbGUucHJvdG9idWYuU3RydWN0UgRhcmdzEl0KD2FyZ0RlcGVuZGVuY2llcxgDIAMoCzIz'
    'LnB1bHVtaXJwYy5SZXNvdXJjZUNhbGxSZXF1ZXN0LkFyZ0RlcGVuZGVuY2llc0VudHJ5Ug9hcm'
    'dEZXBlbmRlbmNpZXMSGgoIcHJvdmlkZXIYBCABKAlSCHByb3ZpZGVyEhgKB3ZlcnNpb24YBSAB'
    'KAlSB3ZlcnNpb24SLAoRcGx1Z2luRG93bmxvYWRVUkwYDSABKAlSEXBsdWdpbkRvd25sb2FkVV'
    'JMEl0KD3BsdWdpbkNoZWNrc3VtcxgQIAMoCzIzLnB1bHVtaXJwYy5SZXNvdXJjZUNhbGxSZXF1'
    'ZXN0LlBsdWdpbkNoZWNrc3Vtc0VudHJ5Ug9wbHVnaW5DaGVja3N1bXMSQQoOc291cmNlUG9zaX'
    'Rpb24YDyABKAsyGS5wdWx1bWlycGMuU291cmNlUG9zaXRpb25SDnNvdXJjZVBvc2l0aW9uEh4K'
    'CnBhY2thZ2VSZWYYESABKAlSCnBhY2thZ2VSZWYaKgoUQXJndW1lbnREZXBlbmRlbmNpZXMSEg'
    'oEdXJucxgBIAMoCVIEdXJucxp3ChRBcmdEZXBlbmRlbmNpZXNFbnRyeRIQCgNrZXkYASABKAlS'
    'A2tleRJJCgV2YWx1ZRgCIAEoCzIzLnB1bHVtaXJwYy5SZXNvdXJjZUNhbGxSZXF1ZXN0LkFyZ3'
    'VtZW50RGVwZW5kZW5jaWVzUgV2YWx1ZToCOAEaQgoUUGx1Z2luQ2hlY2tzdW1zRW50cnkSEAoD'
    'a2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAxSBXZhbHVlOgI4AUoECAYQB0oECAcQCEoECA'
    'gQCUoECAkQCkoECAoQC0oECAsQDEoECAwQDUoECA4QD1IHcHJvamVjdFIFc3RhY2tSBmNvbmZp'
    'Z1IQY29uZmlnU2VjcmV0S2V5c1IGZHJ5UnVuUghwYXJhbGxlbFIPbW9uaXRvckVuZHBvaW50Ug'
    'xvcmdhbml6YXRpb24=');

@$core.Deprecated('Use transformResourceOptionsDescriptor instead')
const TransformResourceOptions$json = {
  '1': 'TransformResourceOptions',
  '2': [
    {'1': 'depends_on', '3': 1, '4': 3, '5': 9, '10': 'dependsOn'},
    {'1': 'protect', '3': 2, '4': 1, '5': 8, '10': 'protect'},
    {'1': 'ignore_changes', '3': 3, '4': 3, '5': 9, '10': 'ignoreChanges'},
    {
      '1': 'replace_on_changes',
      '3': 4,
      '4': 3,
      '5': 9,
      '10': 'replaceOnChanges'
    },
    {'1': 'version', '3': 5, '4': 1, '5': 9, '10': 'version'},
    {
      '1': 'aliases',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.Alias',
      '10': 'aliases'
    },
    {'1': 'provider', '3': 7, '4': 1, '5': 9, '10': 'provider'},
    {
      '1': 'custom_timeouts',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.RegisterResourceRequest.CustomTimeouts',
      '10': 'customTimeouts'
    },
    {
      '1': 'plugin_download_url',
      '3': 9,
      '4': 1,
      '5': 9,
      '10': 'pluginDownloadUrl'
    },
    {'1': 'retain_on_delete', '3': 10, '4': 1, '5': 8, '10': 'retainOnDelete'},
    {'1': 'deleted_with', '3': 11, '4': 1, '5': 9, '10': 'deletedWith'},
    {
      '1': 'delete_before_replace',
      '3': 12,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'deleteBeforeReplace',
      '17': true
    },
    {
      '1': 'additional_secret_outputs',
      '3': 13,
      '4': 3,
      '5': 9,
      '10': 'additionalSecretOutputs'
    },
    {
      '1': 'providers',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.TransformResourceOptions.ProvidersEntry',
      '10': 'providers'
    },
    {
      '1': 'plugin_checksums',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.TransformResourceOptions.PluginChecksumsEntry',
      '10': 'pluginChecksums'
    },
  ],
  '3': [
    TransformResourceOptions_ProvidersEntry$json,
    TransformResourceOptions_PluginChecksumsEntry$json
  ],
  '8': [
    {'1': '_delete_before_replace'},
  ],
};

@$core.Deprecated('Use transformResourceOptionsDescriptor instead')
const TransformResourceOptions_ProvidersEntry$json = {
  '1': 'ProvidersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use transformResourceOptionsDescriptor instead')
const TransformResourceOptions_PluginChecksumsEntry$json = {
  '1': 'PluginChecksumsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TransformResourceOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transformResourceOptionsDescriptor = $convert.base64Decode(
    'ChhUcmFuc2Zvcm1SZXNvdXJjZU9wdGlvbnMSHQoKZGVwZW5kc19vbhgBIAMoCVIJZGVwZW5kc0'
    '9uEhgKB3Byb3RlY3QYAiABKAhSB3Byb3RlY3QSJQoOaWdub3JlX2NoYW5nZXMYAyADKAlSDWln'
    'bm9yZUNoYW5nZXMSLAoScmVwbGFjZV9vbl9jaGFuZ2VzGAQgAygJUhByZXBsYWNlT25DaGFuZ2'
    'VzEhgKB3ZlcnNpb24YBSABKAlSB3ZlcnNpb24SKgoHYWxpYXNlcxgGIAMoCzIQLnB1bHVtaXJw'
    'Yy5BbGlhc1IHYWxpYXNlcxIaCghwcm92aWRlchgHIAEoCVIIcHJvdmlkZXISWgoPY3VzdG9tX3'
    'RpbWVvdXRzGAggASgLMjEucHVsdW1pcnBjLlJlZ2lzdGVyUmVzb3VyY2VSZXF1ZXN0LkN1c3Rv'
    'bVRpbWVvdXRzUg5jdXN0b21UaW1lb3V0cxIuChNwbHVnaW5fZG93bmxvYWRfdXJsGAkgASgJUh'
    'FwbHVnaW5Eb3dubG9hZFVybBIoChByZXRhaW5fb25fZGVsZXRlGAogASgIUg5yZXRhaW5PbkRl'
    'bGV0ZRIhCgxkZWxldGVkX3dpdGgYCyABKAlSC2RlbGV0ZWRXaXRoEjcKFWRlbGV0ZV9iZWZvcm'
    'VfcmVwbGFjZRgMIAEoCEgAUhNkZWxldGVCZWZvcmVSZXBsYWNliAEBEjoKGWFkZGl0aW9uYWxf'
    'c2VjcmV0X291dHB1dHMYDSADKAlSF2FkZGl0aW9uYWxTZWNyZXRPdXRwdXRzElAKCXByb3ZpZG'
    'VycxgOIAMoCzIyLnB1bHVtaXJwYy5UcmFuc2Zvcm1SZXNvdXJjZU9wdGlvbnMuUHJvdmlkZXJz'
    'RW50cnlSCXByb3ZpZGVycxJjChBwbHVnaW5fY2hlY2tzdW1zGA8gAygLMjgucHVsdW1pcnBjLl'
    'RyYW5zZm9ybVJlc291cmNlT3B0aW9ucy5QbHVnaW5DaGVja3N1bXNFbnRyeVIPcGx1Z2luQ2hl'
    'Y2tzdW1zGjwKDlByb3ZpZGVyc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgAS'
    'gJUgV2YWx1ZToCOAEaQgoUUGx1Z2luQ2hlY2tzdW1zRW50cnkSEAoDa2V5GAEgASgJUgNrZXkS'
    'FAoFdmFsdWUYAiABKAxSBXZhbHVlOgI4AUIYChZfZGVsZXRlX2JlZm9yZV9yZXBsYWNl');

@$core.Deprecated('Use transformRequestDescriptor instead')
const TransformRequest$json = {
  '1': 'TransformRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'custom', '3': 3, '4': 1, '5': 8, '10': 'custom'},
    {'1': 'parent', '3': 4, '4': 1, '5': 9, '10': 'parent'},
    {
      '1': 'properties',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {
      '1': 'options',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.TransformResourceOptions',
      '10': 'options'
    },
  ],
};

/// Descriptor for `TransformRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transformRequestDescriptor = $convert.base64Decode(
    'ChBUcmFuc2Zvcm1SZXF1ZXN0EhIKBHR5cGUYASABKAlSBHR5cGUSEgoEbmFtZRgCIAEoCVIEbm'
    'FtZRIWCgZjdXN0b20YAyABKAhSBmN1c3RvbRIWCgZwYXJlbnQYBCABKAlSBnBhcmVudBI3Cgpw'
    'cm9wZXJ0aWVzGAUgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKcHJvcGVydGllcxI9Cg'
    'dvcHRpb25zGAYgASgLMiMucHVsdW1pcnBjLlRyYW5zZm9ybVJlc291cmNlT3B0aW9uc1IHb3B0'
    'aW9ucw==');

@$core.Deprecated('Use transformResponseDescriptor instead')
const TransformResponse$json = {
  '1': 'TransformResponse',
  '2': [
    {
      '1': 'properties',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {
      '1': 'options',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.TransformResourceOptions',
      '10': 'options'
    },
  ],
};

/// Descriptor for `TransformResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transformResponseDescriptor = $convert.base64Decode(
    'ChFUcmFuc2Zvcm1SZXNwb25zZRI3Cgpwcm9wZXJ0aWVzGAEgASgLMhcuZ29vZ2xlLnByb3RvYn'
    'VmLlN0cnVjdFIKcHJvcGVydGllcxI9CgdvcHRpb25zGAIgASgLMiMucHVsdW1pcnBjLlRyYW5z'
    'Zm9ybVJlc291cmNlT3B0aW9uc1IHb3B0aW9ucw==');

@$core.Deprecated('Use transformInvokeRequestDescriptor instead')
const TransformInvokeRequest$json = {
  '1': 'TransformInvokeRequest',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {
      '1': 'args',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'args'
    },
    {
      '1': 'options',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.TransformInvokeOptions',
      '10': 'options'
    },
  ],
};

/// Descriptor for `TransformInvokeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transformInvokeRequestDescriptor = $convert.base64Decode(
    'ChZUcmFuc2Zvcm1JbnZva2VSZXF1ZXN0EhQKBXRva2VuGAEgASgJUgV0b2tlbhIrCgRhcmdzGA'
    'IgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIEYXJncxI7CgdvcHRpb25zGAMgASgLMiEu'
    'cHVsdW1pcnBjLlRyYW5zZm9ybUludm9rZU9wdGlvbnNSB29wdGlvbnM=');

@$core.Deprecated('Use transformInvokeResponseDescriptor instead')
const TransformInvokeResponse$json = {
  '1': 'TransformInvokeResponse',
  '2': [
    {
      '1': 'args',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'args'
    },
    {
      '1': 'options',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.TransformInvokeOptions',
      '10': 'options'
    },
  ],
};

/// Descriptor for `TransformInvokeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transformInvokeResponseDescriptor = $convert.base64Decode(
    'ChdUcmFuc2Zvcm1JbnZva2VSZXNwb25zZRIrCgRhcmdzGAEgASgLMhcuZ29vZ2xlLnByb3RvYn'
    'VmLlN0cnVjdFIEYXJncxI7CgdvcHRpb25zGAIgASgLMiEucHVsdW1pcnBjLlRyYW5zZm9ybUlu'
    'dm9rZU9wdGlvbnNSB29wdGlvbnM=');

@$core.Deprecated('Use transformInvokeOptionsDescriptor instead')
const TransformInvokeOptions$json = {
  '1': 'TransformInvokeOptions',
  '2': [
    {'1': 'provider', '3': 1, '4': 1, '5': 9, '10': 'provider'},
    {
      '1': 'plugin_download_url',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'pluginDownloadUrl'
    },
    {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    {
      '1': 'plugin_checksums',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.TransformInvokeOptions.PluginChecksumsEntry',
      '10': 'pluginChecksums'
    },
  ],
  '3': [TransformInvokeOptions_PluginChecksumsEntry$json],
};

@$core.Deprecated('Use transformInvokeOptionsDescriptor instead')
const TransformInvokeOptions_PluginChecksumsEntry$json = {
  '1': 'PluginChecksumsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TransformInvokeOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transformInvokeOptionsDescriptor = $convert.base64Decode(
    'ChZUcmFuc2Zvcm1JbnZva2VPcHRpb25zEhoKCHByb3ZpZGVyGAEgASgJUghwcm92aWRlchIuCh'
    'NwbHVnaW5fZG93bmxvYWRfdXJsGAIgASgJUhFwbHVnaW5Eb3dubG9hZFVybBIYCgd2ZXJzaW9u'
    'GAMgASgJUgd2ZXJzaW9uEmEKEHBsdWdpbl9jaGVja3N1bXMYBCADKAsyNi5wdWx1bWlycGMuVH'
    'JhbnNmb3JtSW52b2tlT3B0aW9ucy5QbHVnaW5DaGVja3N1bXNFbnRyeVIPcGx1Z2luQ2hlY2tz'
    'dW1zGkIKFFBsdWdpbkNoZWNrc3Vtc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGA'
    'IgASgMUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use registerPackageRequestDescriptor instead')
const RegisterPackageRequest$json = {
  '1': 'RegisterPackageRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'download_url', '3': 3, '4': 1, '5': 9, '10': 'downloadUrl'},
    {
      '1': 'checksums',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.RegisterPackageRequest.ChecksumsEntry',
      '10': 'checksums'
    },
    {
      '1': 'parameterization',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.Parameterization',
      '10': 'parameterization'
    },
  ],
  '3': [RegisterPackageRequest_ChecksumsEntry$json],
};

@$core.Deprecated('Use registerPackageRequestDescriptor instead')
const RegisterPackageRequest_ChecksumsEntry$json = {
  '1': 'ChecksumsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `RegisterPackageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerPackageRequestDescriptor = $convert.base64Decode(
    'ChZSZWdpc3RlclBhY2thZ2VSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSGAoHdmVyc2lvbh'
    'gCIAEoCVIHdmVyc2lvbhIhCgxkb3dubG9hZF91cmwYAyABKAlSC2Rvd25sb2FkVXJsEk4KCWNo'
    'ZWNrc3VtcxgEIAMoCzIwLnB1bHVtaXJwYy5SZWdpc3RlclBhY2thZ2VSZXF1ZXN0LkNoZWNrc3'
    'Vtc0VudHJ5UgljaGVja3N1bXMSRwoQcGFyYW1ldGVyaXphdGlvbhgFIAEoCzIbLnB1bHVtaXJw'
    'Yy5QYXJhbWV0ZXJpemF0aW9uUhBwYXJhbWV0ZXJpemF0aW9uGjwKDkNoZWNrc3Vtc0VudHJ5Eh'
    'AKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use registerPackageResponseDescriptor instead')
const RegisterPackageResponse$json = {
  '1': 'RegisterPackageResponse',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 9, '10': 'ref'},
  ],
};

/// Descriptor for `RegisterPackageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerPackageResponseDescriptor =
    $convert.base64Decode(
        'ChdSZWdpc3RlclBhY2thZ2VSZXNwb25zZRIQCgNyZWYYASABKAlSA3JlZg==');

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
