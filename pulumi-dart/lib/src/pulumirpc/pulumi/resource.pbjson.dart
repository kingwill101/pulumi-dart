// This is a generated file - do not edit.
//
// Generated from pulumi/resource.proto.

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
    {
      '1': 'stackTrace',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.StackTrace',
      '10': 'stackTrace'
    },
    {
      '1': 'parentStackTraceHandle',
      '3': 18,
      '4': 1,
      '5': 9,
      '10': 'parentStackTraceHandle'
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
    'dWx1bWlycGMuU291cmNlUG9zaXRpb25SDnNvdXJjZVBvc2l0aW9uEjUKCnN0YWNrVHJhY2UYES'
    'ABKAsyFS5wdWx1bWlycGMuU3RhY2tUcmFjZVIKc3RhY2tUcmFjZRI2ChZwYXJlbnRTdGFja1Ry'
    'YWNlSGFuZGxlGBIgASgJUhZwYXJlbnRTdGFja1RyYWNlSGFuZGxlEh4KCnBhY2thZ2VSZWYYEC'
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
    {
      '1': 'protect',
      '3': 6,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'protect',
      '17': true
    },
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
    {
      '1': 'retainOnDelete',
      '3': 25,
      '4': 1,
      '5': 8,
      '9': 1,
      '10': 'retainOnDelete',
      '17': true
    },
    {
      '1': 'aliases',
      '3': 26,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.Alias',
      '10': 'aliases'
    },
    {'1': 'deletedWith', '3': 27, '4': 1, '5': 9, '10': 'deletedWith'},
    {'1': 'replace_with', '3': 38, '4': 3, '5': 9, '10': 'replaceWith'},
    {
      '1': 'replacement_trigger',
      '3': 39,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Value',
      '10': 'replacementTrigger'
    },
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
      '1': 'stackTrace',
      '3': 35,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.StackTrace',
      '10': 'stackTrace'
    },
    {
      '1': 'parentStackTraceHandle',
      '3': 36,
      '4': 1,
      '5': 9,
      '10': 'parentStackTraceHandle'
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
    {
      '1': 'hooks',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.RegisterResourceRequest.ResourceHooksBinding',
      '9': 2,
      '10': 'hooks',
      '17': true
    },
    {'1': 'hideDiffs', '3': 37, '4': 3, '5': 9, '10': 'hideDiffs'},
    {
      '1': 'envVarMappings',
      '3': 41,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.RegisterResourceRequest.EnvVarMappingsEntry',
      '10': 'envVarMappings'
    },
  ],
  '3': [
    RegisterResourceRequest_PropertyDependencies$json,
    RegisterResourceRequest_CustomTimeouts$json,
    RegisterResourceRequest_PropertyDependenciesEntry$json,
    RegisterResourceRequest_ProvidersEntry$json,
    RegisterResourceRequest_PluginChecksumsEntry$json,
    RegisterResourceRequest_ResourceHooksBinding$json,
    RegisterResourceRequest_EnvVarMappingsEntry$json
  ],
  '8': [
    {'1': '_protect'},
    {'1': '_retainOnDelete'},
    {'1': '_hooks'},
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

@$core.Deprecated('Use registerResourceRequestDescriptor instead')
const RegisterResourceRequest_ResourceHooksBinding$json = {
  '1': 'ResourceHooksBinding',
  '2': [
    {'1': 'before_create', '3': 1, '4': 3, '5': 9, '10': 'beforeCreate'},
    {'1': 'after_create', '3': 2, '4': 3, '5': 9, '10': 'afterCreate'},
    {'1': 'before_update', '3': 3, '4': 3, '5': 9, '10': 'beforeUpdate'},
    {'1': 'after_update', '3': 4, '4': 3, '5': 9, '10': 'afterUpdate'},
    {'1': 'before_delete', '3': 5, '4': 3, '5': 9, '10': 'beforeDelete'},
    {'1': 'after_delete', '3': 6, '4': 3, '5': 9, '10': 'afterDelete'},
    {'1': 'on_error', '3': 7, '4': 3, '5': 9, '10': 'onError'},
  ],
};

@$core.Deprecated('Use registerResourceRequestDescriptor instead')
const RegisterResourceRequest_EnvVarMappingsEntry$json = {
  '1': 'EnvVarMappingsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `RegisterResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResourceRequestDescriptor = $convert.base64Decode(
    'ChdSZWdpc3RlclJlc291cmNlUmVxdWVzdBISCgR0eXBlGAEgASgJUgR0eXBlEhIKBG5hbWUYAi'
    'ABKAlSBG5hbWUSFgoGcGFyZW50GAMgASgJUgZwYXJlbnQSFgoGY3VzdG9tGAQgASgIUgZjdXN0'
    'b20SLwoGb2JqZWN0GAUgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIGb2JqZWN0Eh0KB3'
    'Byb3RlY3QYBiABKAhIAFIHcHJvdGVjdIgBARIiCgxkZXBlbmRlbmNpZXMYByADKAlSDGRlcGVu'
    'ZGVuY2llcxIaCghwcm92aWRlchgIIAEoCVIIcHJvdmlkZXIScAoUcHJvcGVydHlEZXBlbmRlbm'
    'NpZXMYCSADKAsyPC5wdWx1bWlycGMuUmVnaXN0ZXJSZXNvdXJjZVJlcXVlc3QuUHJvcGVydHlE'
    'ZXBlbmRlbmNpZXNFbnRyeVIUcHJvcGVydHlEZXBlbmRlbmNpZXMSMAoTZGVsZXRlQmVmb3JlUm'
    'VwbGFjZRgKIAEoCFITZGVsZXRlQmVmb3JlUmVwbGFjZRIYCgd2ZXJzaW9uGAsgASgJUgd2ZXJz'
    'aW9uEiQKDWlnbm9yZUNoYW5nZXMYDCADKAlSDWlnbm9yZUNoYW5nZXMSJAoNYWNjZXB0U2Vjcm'
    'V0cxgNIAEoCFINYWNjZXB0U2VjcmV0cxI4ChdhZGRpdGlvbmFsU2VjcmV0T3V0cHV0cxgOIAMo'
    'CVIXYWRkaXRpb25hbFNlY3JldE91dHB1dHMSHAoJYWxpYXNVUk5zGA8gAygJUglhbGlhc1VSTn'
    'MSGgoIaW1wb3J0SWQYECABKAlSCGltcG9ydElkElkKDmN1c3RvbVRpbWVvdXRzGBEgASgLMjEu'
    'cHVsdW1pcnBjLlJlZ2lzdGVyUmVzb3VyY2VSZXF1ZXN0LkN1c3RvbVRpbWVvdXRzUg5jdXN0b2'
    '1UaW1lb3V0cxI+ChpkZWxldGVCZWZvcmVSZXBsYWNlRGVmaW5lZBgSIAEoCFIaZGVsZXRlQmVm'
    'b3JlUmVwbGFjZURlZmluZWQSNAoVc3VwcG9ydHNQYXJ0aWFsVmFsdWVzGBMgASgIUhVzdXBwb3'
    'J0c1BhcnRpYWxWYWx1ZXMSFgoGcmVtb3RlGBQgASgIUgZyZW1vdGUSKAoPYWNjZXB0UmVzb3Vy'
    'Y2VzGBUgASgIUg9hY2NlcHRSZXNvdXJjZXMSTwoJcHJvdmlkZXJzGBYgAygLMjEucHVsdW1pcn'
    'BjLlJlZ2lzdGVyUmVzb3VyY2VSZXF1ZXN0LlByb3ZpZGVyc0VudHJ5Uglwcm92aWRlcnMSKgoQ'
    'cmVwbGFjZU9uQ2hhbmdlcxgXIAMoCVIQcmVwbGFjZU9uQ2hhbmdlcxIsChFwbHVnaW5Eb3dubG'
    '9hZFVSTBgYIAEoCVIRcGx1Z2luRG93bmxvYWRVUkwSYQoPcGx1Z2luQ2hlY2tzdW1zGB4gAygL'
    'MjcucHVsdW1pcnBjLlJlZ2lzdGVyUmVzb3VyY2VSZXF1ZXN0LlBsdWdpbkNoZWNrc3Vtc0VudH'
    'J5Ug9wbHVnaW5DaGVja3N1bXMSKwoOcmV0YWluT25EZWxldGUYGSABKAhIAVIOcmV0YWluT25E'
    'ZWxldGWIAQESKgoHYWxpYXNlcxgaIAMoCzIQLnB1bHVtaXJwYy5BbGlhc1IHYWxpYXNlcxIgCg'
    'tkZWxldGVkV2l0aBgbIAEoCVILZGVsZXRlZFdpdGgSIQoMcmVwbGFjZV93aXRoGCYgAygJUgty'
    'ZXBsYWNlV2l0aBJHChNyZXBsYWNlbWVudF90cmlnZ2VyGCcgASgLMhYuZ29vZ2xlLnByb3RvYn'
    'VmLlZhbHVlUhJyZXBsYWNlbWVudFRyaWdnZXISHgoKYWxpYXNTcGVjcxgcIAEoCFIKYWxpYXNT'
    'cGVjcxJBCg5zb3VyY2VQb3NpdGlvbhgdIAEoCzIZLnB1bHVtaXJwYy5Tb3VyY2VQb3NpdGlvbl'
    'IOc291cmNlUG9zaXRpb24SNQoKc3RhY2tUcmFjZRgjIAEoCzIVLnB1bHVtaXJwYy5TdGFja1Ry'
    'YWNlUgpzdGFja1RyYWNlEjYKFnBhcmVudFN0YWNrVHJhY2VIYW5kbGUYJCABKAlSFnBhcmVudF'
    'N0YWNrVHJhY2VIYW5kbGUSMwoKdHJhbnNmb3JtcxgfIAMoCzITLnB1bHVtaXJwYy5DYWxsYmFj'
    'a1IKdHJhbnNmb3JtcxI4ChdzdXBwb3J0c1Jlc3VsdFJlcG9ydGluZxggIAEoCFIXc3VwcG9ydH'
    'NSZXN1bHRSZXBvcnRpbmcSHgoKcGFja2FnZVJlZhghIAEoCVIKcGFja2FnZVJlZhJSCgVob29r'
    'cxgiIAEoCzI3LnB1bHVtaXJwYy5SZWdpc3RlclJlc291cmNlUmVxdWVzdC5SZXNvdXJjZUhvb2'
    'tzQmluZGluZ0gCUgVob29rc4gBARIcCgloaWRlRGlmZnMYJSADKAlSCWhpZGVEaWZmcxJeCg5l'
    'bnZWYXJNYXBwaW5ncxgpIAMoCzI2LnB1bHVtaXJwYy5SZWdpc3RlclJlc291cmNlUmVxdWVzdC'
    '5FbnZWYXJNYXBwaW5nc0VudHJ5Ug5lbnZWYXJNYXBwaW5ncxoqChRQcm9wZXJ0eURlcGVuZGVu'
    'Y2llcxISCgR1cm5zGAEgAygJUgR1cm5zGlgKDkN1c3RvbVRpbWVvdXRzEhYKBmNyZWF0ZRgBIA'
    'EoCVIGY3JlYXRlEhYKBnVwZGF0ZRgCIAEoCVIGdXBkYXRlEhYKBmRlbGV0ZRgDIAEoCVIGZGVs'
    'ZXRlGoABChlQcm9wZXJ0eURlcGVuZGVuY2llc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5Ek0KBX'
    'ZhbHVlGAIgASgLMjcucHVsdW1pcnBjLlJlZ2lzdGVyUmVzb3VyY2VSZXF1ZXN0LlByb3BlcnR5'
    'RGVwZW5kZW5jaWVzUgV2YWx1ZToCOAEaPAoOUHJvdmlkZXJzRW50cnkSEAoDa2V5GAEgASgJUg'
    'NrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4ARpCChRQbHVnaW5DaGVja3N1bXNFbnRyeRIQ'
    'CgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoDFIFdmFsdWU6AjgBGokCChRSZXNvdXJjZU'
    'hvb2tzQmluZGluZxIjCg1iZWZvcmVfY3JlYXRlGAEgAygJUgxiZWZvcmVDcmVhdGUSIQoMYWZ0'
    'ZXJfY3JlYXRlGAIgAygJUgthZnRlckNyZWF0ZRIjCg1iZWZvcmVfdXBkYXRlGAMgAygJUgxiZW'
    'ZvcmVVcGRhdGUSIQoMYWZ0ZXJfdXBkYXRlGAQgAygJUgthZnRlclVwZGF0ZRIjCg1iZWZvcmVf'
    'ZGVsZXRlGAUgAygJUgxiZWZvcmVEZWxldGUSIQoMYWZ0ZXJfZGVsZXRlGAYgAygJUgthZnRlck'
    'RlbGV0ZRIZCghvbl9lcnJvchgHIAMoCVIHb25FcnJvchpBChNFbnZWYXJNYXBwaW5nc0VudHJ5'
    'EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAFCCgoIX3Byb3RlY3'
    'RCEQoPX3JldGFpbk9uRGVsZXRlQggKBl9ob29rcw==');

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
    {
      '1': 'stackTrace',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.StackTrace',
      '10': 'stackTrace'
    },
    {
      '1': 'parentStackTraceHandle',
      '3': 11,
      '4': 1,
      '5': 9,
      '10': 'parentStackTraceHandle'
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
    'Rpb24SNQoKc3RhY2tUcmFjZRgKIAEoCzIVLnB1bHVtaXJwYy5TdGFja1RyYWNlUgpzdGFja1Ry'
    'YWNlEjYKFnBhcmVudFN0YWNrVHJhY2VIYW5kbGUYCyABKAlSFnBhcmVudFN0YWNrVHJhY2VIYW'
    '5kbGUSHgoKcGFja2FnZVJlZhgJIAEoCVIKcGFja2FnZVJlZhpCChRQbHVnaW5DaGVja3N1bXNF'
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
    {
      '1': 'stackTrace',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.StackTrace',
      '10': 'stackTrace'
    },
    {
      '1': 'parentStackTraceHandle',
      '3': 19,
      '4': 1,
      '5': 9,
      '10': 'parentStackTraceHandle'
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
    'Rpb24YDyABKAsyGS5wdWx1bWlycGMuU291cmNlUG9zaXRpb25SDnNvdXJjZVBvc2l0aW9uEjUK'
    'CnN0YWNrVHJhY2UYEiABKAsyFS5wdWx1bWlycGMuU3RhY2tUcmFjZVIKc3RhY2tUcmFjZRI2Ch'
    'ZwYXJlbnRTdGFja1RyYWNlSGFuZGxlGBMgASgJUhZwYXJlbnRTdGFja1RyYWNlSGFuZGxlEh4K'
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
    {
      '1': 'protect',
      '3': 2,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'protect',
      '17': true
    },
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
    {
      '1': 'retain_on_delete',
      '3': 10,
      '4': 1,
      '5': 8,
      '9': 1,
      '10': 'retainOnDelete',
      '17': true
    },
    {'1': 'deleted_with', '3': 11, '4': 1, '5': 9, '10': 'deletedWith'},
    {
      '1': 'delete_before_replace',
      '3': 12,
      '4': 1,
      '5': 8,
      '9': 2,
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
    {
      '1': 'hooks',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.RegisterResourceRequest.ResourceHooksBinding',
      '10': 'hooks'
    },
    {'1': 'import', '3': 17, '4': 1, '5': 9, '10': 'import'},
    {'1': 'hide_diff', '3': 18, '4': 3, '5': 9, '10': 'hideDiff'},
    {'1': 'replace_with', '3': 19, '4': 3, '5': 9, '10': 'replaceWith'},
    {
      '1': 'replacement_trigger',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Value',
      '10': 'replacementTrigger'
    },
  ],
  '3': [
    TransformResourceOptions_ProvidersEntry$json,
    TransformResourceOptions_PluginChecksumsEntry$json
  ],
  '8': [
    {'1': '_protect'},
    {'1': '_retain_on_delete'},
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
    '9uEh0KB3Byb3RlY3QYAiABKAhIAFIHcHJvdGVjdIgBARIlCg5pZ25vcmVfY2hhbmdlcxgDIAMo'
    'CVINaWdub3JlQ2hhbmdlcxIsChJyZXBsYWNlX29uX2NoYW5nZXMYBCADKAlSEHJlcGxhY2VPbk'
    'NoYW5nZXMSGAoHdmVyc2lvbhgFIAEoCVIHdmVyc2lvbhIqCgdhbGlhc2VzGAYgAygLMhAucHVs'
    'dW1pcnBjLkFsaWFzUgdhbGlhc2VzEhoKCHByb3ZpZGVyGAcgASgJUghwcm92aWRlchJaCg9jdX'
    'N0b21fdGltZW91dHMYCCABKAsyMS5wdWx1bWlycGMuUmVnaXN0ZXJSZXNvdXJjZVJlcXVlc3Qu'
    'Q3VzdG9tVGltZW91dHNSDmN1c3RvbVRpbWVvdXRzEi4KE3BsdWdpbl9kb3dubG9hZF91cmwYCS'
    'ABKAlSEXBsdWdpbkRvd25sb2FkVXJsEi0KEHJldGFpbl9vbl9kZWxldGUYCiABKAhIAVIOcmV0'
    'YWluT25EZWxldGWIAQESIQoMZGVsZXRlZF93aXRoGAsgASgJUgtkZWxldGVkV2l0aBI3ChVkZW'
    'xldGVfYmVmb3JlX3JlcGxhY2UYDCABKAhIAlITZGVsZXRlQmVmb3JlUmVwbGFjZYgBARI6Chlh'
    'ZGRpdGlvbmFsX3NlY3JldF9vdXRwdXRzGA0gAygJUhdhZGRpdGlvbmFsU2VjcmV0T3V0cHV0cx'
    'JQCglwcm92aWRlcnMYDiADKAsyMi5wdWx1bWlycGMuVHJhbnNmb3JtUmVzb3VyY2VPcHRpb25z'
    'LlByb3ZpZGVyc0VudHJ5Uglwcm92aWRlcnMSYwoQcGx1Z2luX2NoZWNrc3VtcxgPIAMoCzI4Ln'
    'B1bHVtaXJwYy5UcmFuc2Zvcm1SZXNvdXJjZU9wdGlvbnMuUGx1Z2luQ2hlY2tzdW1zRW50cnlS'
    'D3BsdWdpbkNoZWNrc3VtcxJNCgVob29rcxgQIAEoCzI3LnB1bHVtaXJwYy5SZWdpc3RlclJlc2'
    '91cmNlUmVxdWVzdC5SZXNvdXJjZUhvb2tzQmluZGluZ1IFaG9va3MSFgoGaW1wb3J0GBEgASgJ'
    'UgZpbXBvcnQSGwoJaGlkZV9kaWZmGBIgAygJUghoaWRlRGlmZhIhCgxyZXBsYWNlX3dpdGgYEy'
    'ADKAlSC3JlcGxhY2VXaXRoEkcKE3JlcGxhY2VtZW50X3RyaWdnZXIYFCABKAsyFi5nb29nbGUu'
    'cHJvdG9idWYuVmFsdWVSEnJlcGxhY2VtZW50VHJpZ2dlcho8Cg5Qcm92aWRlcnNFbnRyeRIQCg'
    'NrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGkIKFFBsdWdpbkNoZWNr'
    'c3Vtc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZToCOAFCCg'
    'oIX3Byb3RlY3RCEwoRX3JldGFpbl9vbl9kZWxldGVCGAoWX2RlbGV0ZV9iZWZvcmVfcmVwbGFj'
    'ZQ==');

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

@$core.Deprecated('Use resourceHookRequestDescriptor instead')
const ResourceHookRequest$json = {
  '1': 'ResourceHookRequest',
  '2': [
    {'1': 'urn', '3': 1, '4': 1, '5': 9, '10': 'urn'},
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
    {
      '1': 'new_inputs',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'newInputs'
    },
    {
      '1': 'old_inputs',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'oldInputs'
    },
    {
      '1': 'new_outputs',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'newOutputs'
    },
    {
      '1': 'old_outputs',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'oldOutputs'
    },
  ],
};

/// Descriptor for `ResourceHookRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceHookRequestDescriptor = $convert.base64Decode(
    'ChNSZXNvdXJjZUhvb2tSZXF1ZXN0EhAKA3VybhgBIAEoCVIDdXJuEg4KAmlkGAIgASgJUgJpZB'
    'ISCgRuYW1lGAMgASgJUgRuYW1lEhIKBHR5cGUYBCABKAlSBHR5cGUSNgoKbmV3X2lucHV0cxgF'
    'IAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCW5ld0lucHV0cxI2CgpvbGRfaW5wdXRzGA'
    'YgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIJb2xkSW5wdXRzEjgKC25ld19vdXRwdXRz'
    'GAcgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKbmV3T3V0cHV0cxI4CgtvbGRfb3V0cH'
    'V0cxgIIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCm9sZE91dHB1dHM=');

@$core.Deprecated('Use resourceHookResponseDescriptor instead')
const ResourceHookResponse$json = {
  '1': 'ResourceHookResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `ResourceHookResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceHookResponseDescriptor =
    $convert.base64Decode(
        'ChRSZXNvdXJjZUhvb2tSZXNwb25zZRIUCgVlcnJvchgBIAEoCVIFZXJyb3I=');

@$core.Deprecated('Use errorHookRequestDescriptor instead')
const ErrorHookRequest$json = {
  '1': 'ErrorHookRequest',
  '2': [
    {'1': 'urn', '3': 1, '4': 1, '5': 9, '10': 'urn'},
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
    {
      '1': 'new_inputs',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'newInputs'
    },
    {
      '1': 'old_inputs',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'oldInputs'
    },
    {
      '1': 'old_outputs',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'oldOutputs'
    },
    {'1': 'failed_operation', '3': 8, '4': 1, '5': 9, '10': 'failedOperation'},
    {'1': 'errors', '3': 9, '4': 3, '5': 9, '10': 'errors'},
  ],
};

/// Descriptor for `ErrorHookRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorHookRequestDescriptor = $convert.base64Decode(
    'ChBFcnJvckhvb2tSZXF1ZXN0EhAKA3VybhgBIAEoCVIDdXJuEg4KAmlkGAIgASgJUgJpZBISCg'
    'RuYW1lGAMgASgJUgRuYW1lEhIKBHR5cGUYBCABKAlSBHR5cGUSNgoKbmV3X2lucHV0cxgFIAEo'
    'CzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCW5ld0lucHV0cxI2CgpvbGRfaW5wdXRzGAYgAS'
    'gLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIJb2xkSW5wdXRzEjgKC29sZF9vdXRwdXRzGAcg'
    'ASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKb2xkT3V0cHV0cxIpChBmYWlsZWRfb3Blcm'
    'F0aW9uGAggASgJUg9mYWlsZWRPcGVyYXRpb24SFgoGZXJyb3JzGAkgAygJUgZlcnJvcnM=');

@$core.Deprecated('Use errorHookResponseDescriptor instead')
const ErrorHookResponse$json = {
  '1': 'ErrorHookResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 9, '10': 'error'},
    {'1': 'retry', '3': 2, '4': 1, '5': 8, '10': 'retry'},
  ],
};

/// Descriptor for `ErrorHookResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorHookResponseDescriptor = $convert.base64Decode(
    'ChFFcnJvckhvb2tSZXNwb25zZRIUCgVlcnJvchgBIAEoCVIFZXJyb3ISFAoFcmV0cnkYAiABKA'
    'hSBXJldHJ5');

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

@$core.Deprecated('Use registerResourceHookRequestDescriptor instead')
const RegisterResourceHookRequest$json = {
  '1': 'RegisterResourceHookRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'callback',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.Callback',
      '10': 'callback'
    },
    {'1': 'on_dry_run', '3': 3, '4': 1, '5': 8, '10': 'onDryRun'},
  ],
};

/// Descriptor for `RegisterResourceHookRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResourceHookRequestDescriptor =
    $convert.base64Decode(
        'ChtSZWdpc3RlclJlc291cmNlSG9va1JlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIvCghjYW'
        'xsYmFjaxgCIAEoCzITLnB1bHVtaXJwYy5DYWxsYmFja1IIY2FsbGJhY2sSHAoKb25fZHJ5X3J1'
        'bhgDIAEoCFIIb25EcnlSdW4=');

@$core.Deprecated('Use registerErrorHookRequestDescriptor instead')
const RegisterErrorHookRequest$json = {
  '1': 'RegisterErrorHookRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'callback',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.Callback',
      '10': 'callback'
    },
  ],
};

/// Descriptor for `RegisterErrorHookRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerErrorHookRequestDescriptor =
    $convert.base64Decode(
        'ChhSZWdpc3RlckVycm9ySG9va1JlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIvCghjYWxsYm'
        'FjaxgCIAEoCzITLnB1bHVtaXJwYy5DYWxsYmFja1IIY2FsbGJhY2s=');
