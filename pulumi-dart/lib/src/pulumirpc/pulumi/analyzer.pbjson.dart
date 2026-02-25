// This is a generated file - do not edit.
//
// Generated from pulumi/analyzer.proto.

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

@$core.Deprecated('Use enforcementLevelDescriptor instead')
const EnforcementLevel$json = {
  '1': 'EnforcementLevel',
  '2': [
    {'1': 'ADVISORY', '2': 0},
    {'1': 'MANDATORY', '2': 1},
    {'1': 'DISABLED', '2': 2},
    {'1': 'REMEDIATE', '2': 3},
  ],
};

/// Descriptor for `EnforcementLevel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List enforcementLevelDescriptor = $convert.base64Decode(
    'ChBFbmZvcmNlbWVudExldmVsEgwKCEFEVklTT1JZEAASDQoJTUFOREFUT1JZEAESDAoIRElTQU'
    'JMRUQQAhINCglSRU1FRElBVEUQAw==');

@$core.Deprecated('Use policyTypeDescriptor instead')
const PolicyType$json = {
  '1': 'PolicyType',
  '2': [
    {'1': 'POLICY_TYPE_UNKNOWN', '2': 0},
    {'1': 'POLICY_TYPE_RESOURCE', '2': 1},
    {'1': 'POLICY_TYPE_STACK', '2': 2},
  ],
};

/// Descriptor for `PolicyType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List policyTypeDescriptor = $convert.base64Decode(
    'CgpQb2xpY3lUeXBlEhcKE1BPTElDWV9UWVBFX1VOS05PV04QABIYChRQT0xJQ1lfVFlQRV9SRV'
    'NPVVJDRRABEhUKEVBPTElDWV9UWVBFX1NUQUNLEAI=');

@$core.Deprecated('Use policySeverityDescriptor instead')
const PolicySeverity$json = {
  '1': 'PolicySeverity',
  '2': [
    {'1': 'POLICY_SEVERITY_UNSPECIFIED', '2': 0},
    {'1': 'POLICY_SEVERITY_LOW', '2': 1},
    {'1': 'POLICY_SEVERITY_MEDIUM', '2': 2},
    {'1': 'POLICY_SEVERITY_HIGH', '2': 3},
    {'1': 'POLICY_SEVERITY_CRITICAL', '2': 4},
  ],
};

/// Descriptor for `PolicySeverity`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List policySeverityDescriptor = $convert.base64Decode(
    'Cg5Qb2xpY3lTZXZlcml0eRIfChtQT0xJQ1lfU0VWRVJJVFlfVU5TUEVDSUZJRUQQABIXChNQT0'
    'xJQ1lfU0VWRVJJVFlfTE9XEAESGgoWUE9MSUNZX1NFVkVSSVRZX01FRElVTRACEhgKFFBPTElD'
    'WV9TRVZFUklUWV9ISUdIEAMSHAoYUE9MSUNZX1NFVkVSSVRZX0NSSVRJQ0FMEAQ=');

@$core.Deprecated('Use analyzerStackConfigureRequestDescriptor instead')
const AnalyzerStackConfigureRequest$json = {
  '1': 'AnalyzerStackConfigureRequest',
  '2': [
    {'1': 'stack', '3': 1, '4': 1, '5': 9, '10': 'stack'},
    {'1': 'project', '3': 2, '4': 1, '5': 9, '10': 'project'},
    {'1': 'organization', '3': 3, '4': 1, '5': 9, '10': 'organization'},
    {'1': 'dry_run', '3': 4, '4': 1, '5': 8, '10': 'dryRun'},
    {
      '1': 'config_secret_keys',
      '3': 6,
      '4': 3,
      '5': 9,
      '10': 'configSecretKeys'
    },
    {
      '1': 'config',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.AnalyzerStackConfigureRequest.ConfigEntry',
      '10': 'config'
    },
    {
      '1': 'tags',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.AnalyzerStackConfigureRequest.TagsEntry',
      '10': 'tags'
    },
  ],
  '3': [
    AnalyzerStackConfigureRequest_ConfigEntry$json,
    AnalyzerStackConfigureRequest_TagsEntry$json
  ],
  '9': [
    {'1': 5, '2': 6},
  ],
};

@$core.Deprecated('Use analyzerStackConfigureRequestDescriptor instead')
const AnalyzerStackConfigureRequest_ConfigEntry$json = {
  '1': 'ConfigEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use analyzerStackConfigureRequestDescriptor instead')
const AnalyzerStackConfigureRequest_TagsEntry$json = {
  '1': 'TagsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `AnalyzerStackConfigureRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzerStackConfigureRequestDescriptor = $convert.base64Decode(
    'Ch1BbmFseXplclN0YWNrQ29uZmlndXJlUmVxdWVzdBIUCgVzdGFjaxgBIAEoCVIFc3RhY2sSGA'
    'oHcHJvamVjdBgCIAEoCVIHcHJvamVjdBIiCgxvcmdhbml6YXRpb24YAyABKAlSDG9yZ2FuaXph'
    'dGlvbhIXCgdkcnlfcnVuGAQgASgIUgZkcnlSdW4SLAoSY29uZmlnX3NlY3JldF9rZXlzGAYgAy'
    'gJUhBjb25maWdTZWNyZXRLZXlzEkwKBmNvbmZpZxgHIAMoCzI0LnB1bHVtaXJwYy5BbmFseXpl'
    'clN0YWNrQ29uZmlndXJlUmVxdWVzdC5Db25maWdFbnRyeVIGY29uZmlnEkYKBHRhZ3MYCCADKA'
    'syMi5wdWx1bWlycGMuQW5hbHl6ZXJTdGFja0NvbmZpZ3VyZVJlcXVlc3QuVGFnc0VudHJ5UgR0'
    'YWdzGjkKC0NvbmZpZ0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YW'
    'x1ZToCOAEaNwoJVGFnc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2'
    'YWx1ZToCOAFKBAgFEAY=');

@$core.Deprecated('Use analyzerStackConfigureResponseDescriptor instead')
const AnalyzerStackConfigureResponse$json = {
  '1': 'AnalyzerStackConfigureResponse',
};

/// Descriptor for `AnalyzerStackConfigureResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzerStackConfigureResponseDescriptor =
    $convert.base64Decode('Ch5BbmFseXplclN0YWNrQ29uZmlndXJlUmVzcG9uc2U=');

@$core.Deprecated('Use analyzerHandshakeRequestDescriptor instead')
const AnalyzerHandshakeRequest$json = {
  '1': 'AnalyzerHandshakeRequest',
  '2': [
    {'1': 'engine_address', '3': 1, '4': 1, '5': 9, '10': 'engineAddress'},
    {
      '1': 'root_directory',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'rootDirectory',
      '17': true
    },
    {
      '1': 'program_directory',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'programDirectory',
      '17': true
    },
  ],
  '8': [
    {'1': '_root_directory'},
    {'1': '_program_directory'},
  ],
};

/// Descriptor for `AnalyzerHandshakeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzerHandshakeRequestDescriptor = $convert.base64Decode(
    'ChhBbmFseXplckhhbmRzaGFrZVJlcXVlc3QSJQoOZW5naW5lX2FkZHJlc3MYASABKAlSDWVuZ2'
    'luZUFkZHJlc3MSKgoOcm9vdF9kaXJlY3RvcnkYAiABKAlIAFINcm9vdERpcmVjdG9yeYgBARIw'
    'ChFwcm9ncmFtX2RpcmVjdG9yeRgDIAEoCUgBUhBwcm9ncmFtRGlyZWN0b3J5iAEBQhEKD19yb2'
    '90X2RpcmVjdG9yeUIUChJfcHJvZ3JhbV9kaXJlY3Rvcnk=');

@$core.Deprecated('Use analyzerHandshakeResponseDescriptor instead')
const AnalyzerHandshakeResponse$json = {
  '1': 'AnalyzerHandshakeResponse',
};

/// Descriptor for `AnalyzerHandshakeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzerHandshakeResponseDescriptor =
    $convert.base64Decode('ChlBbmFseXplckhhbmRzaGFrZVJlc3BvbnNl');

@$core.Deprecated('Use analyzeRequestDescriptor instead')
const AnalyzeRequest$json = {
  '1': 'AnalyzeRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {
      '1': 'properties',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {'1': 'urn', '3': 3, '4': 1, '5': 9, '10': 'urn'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'options',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.AnalyzerResourceOptions',
      '10': 'options'
    },
    {
      '1': 'provider',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.AnalyzerProviderResource',
      '10': 'provider'
    },
  ],
};

/// Descriptor for `AnalyzeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzeRequestDescriptor = $convert.base64Decode(
    'Cg5BbmFseXplUmVxdWVzdBISCgR0eXBlGAEgASgJUgR0eXBlEjcKCnByb3BlcnRpZXMYAiABKA'
    'syFy5nb29nbGUucHJvdG9idWYuU3RydWN0Ugpwcm9wZXJ0aWVzEhAKA3VybhgDIAEoCVIDdXJu'
    'EhIKBG5hbWUYBCABKAlSBG5hbWUSPAoHb3B0aW9ucxgFIAEoCzIiLnB1bHVtaXJwYy5BbmFseX'
    'plclJlc291cmNlT3B0aW9uc1IHb3B0aW9ucxI/Cghwcm92aWRlchgGIAEoCzIjLnB1bHVtaXJw'
    'Yy5BbmFseXplclByb3ZpZGVyUmVzb3VyY2VSCHByb3ZpZGVy');

@$core.Deprecated('Use analyzerResourceDescriptor instead')
const AnalyzerResource$json = {
  '1': 'AnalyzerResource',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {
      '1': 'properties',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {'1': 'urn', '3': 3, '4': 1, '5': 9, '10': 'urn'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'options',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.AnalyzerResourceOptions',
      '10': 'options'
    },
    {
      '1': 'provider',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.AnalyzerProviderResource',
      '10': 'provider'
    },
    {'1': 'parent', '3': 7, '4': 1, '5': 9, '10': 'parent'},
    {'1': 'dependencies', '3': 8, '4': 3, '5': 9, '10': 'dependencies'},
    {
      '1': 'propertyDependencies',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.AnalyzerResource.PropertyDependenciesEntry',
      '10': 'propertyDependencies'
    },
  ],
  '3': [AnalyzerResource_PropertyDependenciesEntry$json],
};

@$core.Deprecated('Use analyzerResourceDescriptor instead')
const AnalyzerResource_PropertyDependenciesEntry$json = {
  '1': 'PropertyDependenciesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.AnalyzerPropertyDependencies',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `AnalyzerResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzerResourceDescriptor = $convert.base64Decode(
    'ChBBbmFseXplclJlc291cmNlEhIKBHR5cGUYASABKAlSBHR5cGUSNwoKcHJvcGVydGllcxgCIA'
    'EoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSCnByb3BlcnRpZXMSEAoDdXJuGAMgASgJUgN1'
    'cm4SEgoEbmFtZRgEIAEoCVIEbmFtZRI8CgdvcHRpb25zGAUgASgLMiIucHVsdW1pcnBjLkFuYW'
    'x5emVyUmVzb3VyY2VPcHRpb25zUgdvcHRpb25zEj8KCHByb3ZpZGVyGAYgASgLMiMucHVsdW1p'
    'cnBjLkFuYWx5emVyUHJvdmlkZXJSZXNvdXJjZVIIcHJvdmlkZXISFgoGcGFyZW50GAcgASgJUg'
    'ZwYXJlbnQSIgoMZGVwZW5kZW5jaWVzGAggAygJUgxkZXBlbmRlbmNpZXMSaQoUcHJvcGVydHlE'
    'ZXBlbmRlbmNpZXMYCSADKAsyNS5wdWx1bWlycGMuQW5hbHl6ZXJSZXNvdXJjZS5Qcm9wZXJ0eU'
    'RlcGVuZGVuY2llc0VudHJ5UhRwcm9wZXJ0eURlcGVuZGVuY2llcxpwChlQcm9wZXJ0eURlcGVu'
    'ZGVuY2llc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5Ej0KBXZhbHVlGAIgASgLMicucHVsdW1pcn'
    'BjLkFuYWx5emVyUHJvcGVydHlEZXBlbmRlbmNpZXNSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use analyzerResourceOptionsDescriptor instead')
const AnalyzerResourceOptions$json = {
  '1': 'AnalyzerResourceOptions',
  '2': [
    {'1': 'protect', '3': 1, '4': 1, '5': 8, '10': 'protect'},
    {'1': 'ignoreChanges', '3': 2, '4': 3, '5': 9, '10': 'ignoreChanges'},
    {
      '1': 'deleteBeforeReplace',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'deleteBeforeReplace'
    },
    {
      '1': 'deleteBeforeReplaceDefined',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'deleteBeforeReplaceDefined'
    },
    {
      '1': 'additionalSecretOutputs',
      '3': 5,
      '4': 3,
      '5': 9,
      '10': 'additionalSecretOutputs'
    },
    {'1': 'aliases', '3': 6, '4': 3, '5': 9, '10': 'aliases'},
    {
      '1': 'customTimeouts',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.AnalyzerResourceOptions.CustomTimeouts',
      '10': 'customTimeouts'
    },
    {'1': 'parent', '3': 8, '4': 1, '5': 9, '10': 'parent'},
  ],
  '3': [AnalyzerResourceOptions_CustomTimeouts$json],
};

@$core.Deprecated('Use analyzerResourceOptionsDescriptor instead')
const AnalyzerResourceOptions_CustomTimeouts$json = {
  '1': 'CustomTimeouts',
  '2': [
    {'1': 'create', '3': 1, '4': 1, '5': 1, '10': 'create'},
    {'1': 'update', '3': 2, '4': 1, '5': 1, '10': 'update'},
    {'1': 'delete', '3': 3, '4': 1, '5': 1, '10': 'delete'},
  ],
};

/// Descriptor for `AnalyzerResourceOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzerResourceOptionsDescriptor = $convert.base64Decode(
    'ChdBbmFseXplclJlc291cmNlT3B0aW9ucxIYCgdwcm90ZWN0GAEgASgIUgdwcm90ZWN0EiQKDW'
    'lnbm9yZUNoYW5nZXMYAiADKAlSDWlnbm9yZUNoYW5nZXMSMAoTZGVsZXRlQmVmb3JlUmVwbGFj'
    'ZRgDIAEoCFITZGVsZXRlQmVmb3JlUmVwbGFjZRI+ChpkZWxldGVCZWZvcmVSZXBsYWNlRGVmaW'
    '5lZBgEIAEoCFIaZGVsZXRlQmVmb3JlUmVwbGFjZURlZmluZWQSOAoXYWRkaXRpb25hbFNlY3Jl'
    'dE91dHB1dHMYBSADKAlSF2FkZGl0aW9uYWxTZWNyZXRPdXRwdXRzEhgKB2FsaWFzZXMYBiADKA'
    'lSB2FsaWFzZXMSWQoOY3VzdG9tVGltZW91dHMYByABKAsyMS5wdWx1bWlycGMuQW5hbHl6ZXJS'
    'ZXNvdXJjZU9wdGlvbnMuQ3VzdG9tVGltZW91dHNSDmN1c3RvbVRpbWVvdXRzEhYKBnBhcmVudB'
    'gIIAEoCVIGcGFyZW50GlgKDkN1c3RvbVRpbWVvdXRzEhYKBmNyZWF0ZRgBIAEoAVIGY3JlYXRl'
    'EhYKBnVwZGF0ZRgCIAEoAVIGdXBkYXRlEhYKBmRlbGV0ZRgDIAEoAVIGZGVsZXRl');

@$core.Deprecated('Use analyzerProviderResourceDescriptor instead')
const AnalyzerProviderResource$json = {
  '1': 'AnalyzerProviderResource',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {
      '1': 'properties',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {'1': 'urn', '3': 3, '4': 1, '5': 9, '10': 'urn'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `AnalyzerProviderResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzerProviderResourceDescriptor = $convert.base64Decode(
    'ChhBbmFseXplclByb3ZpZGVyUmVzb3VyY2USEgoEdHlwZRgBIAEoCVIEdHlwZRI3Cgpwcm9wZX'
    'J0aWVzGAIgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKcHJvcGVydGllcxIQCgN1cm4Y'
    'AyABKAlSA3VybhISCgRuYW1lGAQgASgJUgRuYW1l');

@$core.Deprecated('Use analyzerPropertyDependenciesDescriptor instead')
const AnalyzerPropertyDependencies$json = {
  '1': 'AnalyzerPropertyDependencies',
  '2': [
    {'1': 'urns', '3': 1, '4': 3, '5': 9, '10': 'urns'},
  ],
};

/// Descriptor for `AnalyzerPropertyDependencies`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzerPropertyDependenciesDescriptor =
    $convert.base64Decode(
        'ChxBbmFseXplclByb3BlcnR5RGVwZW5kZW5jaWVzEhIKBHVybnMYASADKAlSBHVybnM=');

@$core.Deprecated('Use analyzeStackRequestDescriptor instead')
const AnalyzeStackRequest$json = {
  '1': 'AnalyzeStackRequest',
  '2': [
    {
      '1': 'resources',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.AnalyzerResource',
      '10': 'resources'
    },
  ],
};

/// Descriptor for `AnalyzeStackRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzeStackRequestDescriptor = $convert.base64Decode(
    'ChNBbmFseXplU3RhY2tSZXF1ZXN0EjkKCXJlc291cmNlcxgBIAMoCzIbLnB1bHVtaXJwYy5Bbm'
    'FseXplclJlc291cmNlUglyZXNvdXJjZXM=');

@$core.Deprecated('Use analyzeResponseDescriptor instead')
const AnalyzeResponse$json = {
  '1': 'AnalyzeResponse',
  '2': [
    {
      '1': 'diagnostics',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.AnalyzeDiagnostic',
      '10': 'diagnostics'
    },
    {
      '1': 'not_applicable',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.PolicyNotApplicable',
      '10': 'notApplicable'
    },
  ],
};

/// Descriptor for `AnalyzeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzeResponseDescriptor = $convert.base64Decode(
    'Cg9BbmFseXplUmVzcG9uc2USPgoLZGlhZ25vc3RpY3MYAiADKAsyHC5wdWx1bWlycGMuQW5hbH'
    'l6ZURpYWdub3N0aWNSC2RpYWdub3N0aWNzEkUKDm5vdF9hcHBsaWNhYmxlGAMgAygLMh4ucHVs'
    'dW1pcnBjLlBvbGljeU5vdEFwcGxpY2FibGVSDW5vdEFwcGxpY2FibGU=');

@$core.Deprecated('Use analyzeDiagnosticDescriptor instead')
const AnalyzeDiagnostic$json = {
  '1': 'AnalyzeDiagnostic',
  '2': [
    {'1': 'policyName', '3': 1, '4': 1, '5': 9, '10': 'policyName'},
    {'1': 'policyPackName', '3': 2, '4': 1, '5': 9, '10': 'policyPackName'},
    {
      '1': 'policyPackVersion',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'policyPackVersion'
    },
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
    {
      '1': 'enforcementLevel',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.EnforcementLevel',
      '10': 'enforcementLevel'
    },
    {'1': 'urn', '3': 8, '4': 1, '5': 9, '10': 'urn'},
    {
      '1': 'severity',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.PolicySeverity',
      '10': 'severity'
    },
  ],
  '9': [
    {'1': 6, '2': 7},
  ],
  '10': ['tags'],
};

/// Descriptor for `AnalyzeDiagnostic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzeDiagnosticDescriptor = $convert.base64Decode(
    'ChFBbmFseXplRGlhZ25vc3RpYxIeCgpwb2xpY3lOYW1lGAEgASgJUgpwb2xpY3lOYW1lEiYKDn'
    'BvbGljeVBhY2tOYW1lGAIgASgJUg5wb2xpY3lQYWNrTmFtZRIsChFwb2xpY3lQYWNrVmVyc2lv'
    'bhgDIAEoCVIRcG9saWN5UGFja1ZlcnNpb24SIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2NyaX'
    'B0aW9uEhgKB21lc3NhZ2UYBSABKAlSB21lc3NhZ2USRwoQZW5mb3JjZW1lbnRMZXZlbBgHIAEo'
    'DjIbLnB1bHVtaXJwYy5FbmZvcmNlbWVudExldmVsUhBlbmZvcmNlbWVudExldmVsEhAKA3Vybh'
    'gIIAEoCVIDdXJuEjUKCHNldmVyaXR5GAkgASgOMhkucHVsdW1pcnBjLlBvbGljeVNldmVyaXR5'
    'UghzZXZlcml0eUoECAYQB1IEdGFncw==');

@$core.Deprecated('Use remediationDescriptor instead')
const Remediation$json = {
  '1': 'Remediation',
  '2': [
    {'1': 'policyName', '3': 1, '4': 1, '5': 9, '10': 'policyName'},
    {'1': 'policyPackName', '3': 2, '4': 1, '5': 9, '10': 'policyPackName'},
    {
      '1': 'policyPackVersion',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'policyPackVersion'
    },
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'properties',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {'1': 'diagnostic', '3': 6, '4': 1, '5': 9, '10': 'diagnostic'},
  ],
};

/// Descriptor for `Remediation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List remediationDescriptor = $convert.base64Decode(
    'CgtSZW1lZGlhdGlvbhIeCgpwb2xpY3lOYW1lGAEgASgJUgpwb2xpY3lOYW1lEiYKDnBvbGljeV'
    'BhY2tOYW1lGAIgASgJUg5wb2xpY3lQYWNrTmFtZRIsChFwb2xpY3lQYWNrVmVyc2lvbhgDIAEo'
    'CVIRcG9saWN5UGFja1ZlcnNpb24SIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2NyaXB0aW9uEj'
    'cKCnByb3BlcnRpZXMYBSABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0Ugpwcm9wZXJ0aWVz'
    'Eh4KCmRpYWdub3N0aWMYBiABKAlSCmRpYWdub3N0aWM=');

@$core.Deprecated('Use remediateResponseDescriptor instead')
const RemediateResponse$json = {
  '1': 'RemediateResponse',
  '2': [
    {
      '1': 'remediations',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.Remediation',
      '10': 'remediations'
    },
    {
      '1': 'not_applicable',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.PolicyNotApplicable',
      '10': 'notApplicable'
    },
  ],
};

/// Descriptor for `RemediateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List remediateResponseDescriptor = $convert.base64Decode(
    'ChFSZW1lZGlhdGVSZXNwb25zZRI6CgxyZW1lZGlhdGlvbnMYASADKAsyFi5wdWx1bWlycGMuUm'
    'VtZWRpYXRpb25SDHJlbWVkaWF0aW9ucxJFCg5ub3RfYXBwbGljYWJsZRgCIAMoCzIeLnB1bHVt'
    'aXJwYy5Qb2xpY3lOb3RBcHBsaWNhYmxlUg1ub3RBcHBsaWNhYmxl');

@$core.Deprecated('Use analyzerInfoDescriptor instead')
const AnalyzerInfo$json = {
  '1': 'AnalyzerInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'displayName', '3': 2, '4': 1, '5': 9, '10': 'displayName'},
    {
      '1': 'policies',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.PolicyInfo',
      '10': 'policies'
    },
    {'1': 'version', '3': 4, '4': 1, '5': 9, '10': 'version'},
    {'1': 'supportsConfig', '3': 5, '4': 1, '5': 8, '10': 'supportsConfig'},
    {
      '1': 'initialConfig',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.AnalyzerInfo.InitialConfigEntry',
      '10': 'initialConfig'
    },
    {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
    {'1': 'readme', '3': 8, '4': 1, '5': 9, '10': 'readme'},
    {'1': 'provider', '3': 9, '4': 1, '5': 9, '10': 'provider'},
    {'1': 'tags', '3': 10, '4': 3, '5': 9, '10': 'tags'},
    {'1': 'repository', '3': 11, '4': 1, '5': 9, '10': 'repository'},
  ],
  '3': [AnalyzerInfo_InitialConfigEntry$json],
};

@$core.Deprecated('Use analyzerInfoDescriptor instead')
const AnalyzerInfo_InitialConfigEntry$json = {
  '1': 'InitialConfigEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.PolicyConfig',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `AnalyzerInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzerInfoDescriptor = $convert.base64Decode(
    'CgxBbmFseXplckluZm8SEgoEbmFtZRgBIAEoCVIEbmFtZRIgCgtkaXNwbGF5TmFtZRgCIAEoCV'
    'ILZGlzcGxheU5hbWUSMQoIcG9saWNpZXMYAyADKAsyFS5wdWx1bWlycGMuUG9saWN5SW5mb1II'
    'cG9saWNpZXMSGAoHdmVyc2lvbhgEIAEoCVIHdmVyc2lvbhImCg5zdXBwb3J0c0NvbmZpZxgFIA'
    'EoCFIOc3VwcG9ydHNDb25maWcSUAoNaW5pdGlhbENvbmZpZxgGIAMoCzIqLnB1bHVtaXJwYy5B'
    'bmFseXplckluZm8uSW5pdGlhbENvbmZpZ0VudHJ5Ug1pbml0aWFsQ29uZmlnEiAKC2Rlc2NyaX'
    'B0aW9uGAcgASgJUgtkZXNjcmlwdGlvbhIWCgZyZWFkbWUYCCABKAlSBnJlYWRtZRIaCghwcm92'
    'aWRlchgJIAEoCVIIcHJvdmlkZXISEgoEdGFncxgKIAMoCVIEdGFncxIeCgpyZXBvc2l0b3J5GA'
    'sgASgJUgpyZXBvc2l0b3J5GlkKEkluaXRpYWxDb25maWdFbnRyeRIQCgNrZXkYASABKAlSA2tl'
    'eRItCgV2YWx1ZRgCIAEoCzIXLnB1bHVtaXJwYy5Qb2xpY3lDb25maWdSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use policyInfoDescriptor instead')
const PolicyInfo$json = {
  '1': 'PolicyInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'displayName', '3': 2, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    {
      '1': 'enforcementLevel',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.EnforcementLevel',
      '10': 'enforcementLevel'
    },
    {
      '1': 'configSchema',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.PolicyConfigSchema',
      '10': 'configSchema'
    },
    {
      '1': 'policy_type',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.PolicyType',
      '10': 'policyType'
    },
    {
      '1': 'severity',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.PolicySeverity',
      '10': 'severity'
    },
    {
      '1': 'framework',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.PolicyComplianceFramework',
      '10': 'framework'
    },
    {'1': 'tags', '3': 10, '4': 3, '5': 9, '10': 'tags'},
    {
      '1': 'remediation_steps',
      '3': 11,
      '4': 1,
      '5': 9,
      '10': 'remediationSteps'
    },
    {'1': 'url', '3': 12, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `PolicyInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyInfoDescriptor = $convert.base64Decode(
    'CgpQb2xpY3lJbmZvEhIKBG5hbWUYASABKAlSBG5hbWUSIAoLZGlzcGxheU5hbWUYAiABKAlSC2'
    'Rpc3BsYXlOYW1lEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIYCgdtZXNzYWdl'
    'GAQgASgJUgdtZXNzYWdlEkcKEGVuZm9yY2VtZW50TGV2ZWwYBSABKA4yGy5wdWx1bWlycGMuRW'
    '5mb3JjZW1lbnRMZXZlbFIQZW5mb3JjZW1lbnRMZXZlbBJBCgxjb25maWdTY2hlbWEYBiABKAsy'
    'HS5wdWx1bWlycGMuUG9saWN5Q29uZmlnU2NoZW1hUgxjb25maWdTY2hlbWESNgoLcG9saWN5X3'
    'R5cGUYByABKA4yFS5wdWx1bWlycGMuUG9saWN5VHlwZVIKcG9saWN5VHlwZRI1CghzZXZlcml0'
    'eRgIIAEoDjIZLnB1bHVtaXJwYy5Qb2xpY3lTZXZlcml0eVIIc2V2ZXJpdHkSQgoJZnJhbWV3b3'
    'JrGAkgASgLMiQucHVsdW1pcnBjLlBvbGljeUNvbXBsaWFuY2VGcmFtZXdvcmtSCWZyYW1ld29y'
    'axISCgR0YWdzGAogAygJUgR0YWdzEisKEXJlbWVkaWF0aW9uX3N0ZXBzGAsgASgJUhByZW1lZG'
    'lhdGlvblN0ZXBzEhAKA3VybBgMIAEoCVIDdXJs');

@$core.Deprecated('Use policyConfigSchemaDescriptor instead')
const PolicyConfigSchema$json = {
  '1': 'PolicyConfigSchema',
  '2': [
    {
      '1': 'properties',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'properties'
    },
    {'1': 'required', '3': 2, '4': 3, '5': 9, '10': 'required'},
  ],
};

/// Descriptor for `PolicyConfigSchema`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyConfigSchemaDescriptor = $convert.base64Decode(
    'ChJQb2xpY3lDb25maWdTY2hlbWESNwoKcHJvcGVydGllcxgBIAEoCzIXLmdvb2dsZS5wcm90b2'
    'J1Zi5TdHJ1Y3RSCnByb3BlcnRpZXMSGgoIcmVxdWlyZWQYAiADKAlSCHJlcXVpcmVk');

@$core.Deprecated('Use policyConfigDescriptor instead')
const PolicyConfig$json = {
  '1': 'PolicyConfig',
  '2': [
    {
      '1': 'enforcementLevel',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.EnforcementLevel',
      '10': 'enforcementLevel'
    },
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

/// Descriptor for `PolicyConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyConfigDescriptor = $convert.base64Decode(
    'CgxQb2xpY3lDb25maWcSRwoQZW5mb3JjZW1lbnRMZXZlbBgBIAEoDjIbLnB1bHVtaXJwYy5Fbm'
    'ZvcmNlbWVudExldmVsUhBlbmZvcmNlbWVudExldmVsEjcKCnByb3BlcnRpZXMYAiABKAsyFy5n'
    'b29nbGUucHJvdG9idWYuU3RydWN0Ugpwcm9wZXJ0aWVz');

@$core.Deprecated('Use configureAnalyzerRequestDescriptor instead')
const ConfigureAnalyzerRequest$json = {
  '1': 'ConfigureAnalyzerRequest',
  '2': [
    {
      '1': 'policyConfig',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pulumirpc.ConfigureAnalyzerRequest.PolicyConfigEntry',
      '10': 'policyConfig'
    },
  ],
  '3': [ConfigureAnalyzerRequest_PolicyConfigEntry$json],
};

@$core.Deprecated('Use configureAnalyzerRequestDescriptor instead')
const ConfigureAnalyzerRequest_PolicyConfigEntry$json = {
  '1': 'PolicyConfigEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pulumirpc.PolicyConfig',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `ConfigureAnalyzerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configureAnalyzerRequestDescriptor = $convert.base64Decode(
    'ChhDb25maWd1cmVBbmFseXplclJlcXVlc3QSWQoMcG9saWN5Q29uZmlnGAEgAygLMjUucHVsdW'
    '1pcnBjLkNvbmZpZ3VyZUFuYWx5emVyUmVxdWVzdC5Qb2xpY3lDb25maWdFbnRyeVIMcG9saWN5'
    'Q29uZmlnGlgKEVBvbGljeUNvbmZpZ0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5Ei0KBXZhbHVlGA'
    'IgASgLMhcucHVsdW1pcnBjLlBvbGljeUNvbmZpZ1IFdmFsdWU6AjgB');

@$core.Deprecated('Use policyComplianceFrameworkDescriptor instead')
const PolicyComplianceFramework$json = {
  '1': 'PolicyComplianceFramework',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'reference', '3': 3, '4': 1, '5': 9, '10': 'reference'},
    {'1': 'specification', '3': 4, '4': 1, '5': 9, '10': 'specification'},
  ],
};

/// Descriptor for `PolicyComplianceFramework`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyComplianceFrameworkDescriptor = $convert.base64Decode(
    'ChlQb2xpY3lDb21wbGlhbmNlRnJhbWV3b3JrEhIKBG5hbWUYASABKAlSBG5hbWUSGAoHdmVyc2'
    'lvbhgCIAEoCVIHdmVyc2lvbhIcCglyZWZlcmVuY2UYAyABKAlSCXJlZmVyZW5jZRIkCg1zcGVj'
    'aWZpY2F0aW9uGAQgASgJUg1zcGVjaWZpY2F0aW9u');

@$core.Deprecated('Use policyNotApplicableDescriptor instead')
const PolicyNotApplicable$json = {
  '1': 'PolicyNotApplicable',
  '2': [
    {'1': 'policy_name', '3': 1, '4': 1, '5': 9, '10': 'policyName'},
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `PolicyNotApplicable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyNotApplicableDescriptor = $convert.base64Decode(
    'ChNQb2xpY3lOb3RBcHBsaWNhYmxlEh8KC3BvbGljeV9uYW1lGAEgASgJUgpwb2xpY3lOYW1lEh'
    'YKBnJlYXNvbhgCIAEoCVIGcmVhc29u');
