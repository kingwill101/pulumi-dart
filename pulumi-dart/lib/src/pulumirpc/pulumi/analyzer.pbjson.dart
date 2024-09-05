//
//  Generated code. Do not modify.
//  source: pulumi/analyzer.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

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
    'ZXNvdXJjZU9wdGlvbnMuQ3VzdG9tVGltZW91dHNSDmN1c3RvbVRpbWVvdXRzGlgKDkN1c3RvbV'
    'RpbWVvdXRzEhYKBmNyZWF0ZRgBIAEoAVIGY3JlYXRlEhYKBnVwZGF0ZRgCIAEoAVIGdXBkYXRl'
    'EhYKBmRlbGV0ZRgDIAEoAVIGZGVsZXRl');

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
  ],
};

/// Descriptor for `AnalyzeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzeResponseDescriptor = $convert.base64Decode(
    'Cg9BbmFseXplUmVzcG9uc2USPgoLZGlhZ25vc3RpY3MYAiADKAsyHC5wdWx1bWlycGMuQW5hbH'
    'l6ZURpYWdub3N0aWNSC2RpYWdub3N0aWNz');

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
    {'1': 'tags', '3': 6, '4': 3, '5': 9, '10': 'tags'},
    {
      '1': 'enforcementLevel',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.pulumirpc.EnforcementLevel',
      '10': 'enforcementLevel'
    },
    {'1': 'urn', '3': 8, '4': 1, '5': 9, '10': 'urn'},
  ],
};

/// Descriptor for `AnalyzeDiagnostic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List analyzeDiagnosticDescriptor = $convert.base64Decode(
    'ChFBbmFseXplRGlhZ25vc3RpYxIeCgpwb2xpY3lOYW1lGAEgASgJUgpwb2xpY3lOYW1lEiYKDn'
    'BvbGljeVBhY2tOYW1lGAIgASgJUg5wb2xpY3lQYWNrTmFtZRIsChFwb2xpY3lQYWNrVmVyc2lv'
    'bhgDIAEoCVIRcG9saWN5UGFja1ZlcnNpb24SIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2NyaX'
    'B0aW9uEhgKB21lc3NhZ2UYBSABKAlSB21lc3NhZ2USEgoEdGFncxgGIAMoCVIEdGFncxJHChBl'
    'bmZvcmNlbWVudExldmVsGAcgASgOMhsucHVsdW1pcnBjLkVuZm9yY2VtZW50TGV2ZWxSEGVuZm'
    '9yY2VtZW50TGV2ZWwSEAoDdXJuGAggASgJUgN1cm4=');

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
  ],
};

/// Descriptor for `RemediateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List remediateResponseDescriptor = $convert.base64Decode(
    'ChFSZW1lZGlhdGVSZXNwb25zZRI6CgxyZW1lZGlhdGlvbnMYASADKAsyFi5wdWx1bWlycGMuUm'
    'VtZWRpYXRpb25SDHJlbWVkaWF0aW9ucw==');

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
    'bmFseXplckluZm8uSW5pdGlhbENvbmZpZ0VudHJ5Ug1pbml0aWFsQ29uZmlnGlkKEkluaXRpYW'
    'xDb25maWdFbnRyeRIQCgNrZXkYASABKAlSA2tleRItCgV2YWx1ZRgCIAEoCzIXLnB1bHVtaXJw'
    'Yy5Qb2xpY3lDb25maWdSBXZhbHVlOgI4AQ==');

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
  ],
};

/// Descriptor for `PolicyInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyInfoDescriptor = $convert.base64Decode(
    'CgpQb2xpY3lJbmZvEhIKBG5hbWUYASABKAlSBG5hbWUSIAoLZGlzcGxheU5hbWUYAiABKAlSC2'
    'Rpc3BsYXlOYW1lEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIYCgdtZXNzYWdl'
    'GAQgASgJUgdtZXNzYWdlEkcKEGVuZm9yY2VtZW50TGV2ZWwYBSABKA4yGy5wdWx1bWlycGMuRW'
    '5mb3JjZW1lbnRMZXZlbFIQZW5mb3JjZW1lbnRMZXZlbBJBCgxjb25maWdTY2hlbWEYBiABKAsy'
    'HS5wdWx1bWlycGMuUG9saWN5Q29uZmlnU2NoZW1hUgxjb25maWdTY2hlbWE=');

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
