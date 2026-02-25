// This is a generated file - do not edit.
//
// Generated from pulumi/codegen/mapper.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// `GetMappingRequest` is the type of requests sent as part of a [](codegen.Mapper.GetMapping) call.
class GetMappingRequest extends $pb.GeneratedMessage {
  factory GetMappingRequest({
    $core.String? provider,
    $core.String? pulumiProvider,
    MapperParameterizationHint? parameterizationHint,
  }) {
    final result = create();
    if (provider != null) result.provider = provider;
    if (pulumiProvider != null) result.pulumiProvider = pulumiProvider;
    if (parameterizationHint != null)
      result.parameterizationHint = parameterizationHint;
    return result;
  }

  GetMappingRequest._();

  factory GetMappingRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMappingRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMappingRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'codegen'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'provider')
    ..aOS(2, _omitFieldNames ? '' : 'pulumiProvider')
    ..aOM<MapperParameterizationHint>(
        3, _omitFieldNames ? '' : 'parameterizationHint',
        subBuilder: MapperParameterizationHint.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMappingRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMappingRequest copyWith(void Function(GetMappingRequest) updates) =>
      super.copyWith((message) => updates(message as GetMappingRequest))
          as GetMappingRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMappingRequest create() => GetMappingRequest._();
  @$core.override
  GetMappingRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMappingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMappingRequest>(create);
  static GetMappingRequest? _defaultInstance;

  /// The name of the source provider (e.g. the Terraform provider name if a Terraform program is being converted) for
  /// which a mapping into Pulumi should be returned.
  @$pb.TagNumber(1)
  $core.String get provider => $_getSZ(0);
  @$pb.TagNumber(1)
  set provider($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProvider() => $_has(0);
  @$pb.TagNumber(1)
  void clearProvider() => $_clearField(1);

  /// The name of the Pulumi plugin that is expected to provide the mapping. If left empty, will be defaulted to the
  /// source provider name.
  @$pb.TagNumber(2)
  $core.String get pulumiProvider => $_getSZ(1);
  @$pb.TagNumber(2)
  set pulumiProvider($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPulumiProvider() => $_has(1);
  @$pb.TagNumber(2)
  void clearPulumiProvider() => $_clearField(2);

  /// An optional parameterization that should be used on the named plugin before asking it for mappings.
  @$pb.TagNumber(3)
  MapperParameterizationHint get parameterizationHint => $_getN(2);
  @$pb.TagNumber(3)
  set parameterizationHint(MapperParameterizationHint value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasParameterizationHint() => $_has(2);
  @$pb.TagNumber(3)
  void clearParameterizationHint() => $_clearField(3);
  @$pb.TagNumber(3)
  MapperParameterizationHint ensureParameterizationHint() => $_ensure(2);
}

/// `MapperPackageParameterizationHint` is the type of hints that may be passed to [](codegen.Mapper.GetMapping) when it
/// is expected that a parameterized provider plugin is the most likely source of a mapping. E.g. in the case of a
/// dynamically bridged Terraform provider, callers may wish to express that a mapping is most likely offered by the
/// "terraform-provider" plugin, but only when it is parameterized with the appropriate Terraform provider information.
class MapperParameterizationHint extends $pb.GeneratedMessage {
  factory MapperParameterizationHint({
    $core.String? name,
    $core.String? version,
    $core.List<$core.int>? value,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (version != null) result.version = version;
    if (value != null) result.value = value;
    return result;
  }

  MapperParameterizationHint._();

  factory MapperParameterizationHint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapperParameterizationHint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapperParameterizationHint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'codegen'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapperParameterizationHint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapperParameterizationHint copyWith(
          void Function(MapperParameterizationHint) updates) =>
      super.copyWith(
              (message) => updates(message as MapperParameterizationHint))
          as MapperParameterizationHint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapperParameterizationHint create() => MapperParameterizationHint._();
  @$core.override
  MapperParameterizationHint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapperParameterizationHint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MapperParameterizationHint>(create);
  static MapperParameterizationHint? _defaultInstance;

  /// The package name expected once parameterization has been applied.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// The package version expected once parameterization has been applied.
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);

  /// The parameter value to send to the provider plugin as part of parameterization.
  @$pb.TagNumber(3)
  $core.List<$core.int> get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => $_clearField(3);
}

/// `GetMappingResponse` is the type of responses sent by [](codegen.Mapper.GetMapping) calls.
class GetMappingResponse extends $pb.GeneratedMessage {
  factory GetMappingResponse({
    $core.List<$core.int>? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  GetMappingResponse._();

  factory GetMappingResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMappingResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMappingResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'codegen'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMappingResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMappingResponse copyWith(void Function(GetMappingResponse) updates) =>
      super.copyWith((message) => updates(message as GetMappingResponse))
          as GetMappingResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMappingResponse create() => GetMappingResponse._();
  @$core.override
  GetMappingResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMappingResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMappingResponse>(create);
  static GetMappingResponse? _defaultInstance;

  /// Conversion-plugin-specific mapping data. For a Terraform conversion, for instance, this is expected to be a piece
  /// of data that maps Terraform names (e.g. resource types) to Pulumi names (e.g. Pulumi resource types). In many
  /// cases this byte array will be a string of encoded JSON, but no specific format is required.
  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
