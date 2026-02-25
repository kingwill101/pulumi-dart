// This is a generated file - do not edit.
//
// Generated from pulumi/analyzer.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart' as $3;

import 'analyzer.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'analyzer.pbenum.dart';

/// `AnalyzerStackConfigureRequest` is the message for the stack configuration of the stack being analyzed.
class AnalyzerStackConfigureRequest extends $pb.GeneratedMessage {
  factory AnalyzerStackConfigureRequest({
    $core.String? stack,
    $core.String? project,
    $core.String? organization,
    $core.bool? dryRun,
    $core.Iterable<$core.String>? configSecretKeys,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? config,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? tags,
  }) {
    final result = create();
    if (stack != null) result.stack = stack;
    if (project != null) result.project = project;
    if (organization != null) result.organization = organization;
    if (dryRun != null) result.dryRun = dryRun;
    if (configSecretKeys != null)
      result.configSecretKeys.addAll(configSecretKeys);
    if (config != null) result.config.addEntries(config);
    if (tags != null) result.tags.addEntries(tags);
    return result;
  }

  AnalyzerStackConfigureRequest._();

  factory AnalyzerStackConfigureRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalyzerStackConfigureRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerStackConfigureRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stack')
    ..aOS(2, _omitFieldNames ? '' : 'project')
    ..aOS(3, _omitFieldNames ? '' : 'organization')
    ..aOB(4, _omitFieldNames ? '' : 'dryRun')
    ..pPS(6, _omitFieldNames ? '' : 'configSecretKeys')
    ..m<$core.String, $core.String>(7, _omitFieldNames ? '' : 'config',
        entryClassName: 'AnalyzerStackConfigureRequest.ConfigEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..m<$core.String, $core.String>(8, _omitFieldNames ? '' : 'tags',
        entryClassName: 'AnalyzerStackConfigureRequest.TagsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerStackConfigureRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerStackConfigureRequest copyWith(
          void Function(AnalyzerStackConfigureRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AnalyzerStackConfigureRequest))
          as AnalyzerStackConfigureRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerStackConfigureRequest create() =>
      AnalyzerStackConfigureRequest._();
  @$core.override
  AnalyzerStackConfigureRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalyzerStackConfigureRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzerStackConfigureRequest>(create);
  static AnalyzerStackConfigureRequest? _defaultInstance;

  /// The stack name being analyzed.
  @$pb.TagNumber(1)
  $core.String get stack => $_getSZ(0);
  @$pb.TagNumber(1)
  set stack($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStack() => $_has(0);
  @$pb.TagNumber(1)
  void clearStack() => $_clearField(1);

  /// The project name of the stack being analyzed.
  @$pb.TagNumber(2)
  $core.String get project => $_getSZ(1);
  @$pb.TagNumber(2)
  set project($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProject() => $_has(1);
  @$pb.TagNumber(2)
  void clearProject() => $_clearField(2);

  /// The organization name of the stack being analyzed.
  @$pb.TagNumber(3)
  $core.String get organization => $_getSZ(2);
  @$pb.TagNumber(3)
  set organization($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOrganization() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrganization() => $_clearField(3);

  /// True if this is a preview/dry run.
  @$pb.TagNumber(4)
  $core.bool get dryRun => $_getBF(3);
  @$pb.TagNumber(4)
  set dryRun($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDryRun() => $_has(3);
  @$pb.TagNumber(4)
  void clearDryRun() => $_clearField(4);

  /// A list of configuration keys whose values should be treated as secrets.
  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get configSecretKeys => $_getList(4);

  /// The configuration of the stack being analyzed.
  @$pb.TagNumber(7)
  $pb.PbMap<$core.String, $core.String> get config => $_getMap(5);

  /// Tags for the current stack.
  @$pb.TagNumber(8)
  $pb.PbMap<$core.String, $core.String> get tags => $_getMap(6);
}

/// `AnalyzerStackConfigureResponse` is the type of responses sent by a [](pulumirpc.Analyzer.ConfigureStack) call.
class AnalyzerStackConfigureResponse extends $pb.GeneratedMessage {
  factory AnalyzerStackConfigureResponse() => create();

  AnalyzerStackConfigureResponse._();

  factory AnalyzerStackConfigureResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalyzerStackConfigureResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerStackConfigureResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerStackConfigureResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerStackConfigureResponse copyWith(
          void Function(AnalyzerStackConfigureResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AnalyzerStackConfigureResponse))
          as AnalyzerStackConfigureResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerStackConfigureResponse create() =>
      AnalyzerStackConfigureResponse._();
  @$core.override
  AnalyzerStackConfigureResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalyzerStackConfigureResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzerStackConfigureResponse>(create);
  static AnalyzerStackConfigureResponse? _defaultInstance;
}

/// `AnalyzerHandshakeRequest` is the type of requests sent as part of a [](pulumirpc.Analyzer.Handshake) call.
class AnalyzerHandshakeRequest extends $pb.GeneratedMessage {
  factory AnalyzerHandshakeRequest({
    $core.String? engineAddress,
    $core.String? rootDirectory,
    $core.String? programDirectory,
  }) {
    final result = create();
    if (engineAddress != null) result.engineAddress = engineAddress;
    if (rootDirectory != null) result.rootDirectory = rootDirectory;
    if (programDirectory != null) result.programDirectory = programDirectory;
    return result;
  }

  AnalyzerHandshakeRequest._();

  factory AnalyzerHandshakeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalyzerHandshakeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerHandshakeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'engineAddress')
    ..aOS(2, _omitFieldNames ? '' : 'rootDirectory')
    ..aOS(3, _omitFieldNames ? '' : 'programDirectory')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerHandshakeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerHandshakeRequest copyWith(
          void Function(AnalyzerHandshakeRequest) updates) =>
      super.copyWith((message) => updates(message as AnalyzerHandshakeRequest))
          as AnalyzerHandshakeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerHandshakeRequest create() => AnalyzerHandshakeRequest._();
  @$core.override
  AnalyzerHandshakeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalyzerHandshakeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzerHandshakeRequest>(create);
  static AnalyzerHandshakeRequest? _defaultInstance;

  /// The gRPC address of the engine handshaking with the analyzer. At a minimum, this address will expose an instance
  /// of the [](pulumirpc.Engine) service.
  @$pb.TagNumber(1)
  $core.String get engineAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set engineAddress($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEngineAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearEngineAddress() => $_clearField(1);

  /// A *root directory* where the analyzer's binary, `PulumiPolicy.yaml`, or other identifying source code is located.
  /// In the event that the analyzer is *not* being booted by the engine (e.g. in the case that the engine has been
  /// asked to attach to an existing running analyzer instance via a host/port number), this field will be empty.
  @$pb.TagNumber(2)
  $core.String get rootDirectory => $_getSZ(1);
  @$pb.TagNumber(2)
  set rootDirectory($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRootDirectory() => $_has(1);
  @$pb.TagNumber(2)
  void clearRootDirectory() => $_clearField(2);

  /// A *program directory* in which the analyzer should execute. This is generally a subdirectory of the root
  /// directory, though this is not required. In the event that the analyzer is *not* being booted by the engine (e.g.
  /// in the case that the engine has been asked to attach to an existing running analyzer instance via a host/port
  /// number), this field will be empty.
  @$pb.TagNumber(3)
  $core.String get programDirectory => $_getSZ(2);
  @$pb.TagNumber(3)
  set programDirectory($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProgramDirectory() => $_has(2);
  @$pb.TagNumber(3)
  void clearProgramDirectory() => $_clearField(3);
}

/// `AnalyzerHandshakeResponse` is the type of responses sent by a [](pulumirpc.Analyzer.Handshake) call.
class AnalyzerHandshakeResponse extends $pb.GeneratedMessage {
  factory AnalyzerHandshakeResponse() => create();

  AnalyzerHandshakeResponse._();

  factory AnalyzerHandshakeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalyzerHandshakeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerHandshakeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerHandshakeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerHandshakeResponse copyWith(
          void Function(AnalyzerHandshakeResponse) updates) =>
      super.copyWith((message) => updates(message as AnalyzerHandshakeResponse))
          as AnalyzerHandshakeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerHandshakeResponse create() => AnalyzerHandshakeResponse._();
  @$core.override
  AnalyzerHandshakeResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalyzerHandshakeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzerHandshakeResponse>(create);
  static AnalyzerHandshakeResponse? _defaultInstance;
}

class AnalyzeRequest extends $pb.GeneratedMessage {
  factory AnalyzeRequest({
    $core.String? type,
    $3.Struct? properties,
    $core.String? urn,
    $core.String? name,
    AnalyzerResourceOptions? options,
    AnalyzerProviderResource? provider,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (properties != null) result.properties = properties;
    if (urn != null) result.urn = urn;
    if (name != null) result.name = name;
    if (options != null) result.options = options;
    if (provider != null) result.provider = provider;
    return result;
  }

  AnalyzeRequest._();

  factory AnalyzeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalyzeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<$3.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $3.Struct.create)
    ..aOS(3, _omitFieldNames ? '' : 'urn')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOM<AnalyzerResourceOptions>(5, _omitFieldNames ? '' : 'options',
        subBuilder: AnalyzerResourceOptions.create)
    ..aOM<AnalyzerProviderResource>(6, _omitFieldNames ? '' : 'provider',
        subBuilder: AnalyzerProviderResource.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzeRequest copyWith(void Function(AnalyzeRequest) updates) =>
      super.copyWith((message) => updates(message as AnalyzeRequest))
          as AnalyzeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzeRequest create() => AnalyzeRequest._();
  @$core.override
  AnalyzeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalyzeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzeRequest>(create);
  static AnalyzeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $3.Struct get properties => $_getN(1);
  @$pb.TagNumber(2)
  set properties($3.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasProperties() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperties() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Struct ensureProperties() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get urn => $_getSZ(2);
  @$pb.TagNumber(3)
  set urn($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUrn() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrn() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);

  @$pb.TagNumber(5)
  AnalyzerResourceOptions get options => $_getN(4);
  @$pb.TagNumber(5)
  set options(AnalyzerResourceOptions value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasOptions() => $_has(4);
  @$pb.TagNumber(5)
  void clearOptions() => $_clearField(5);
  @$pb.TagNumber(5)
  AnalyzerResourceOptions ensureOptions() => $_ensure(4);

  @$pb.TagNumber(6)
  AnalyzerProviderResource get provider => $_getN(5);
  @$pb.TagNumber(6)
  set provider(AnalyzerProviderResource value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasProvider() => $_has(5);
  @$pb.TagNumber(6)
  void clearProvider() => $_clearField(6);
  @$pb.TagNumber(6)
  AnalyzerProviderResource ensureProvider() => $_ensure(5);
}

/// AnalyzerResource defines the view of a Pulumi-managed resource as sent to Analyzers. The properties
/// of the resource are specific to the type of analysis being performed. See the Analyzer
/// service definition for more information.
class AnalyzerResource extends $pb.GeneratedMessage {
  factory AnalyzerResource({
    $core.String? type,
    $3.Struct? properties,
    $core.String? urn,
    $core.String? name,
    AnalyzerResourceOptions? options,
    AnalyzerProviderResource? provider,
    $core.String? parent,
    $core.Iterable<$core.String>? dependencies,
    $core.Iterable<$core.MapEntry<$core.String, AnalyzerPropertyDependencies>>?
        propertyDependencies,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (properties != null) result.properties = properties;
    if (urn != null) result.urn = urn;
    if (name != null) result.name = name;
    if (options != null) result.options = options;
    if (provider != null) result.provider = provider;
    if (parent != null) result.parent = parent;
    if (dependencies != null) result.dependencies.addAll(dependencies);
    if (propertyDependencies != null)
      result.propertyDependencies.addEntries(propertyDependencies);
    return result;
  }

  AnalyzerResource._();

  factory AnalyzerResource.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalyzerResource.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerResource',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<$3.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $3.Struct.create)
    ..aOS(3, _omitFieldNames ? '' : 'urn')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOM<AnalyzerResourceOptions>(5, _omitFieldNames ? '' : 'options',
        subBuilder: AnalyzerResourceOptions.create)
    ..aOM<AnalyzerProviderResource>(6, _omitFieldNames ? '' : 'provider',
        subBuilder: AnalyzerProviderResource.create)
    ..aOS(7, _omitFieldNames ? '' : 'parent')
    ..pPS(8, _omitFieldNames ? '' : 'dependencies')
    ..m<$core.String, AnalyzerPropertyDependencies>(
        9, _omitFieldNames ? '' : 'propertyDependencies',
        protoName: 'propertyDependencies',
        entryClassName: 'AnalyzerResource.PropertyDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: AnalyzerPropertyDependencies.create,
        valueDefaultOrMaker: AnalyzerPropertyDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerResource clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerResource copyWith(void Function(AnalyzerResource) updates) =>
      super.copyWith((message) => updates(message as AnalyzerResource))
          as AnalyzerResource;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerResource create() => AnalyzerResource._();
  @$core.override
  AnalyzerResource createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalyzerResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzerResource>(create);
  static AnalyzerResource? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $3.Struct get properties => $_getN(1);
  @$pb.TagNumber(2)
  set properties($3.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasProperties() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperties() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Struct ensureProperties() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get urn => $_getSZ(2);
  @$pb.TagNumber(3)
  set urn($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUrn() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrn() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);

  @$pb.TagNumber(5)
  AnalyzerResourceOptions get options => $_getN(4);
  @$pb.TagNumber(5)
  set options(AnalyzerResourceOptions value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasOptions() => $_has(4);
  @$pb.TagNumber(5)
  void clearOptions() => $_clearField(5);
  @$pb.TagNumber(5)
  AnalyzerResourceOptions ensureOptions() => $_ensure(4);

  @$pb.TagNumber(6)
  AnalyzerProviderResource get provider => $_getN(5);
  @$pb.TagNumber(6)
  set provider(AnalyzerProviderResource value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasProvider() => $_has(5);
  @$pb.TagNumber(6)
  void clearProvider() => $_clearField(6);
  @$pb.TagNumber(6)
  AnalyzerProviderResource ensureProvider() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get parent => $_getSZ(6);
  @$pb.TagNumber(7)
  set parent($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasParent() => $_has(6);
  @$pb.TagNumber(7)
  void clearParent() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$core.String> get dependencies => $_getList(7);

  @$pb.TagNumber(9)
  $pb.PbMap<$core.String, AnalyzerPropertyDependencies>
      get propertyDependencies => $_getMap(8);
}

/// CustomTimeouts allows a user to be able to create a set of custom timeout parameters.
class AnalyzerResourceOptions_CustomTimeouts extends $pb.GeneratedMessage {
  factory AnalyzerResourceOptions_CustomTimeouts({
    $core.double? create_1,
    $core.double? update,
    $core.double? delete,
  }) {
    final result = create();
    if (create_1 != null) result.create_1 = create_1;
    if (update != null) result.update = update;
    if (delete != null) result.delete = delete;
    return result;
  }

  AnalyzerResourceOptions_CustomTimeouts._();

  factory AnalyzerResourceOptions_CustomTimeouts.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalyzerResourceOptions_CustomTimeouts.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerResourceOptions.CustomTimeouts',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'create')
    ..aD(2, _omitFieldNames ? '' : 'update')
    ..aD(3, _omitFieldNames ? '' : 'delete')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerResourceOptions_CustomTimeouts clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerResourceOptions_CustomTimeouts copyWith(
          void Function(AnalyzerResourceOptions_CustomTimeouts) updates) =>
      super.copyWith((message) =>
              updates(message as AnalyzerResourceOptions_CustomTimeouts))
          as AnalyzerResourceOptions_CustomTimeouts;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerResourceOptions_CustomTimeouts create() =>
      AnalyzerResourceOptions_CustomTimeouts._();
  @$core.override
  AnalyzerResourceOptions_CustomTimeouts createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalyzerResourceOptions_CustomTimeouts getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          AnalyzerResourceOptions_CustomTimeouts>(create);
  static AnalyzerResourceOptions_CustomTimeouts? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get create_1 => $_getN(0);
  @$pb.TagNumber(1)
  set create_1($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCreate_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreate_1() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get update => $_getN(1);
  @$pb.TagNumber(2)
  set update($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUpdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdate() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get delete => $_getN(2);
  @$pb.TagNumber(3)
  set delete($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDelete() => $_has(2);
  @$pb.TagNumber(3)
  void clearDelete() => $_clearField(3);
}

/// AnalyzerResourceOptions defines the options associated with a resource.
class AnalyzerResourceOptions extends $pb.GeneratedMessage {
  factory AnalyzerResourceOptions({
    $core.bool? protect,
    $core.Iterable<$core.String>? ignoreChanges,
    $core.bool? deleteBeforeReplace,
    $core.bool? deleteBeforeReplaceDefined,
    $core.Iterable<$core.String>? additionalSecretOutputs,
    $core.Iterable<$core.String>? aliases,
    AnalyzerResourceOptions_CustomTimeouts? customTimeouts,
    $core.String? parent,
  }) {
    final result = create();
    if (protect != null) result.protect = protect;
    if (ignoreChanges != null) result.ignoreChanges.addAll(ignoreChanges);
    if (deleteBeforeReplace != null)
      result.deleteBeforeReplace = deleteBeforeReplace;
    if (deleteBeforeReplaceDefined != null)
      result.deleteBeforeReplaceDefined = deleteBeforeReplaceDefined;
    if (additionalSecretOutputs != null)
      result.additionalSecretOutputs.addAll(additionalSecretOutputs);
    if (aliases != null) result.aliases.addAll(aliases);
    if (customTimeouts != null) result.customTimeouts = customTimeouts;
    if (parent != null) result.parent = parent;
    return result;
  }

  AnalyzerResourceOptions._();

  factory AnalyzerResourceOptions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalyzerResourceOptions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerResourceOptions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'protect')
    ..pPS(2, _omitFieldNames ? '' : 'ignoreChanges', protoName: 'ignoreChanges')
    ..aOB(3, _omitFieldNames ? '' : 'deleteBeforeReplace',
        protoName: 'deleteBeforeReplace')
    ..aOB(4, _omitFieldNames ? '' : 'deleteBeforeReplaceDefined',
        protoName: 'deleteBeforeReplaceDefined')
    ..pPS(5, _omitFieldNames ? '' : 'additionalSecretOutputs',
        protoName: 'additionalSecretOutputs')
    ..pPS(6, _omitFieldNames ? '' : 'aliases')
    ..aOM<AnalyzerResourceOptions_CustomTimeouts>(
        7, _omitFieldNames ? '' : 'customTimeouts',
        protoName: 'customTimeouts',
        subBuilder: AnalyzerResourceOptions_CustomTimeouts.create)
    ..aOS(8, _omitFieldNames ? '' : 'parent')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerResourceOptions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerResourceOptions copyWith(
          void Function(AnalyzerResourceOptions) updates) =>
      super.copyWith((message) => updates(message as AnalyzerResourceOptions))
          as AnalyzerResourceOptions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerResourceOptions create() => AnalyzerResourceOptions._();
  @$core.override
  AnalyzerResourceOptions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalyzerResourceOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzerResourceOptions>(create);
  static AnalyzerResourceOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get protect => $_getBF(0);
  @$pb.TagNumber(1)
  set protect($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProtect() => $_has(0);
  @$pb.TagNumber(1)
  void clearProtect() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get ignoreChanges => $_getList(1);

  @$pb.TagNumber(3)
  $core.bool get deleteBeforeReplace => $_getBF(2);
  @$pb.TagNumber(3)
  set deleteBeforeReplace($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDeleteBeforeReplace() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeleteBeforeReplace() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get deleteBeforeReplaceDefined => $_getBF(3);
  @$pb.TagNumber(4)
  set deleteBeforeReplaceDefined($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDeleteBeforeReplaceDefined() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeleteBeforeReplaceDefined() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get additionalSecretOutputs => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get aliases => $_getList(5);

  @$pb.TagNumber(7)
  AnalyzerResourceOptions_CustomTimeouts get customTimeouts => $_getN(6);
  @$pb.TagNumber(7)
  set customTimeouts(AnalyzerResourceOptions_CustomTimeouts value) =>
      $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCustomTimeouts() => $_has(6);
  @$pb.TagNumber(7)
  void clearCustomTimeouts() => $_clearField(7);
  @$pb.TagNumber(7)
  AnalyzerResourceOptions_CustomTimeouts ensureCustomTimeouts() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get parent => $_getSZ(7);
  @$pb.TagNumber(8)
  set parent($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasParent() => $_has(7);
  @$pb.TagNumber(8)
  void clearParent() => $_clearField(8);
}

/// AnalyzerProviderResource provides information about a resource's provider.
class AnalyzerProviderResource extends $pb.GeneratedMessage {
  factory AnalyzerProviderResource({
    $core.String? type,
    $3.Struct? properties,
    $core.String? urn,
    $core.String? name,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (properties != null) result.properties = properties;
    if (urn != null) result.urn = urn;
    if (name != null) result.name = name;
    return result;
  }

  AnalyzerProviderResource._();

  factory AnalyzerProviderResource.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalyzerProviderResource.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerProviderResource',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<$3.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $3.Struct.create)
    ..aOS(3, _omitFieldNames ? '' : 'urn')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerProviderResource clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerProviderResource copyWith(
          void Function(AnalyzerProviderResource) updates) =>
      super.copyWith((message) => updates(message as AnalyzerProviderResource))
          as AnalyzerProviderResource;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerProviderResource create() => AnalyzerProviderResource._();
  @$core.override
  AnalyzerProviderResource createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalyzerProviderResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzerProviderResource>(create);
  static AnalyzerProviderResource? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $3.Struct get properties => $_getN(1);
  @$pb.TagNumber(2)
  set properties($3.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasProperties() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperties() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Struct ensureProperties() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get urn => $_getSZ(2);
  @$pb.TagNumber(3)
  set urn($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUrn() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrn() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);
}

/// AnalyzerPropertyDependencies describes the resources that a particular property depends on.
class AnalyzerPropertyDependencies extends $pb.GeneratedMessage {
  factory AnalyzerPropertyDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final result = create();
    if (urns != null) result.urns.addAll(urns);
    return result;
  }

  AnalyzerPropertyDependencies._();

  factory AnalyzerPropertyDependencies.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalyzerPropertyDependencies.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerPropertyDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerPropertyDependencies clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerPropertyDependencies copyWith(
          void Function(AnalyzerPropertyDependencies) updates) =>
      super.copyWith(
              (message) => updates(message as AnalyzerPropertyDependencies))
          as AnalyzerPropertyDependencies;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerPropertyDependencies create() =>
      AnalyzerPropertyDependencies._();
  @$core.override
  AnalyzerPropertyDependencies createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalyzerPropertyDependencies getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzerPropertyDependencies>(create);
  static AnalyzerPropertyDependencies? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get urns => $_getList(0);
}

class AnalyzeStackRequest extends $pb.GeneratedMessage {
  factory AnalyzeStackRequest({
    $core.Iterable<AnalyzerResource>? resources,
  }) {
    final result = create();
    if (resources != null) result.resources.addAll(resources);
    return result;
  }

  AnalyzeStackRequest._();

  factory AnalyzeStackRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalyzeStackRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzeStackRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<AnalyzerResource>(1, _omitFieldNames ? '' : 'resources',
        subBuilder: AnalyzerResource.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzeStackRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzeStackRequest copyWith(void Function(AnalyzeStackRequest) updates) =>
      super.copyWith((message) => updates(message as AnalyzeStackRequest))
          as AnalyzeStackRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzeStackRequest create() => AnalyzeStackRequest._();
  @$core.override
  AnalyzeStackRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalyzeStackRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzeStackRequest>(create);
  static AnalyzeStackRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AnalyzerResource> get resources => $_getList(0);
}

class AnalyzeResponse extends $pb.GeneratedMessage {
  factory AnalyzeResponse({
    $core.Iterable<AnalyzeDiagnostic>? diagnostics,
    $core.Iterable<PolicyNotApplicable>? notApplicable,
  }) {
    final result = create();
    if (diagnostics != null) result.diagnostics.addAll(diagnostics);
    if (notApplicable != null) result.notApplicable.addAll(notApplicable);
    return result;
  }

  AnalyzeResponse._();

  factory AnalyzeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalyzeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<AnalyzeDiagnostic>(2, _omitFieldNames ? '' : 'diagnostics',
        subBuilder: AnalyzeDiagnostic.create)
    ..pPM<PolicyNotApplicable>(3, _omitFieldNames ? '' : 'notApplicable',
        subBuilder: PolicyNotApplicable.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzeResponse copyWith(void Function(AnalyzeResponse) updates) =>
      super.copyWith((message) => updates(message as AnalyzeResponse))
          as AnalyzeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzeResponse create() => AnalyzeResponse._();
  @$core.override
  AnalyzeResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalyzeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzeResponse>(create);
  static AnalyzeResponse? _defaultInstance;

  @$pb.TagNumber(2)
  $pb.PbList<AnalyzeDiagnostic> get diagnostics => $_getList(0);

  @$pb.TagNumber(3)
  $pb.PbList<PolicyNotApplicable> get notApplicable => $_getList(1);
}

class AnalyzeDiagnostic extends $pb.GeneratedMessage {
  factory AnalyzeDiagnostic({
    $core.String? policyName,
    $core.String? policyPackName,
    $core.String? policyPackVersion,
    $core.String? description,
    $core.String? message,
    EnforcementLevel? enforcementLevel,
    $core.String? urn,
    PolicySeverity? severity,
  }) {
    final result = create();
    if (policyName != null) result.policyName = policyName;
    if (policyPackName != null) result.policyPackName = policyPackName;
    if (policyPackVersion != null) result.policyPackVersion = policyPackVersion;
    if (description != null) result.description = description;
    if (message != null) result.message = message;
    if (enforcementLevel != null) result.enforcementLevel = enforcementLevel;
    if (urn != null) result.urn = urn;
    if (severity != null) result.severity = severity;
    return result;
  }

  AnalyzeDiagnostic._();

  factory AnalyzeDiagnostic.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalyzeDiagnostic.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzeDiagnostic',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'policyName', protoName: 'policyName')
    ..aOS(2, _omitFieldNames ? '' : 'policyPackName',
        protoName: 'policyPackName')
    ..aOS(3, _omitFieldNames ? '' : 'policyPackVersion',
        protoName: 'policyPackVersion')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOS(5, _omitFieldNames ? '' : 'message')
    ..aE<EnforcementLevel>(7, _omitFieldNames ? '' : 'enforcementLevel',
        protoName: 'enforcementLevel', enumValues: EnforcementLevel.values)
    ..aOS(8, _omitFieldNames ? '' : 'urn')
    ..aE<PolicySeverity>(9, _omitFieldNames ? '' : 'severity',
        enumValues: PolicySeverity.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzeDiagnostic clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzeDiagnostic copyWith(void Function(AnalyzeDiagnostic) updates) =>
      super.copyWith((message) => updates(message as AnalyzeDiagnostic))
          as AnalyzeDiagnostic;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzeDiagnostic create() => AnalyzeDiagnostic._();
  @$core.override
  AnalyzeDiagnostic createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalyzeDiagnostic getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzeDiagnostic>(create);
  static AnalyzeDiagnostic? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get policyName => $_getSZ(0);
  @$pb.TagNumber(1)
  set policyName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPolicyName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPolicyName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get policyPackName => $_getSZ(1);
  @$pb.TagNumber(2)
  set policyPackName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPolicyPackName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPolicyPackName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get policyPackVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set policyPackVersion($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPolicyPackVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearPolicyPackVersion() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => $_clearField(5);

  @$pb.TagNumber(7)
  EnforcementLevel get enforcementLevel => $_getN(5);
  @$pb.TagNumber(7)
  set enforcementLevel(EnforcementLevel value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasEnforcementLevel() => $_has(5);
  @$pb.TagNumber(7)
  void clearEnforcementLevel() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get urn => $_getSZ(6);
  @$pb.TagNumber(8)
  set urn($core.String value) => $_setString(6, value);
  @$pb.TagNumber(8)
  $core.bool hasUrn() => $_has(6);
  @$pb.TagNumber(8)
  void clearUrn() => $_clearField(8);

  @$pb.TagNumber(9)
  PolicySeverity get severity => $_getN(7);
  @$pb.TagNumber(9)
  set severity(PolicySeverity value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasSeverity() => $_has(7);
  @$pb.TagNumber(9)
  void clearSeverity() => $_clearField(9);
}

/// Remediation is a single resource remediation result.
class Remediation extends $pb.GeneratedMessage {
  factory Remediation({
    $core.String? policyName,
    $core.String? policyPackName,
    $core.String? policyPackVersion,
    $core.String? description,
    $3.Struct? properties,
    $core.String? diagnostic,
  }) {
    final result = create();
    if (policyName != null) result.policyName = policyName;
    if (policyPackName != null) result.policyPackName = policyPackName;
    if (policyPackVersion != null) result.policyPackVersion = policyPackVersion;
    if (description != null) result.description = description;
    if (properties != null) result.properties = properties;
    if (diagnostic != null) result.diagnostic = diagnostic;
    return result;
  }

  Remediation._();

  factory Remediation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Remediation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Remediation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'policyName', protoName: 'policyName')
    ..aOS(2, _omitFieldNames ? '' : 'policyPackName',
        protoName: 'policyPackName')
    ..aOS(3, _omitFieldNames ? '' : 'policyPackVersion',
        protoName: 'policyPackVersion')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOM<$3.Struct>(5, _omitFieldNames ? '' : 'properties',
        subBuilder: $3.Struct.create)
    ..aOS(6, _omitFieldNames ? '' : 'diagnostic')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Remediation clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Remediation copyWith(void Function(Remediation) updates) =>
      super.copyWith((message) => updates(message as Remediation))
          as Remediation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Remediation create() => Remediation._();
  @$core.override
  Remediation createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Remediation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Remediation>(create);
  static Remediation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get policyName => $_getSZ(0);
  @$pb.TagNumber(1)
  set policyName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPolicyName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPolicyName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get policyPackName => $_getSZ(1);
  @$pb.TagNumber(2)
  set policyPackName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPolicyPackName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPolicyPackName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get policyPackVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set policyPackVersion($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPolicyPackVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearPolicyPackVersion() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => $_clearField(4);

  @$pb.TagNumber(5)
  $3.Struct get properties => $_getN(4);
  @$pb.TagNumber(5)
  set properties($3.Struct value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasProperties() => $_has(4);
  @$pb.TagNumber(5)
  void clearProperties() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.Struct ensureProperties() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get diagnostic => $_getSZ(5);
  @$pb.TagNumber(6)
  set diagnostic($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDiagnostic() => $_has(5);
  @$pb.TagNumber(6)
  void clearDiagnostic() => $_clearField(6);
}

/// RemediateResponse contains a sequence of remediations applied, in order.
class RemediateResponse extends $pb.GeneratedMessage {
  factory RemediateResponse({
    $core.Iterable<Remediation>? remediations,
    $core.Iterable<PolicyNotApplicable>? notApplicable,
  }) {
    final result = create();
    if (remediations != null) result.remediations.addAll(remediations);
    if (notApplicable != null) result.notApplicable.addAll(notApplicable);
    return result;
  }

  RemediateResponse._();

  factory RemediateResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RemediateResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemediateResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<Remediation>(1, _omitFieldNames ? '' : 'remediations',
        subBuilder: Remediation.create)
    ..pPM<PolicyNotApplicable>(2, _omitFieldNames ? '' : 'notApplicable',
        subBuilder: PolicyNotApplicable.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemediateResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemediateResponse copyWith(void Function(RemediateResponse) updates) =>
      super.copyWith((message) => updates(message as RemediateResponse))
          as RemediateResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemediateResponse create() => RemediateResponse._();
  @$core.override
  RemediateResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RemediateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemediateResponse>(create);
  static RemediateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Remediation> get remediations => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<PolicyNotApplicable> get notApplicable => $_getList(1);
}

/// AnalyzerInfo provides metadata about a PolicyPack inside an analyzer.
class AnalyzerInfo extends $pb.GeneratedMessage {
  factory AnalyzerInfo({
    $core.String? name,
    $core.String? displayName,
    $core.Iterable<PolicyInfo>? policies,
    $core.String? version,
    $core.bool? supportsConfig,
    $core.Iterable<$core.MapEntry<$core.String, PolicyConfig>>? initialConfig,
    $core.String? description,
    $core.String? readme,
    $core.String? provider,
    $core.Iterable<$core.String>? tags,
    $core.String? repository,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (displayName != null) result.displayName = displayName;
    if (policies != null) result.policies.addAll(policies);
    if (version != null) result.version = version;
    if (supportsConfig != null) result.supportsConfig = supportsConfig;
    if (initialConfig != null) result.initialConfig.addEntries(initialConfig);
    if (description != null) result.description = description;
    if (readme != null) result.readme = readme;
    if (provider != null) result.provider = provider;
    if (tags != null) result.tags.addAll(tags);
    if (repository != null) result.repository = repository;
    return result;
  }

  AnalyzerInfo._();

  factory AnalyzerInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnalyzerInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'displayName', protoName: 'displayName')
    ..pPM<PolicyInfo>(3, _omitFieldNames ? '' : 'policies',
        subBuilder: PolicyInfo.create)
    ..aOS(4, _omitFieldNames ? '' : 'version')
    ..aOB(5, _omitFieldNames ? '' : 'supportsConfig',
        protoName: 'supportsConfig')
    ..m<$core.String, PolicyConfig>(6, _omitFieldNames ? '' : 'initialConfig',
        protoName: 'initialConfig',
        entryClassName: 'AnalyzerInfo.InitialConfigEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: PolicyConfig.create,
        valueDefaultOrMaker: PolicyConfig.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(7, _omitFieldNames ? '' : 'description')
    ..aOS(8, _omitFieldNames ? '' : 'readme')
    ..aOS(9, _omitFieldNames ? '' : 'provider')
    ..pPS(10, _omitFieldNames ? '' : 'tags')
    ..aOS(11, _omitFieldNames ? '' : 'repository')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnalyzerInfo copyWith(void Function(AnalyzerInfo) updates) =>
      super.copyWith((message) => updates(message as AnalyzerInfo))
          as AnalyzerInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerInfo create() => AnalyzerInfo._();
  @$core.override
  AnalyzerInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnalyzerInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzerInfo>(create);
  static AnalyzerInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<PolicyInfo> get policies => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get supportsConfig => $_getBF(4);
  @$pb.TagNumber(5)
  set supportsConfig($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSupportsConfig() => $_has(4);
  @$pb.TagNumber(5)
  void clearSupportsConfig() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, PolicyConfig> get initialConfig => $_getMap(5);

  @$pb.TagNumber(7)
  $core.String get description => $_getSZ(6);
  @$pb.TagNumber(7)
  set description($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDescription() => $_has(6);
  @$pb.TagNumber(7)
  void clearDescription() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get readme => $_getSZ(7);
  @$pb.TagNumber(8)
  set readme($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasReadme() => $_has(7);
  @$pb.TagNumber(8)
  void clearReadme() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get provider => $_getSZ(8);
  @$pb.TagNumber(9)
  set provider($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasProvider() => $_has(8);
  @$pb.TagNumber(9)
  void clearProvider() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<$core.String> get tags => $_getList(9);

  @$pb.TagNumber(11)
  $core.String get repository => $_getSZ(10);
  @$pb.TagNumber(11)
  set repository($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRepository() => $_has(10);
  @$pb.TagNumber(11)
  void clearRepository() => $_clearField(11);
}

/// PolicyInfo provides metadata about a policy within a Policy Pack.
class PolicyInfo extends $pb.GeneratedMessage {
  factory PolicyInfo({
    $core.String? name,
    $core.String? displayName,
    $core.String? description,
    $core.String? message,
    EnforcementLevel? enforcementLevel,
    PolicyConfigSchema? configSchema,
    PolicyType? policyType,
    PolicySeverity? severity,
    PolicyComplianceFramework? framework,
    $core.Iterable<$core.String>? tags,
    $core.String? remediationSteps,
    $core.String? url,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (displayName != null) result.displayName = displayName;
    if (description != null) result.description = description;
    if (message != null) result.message = message;
    if (enforcementLevel != null) result.enforcementLevel = enforcementLevel;
    if (configSchema != null) result.configSchema = configSchema;
    if (policyType != null) result.policyType = policyType;
    if (severity != null) result.severity = severity;
    if (framework != null) result.framework = framework;
    if (tags != null) result.tags.addAll(tags);
    if (remediationSteps != null) result.remediationSteps = remediationSteps;
    if (url != null) result.url = url;
    return result;
  }

  PolicyInfo._();

  factory PolicyInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PolicyInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PolicyInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'displayName', protoName: 'displayName')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'message')
    ..aE<EnforcementLevel>(5, _omitFieldNames ? '' : 'enforcementLevel',
        protoName: 'enforcementLevel', enumValues: EnforcementLevel.values)
    ..aOM<PolicyConfigSchema>(6, _omitFieldNames ? '' : 'configSchema',
        protoName: 'configSchema', subBuilder: PolicyConfigSchema.create)
    ..aE<PolicyType>(7, _omitFieldNames ? '' : 'policyType',
        enumValues: PolicyType.values)
    ..aE<PolicySeverity>(8, _omitFieldNames ? '' : 'severity',
        enumValues: PolicySeverity.values)
    ..aOM<PolicyComplianceFramework>(9, _omitFieldNames ? '' : 'framework',
        subBuilder: PolicyComplianceFramework.create)
    ..pPS(10, _omitFieldNames ? '' : 'tags')
    ..aOS(11, _omitFieldNames ? '' : 'remediationSteps')
    ..aOS(12, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PolicyInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PolicyInfo copyWith(void Function(PolicyInfo) updates) =>
      super.copyWith((message) => updates(message as PolicyInfo)) as PolicyInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolicyInfo create() => PolicyInfo._();
  @$core.override
  PolicyInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PolicyInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PolicyInfo>(create);
  static PolicyInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => $_clearField(4);

  @$pb.TagNumber(5)
  EnforcementLevel get enforcementLevel => $_getN(4);
  @$pb.TagNumber(5)
  set enforcementLevel(EnforcementLevel value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasEnforcementLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnforcementLevel() => $_clearField(5);

  @$pb.TagNumber(6)
  PolicyConfigSchema get configSchema => $_getN(5);
  @$pb.TagNumber(6)
  set configSchema(PolicyConfigSchema value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasConfigSchema() => $_has(5);
  @$pb.TagNumber(6)
  void clearConfigSchema() => $_clearField(6);
  @$pb.TagNumber(6)
  PolicyConfigSchema ensureConfigSchema() => $_ensure(5);

  @$pb.TagNumber(7)
  PolicyType get policyType => $_getN(6);
  @$pb.TagNumber(7)
  set policyType(PolicyType value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPolicyType() => $_has(6);
  @$pb.TagNumber(7)
  void clearPolicyType() => $_clearField(7);

  @$pb.TagNumber(8)
  PolicySeverity get severity => $_getN(7);
  @$pb.TagNumber(8)
  set severity(PolicySeverity value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasSeverity() => $_has(7);
  @$pb.TagNumber(8)
  void clearSeverity() => $_clearField(8);

  @$pb.TagNumber(9)
  PolicyComplianceFramework get framework => $_getN(8);
  @$pb.TagNumber(9)
  set framework(PolicyComplianceFramework value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasFramework() => $_has(8);
  @$pb.TagNumber(9)
  void clearFramework() => $_clearField(9);
  @$pb.TagNumber(9)
  PolicyComplianceFramework ensureFramework() => $_ensure(8);

  @$pb.TagNumber(10)
  $pb.PbList<$core.String> get tags => $_getList(9);

  @$pb.TagNumber(11)
  $core.String get remediationSteps => $_getSZ(10);
  @$pb.TagNumber(11)
  set remediationSteps($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRemediationSteps() => $_has(10);
  @$pb.TagNumber(11)
  void clearRemediationSteps() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get url => $_getSZ(11);
  @$pb.TagNumber(12)
  set url($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasUrl() => $_has(11);
  @$pb.TagNumber(12)
  void clearUrl() => $_clearField(12);
}

/// PolicyConfigSchema provides the schema for a policy's configuration.
class PolicyConfigSchema extends $pb.GeneratedMessage {
  factory PolicyConfigSchema({
    $3.Struct? properties,
    $core.Iterable<$core.String>? required,
  }) {
    final result = create();
    if (properties != null) result.properties = properties;
    if (required != null) result.required.addAll(required);
    return result;
  }

  PolicyConfigSchema._();

  factory PolicyConfigSchema.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PolicyConfigSchema.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PolicyConfigSchema',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$3.Struct>(1, _omitFieldNames ? '' : 'properties',
        subBuilder: $3.Struct.create)
    ..pPS(2, _omitFieldNames ? '' : 'required')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PolicyConfigSchema clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PolicyConfigSchema copyWith(void Function(PolicyConfigSchema) updates) =>
      super.copyWith((message) => updates(message as PolicyConfigSchema))
          as PolicyConfigSchema;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolicyConfigSchema create() => PolicyConfigSchema._();
  @$core.override
  PolicyConfigSchema createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PolicyConfigSchema getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PolicyConfigSchema>(create);
  static PolicyConfigSchema? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Struct get properties => $_getN(0);
  @$pb.TagNumber(1)
  set properties($3.Struct value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProperties() => $_has(0);
  @$pb.TagNumber(1)
  void clearProperties() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Struct ensureProperties() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get required => $_getList(1);
}

/// PolicyConfig provides configuration for a policy.
class PolicyConfig extends $pb.GeneratedMessage {
  factory PolicyConfig({
    EnforcementLevel? enforcementLevel,
    $3.Struct? properties,
  }) {
    final result = create();
    if (enforcementLevel != null) result.enforcementLevel = enforcementLevel;
    if (properties != null) result.properties = properties;
    return result;
  }

  PolicyConfig._();

  factory PolicyConfig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PolicyConfig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PolicyConfig',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aE<EnforcementLevel>(1, _omitFieldNames ? '' : 'enforcementLevel',
        protoName: 'enforcementLevel', enumValues: EnforcementLevel.values)
    ..aOM<$3.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $3.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PolicyConfig clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PolicyConfig copyWith(void Function(PolicyConfig) updates) =>
      super.copyWith((message) => updates(message as PolicyConfig))
          as PolicyConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolicyConfig create() => PolicyConfig._();
  @$core.override
  PolicyConfig createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PolicyConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PolicyConfig>(create);
  static PolicyConfig? _defaultInstance;

  @$pb.TagNumber(1)
  EnforcementLevel get enforcementLevel => $_getN(0);
  @$pb.TagNumber(1)
  set enforcementLevel(EnforcementLevel value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasEnforcementLevel() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnforcementLevel() => $_clearField(1);

  @$pb.TagNumber(2)
  $3.Struct get properties => $_getN(1);
  @$pb.TagNumber(2)
  set properties($3.Struct value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasProperties() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperties() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Struct ensureProperties() => $_ensure(1);
}

/// ConfigureAnalyzerRequest provides configuration information to the analyzer.
class ConfigureAnalyzerRequest extends $pb.GeneratedMessage {
  factory ConfigureAnalyzerRequest({
    $core.Iterable<$core.MapEntry<$core.String, PolicyConfig>>? policyConfig,
  }) {
    final result = create();
    if (policyConfig != null) result.policyConfig.addEntries(policyConfig);
    return result;
  }

  ConfigureAnalyzerRequest._();

  factory ConfigureAnalyzerRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConfigureAnalyzerRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfigureAnalyzerRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..m<$core.String, PolicyConfig>(1, _omitFieldNames ? '' : 'policyConfig',
        protoName: 'policyConfig',
        entryClassName: 'ConfigureAnalyzerRequest.PolicyConfigEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: PolicyConfig.create,
        valueDefaultOrMaker: PolicyConfig.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigureAnalyzerRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigureAnalyzerRequest copyWith(
          void Function(ConfigureAnalyzerRequest) updates) =>
      super.copyWith((message) => updates(message as ConfigureAnalyzerRequest))
          as ConfigureAnalyzerRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigureAnalyzerRequest create() => ConfigureAnalyzerRequest._();
  @$core.override
  ConfigureAnalyzerRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConfigureAnalyzerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfigureAnalyzerRequest>(create);
  static ConfigureAnalyzerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, PolicyConfig> get policyConfig => $_getMap(0);
}

/// PolicyComplianceFramework provides information about the compliance framework that a policy belongs to.
class PolicyComplianceFramework extends $pb.GeneratedMessage {
  factory PolicyComplianceFramework({
    $core.String? name,
    $core.String? version,
    $core.String? reference,
    $core.String? specification,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (version != null) result.version = version;
    if (reference != null) result.reference = reference;
    if (specification != null) result.specification = specification;
    return result;
  }

  PolicyComplianceFramework._();

  factory PolicyComplianceFramework.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PolicyComplianceFramework.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PolicyComplianceFramework',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..aOS(3, _omitFieldNames ? '' : 'reference')
    ..aOS(4, _omitFieldNames ? '' : 'specification')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PolicyComplianceFramework clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PolicyComplianceFramework copyWith(
          void Function(PolicyComplianceFramework) updates) =>
      super.copyWith((message) => updates(message as PolicyComplianceFramework))
          as PolicyComplianceFramework;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolicyComplianceFramework create() => PolicyComplianceFramework._();
  @$core.override
  PolicyComplianceFramework createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PolicyComplianceFramework getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PolicyComplianceFramework>(create);
  static PolicyComplianceFramework? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get reference => $_getSZ(2);
  @$pb.TagNumber(3)
  set reference($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasReference() => $_has(2);
  @$pb.TagNumber(3)
  void clearReference() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get specification => $_getSZ(3);
  @$pb.TagNumber(4)
  set specification($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSpecification() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpecification() => $_clearField(4);
}

/// PolicyNotApplicable describes a policy that was not applicable, including an optional reason why.
class PolicyNotApplicable extends $pb.GeneratedMessage {
  factory PolicyNotApplicable({
    $core.String? policyName,
    $core.String? reason,
  }) {
    final result = create();
    if (policyName != null) result.policyName = policyName;
    if (reason != null) result.reason = reason;
    return result;
  }

  PolicyNotApplicable._();

  factory PolicyNotApplicable.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PolicyNotApplicable.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PolicyNotApplicable',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'policyName')
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PolicyNotApplicable clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PolicyNotApplicable copyWith(void Function(PolicyNotApplicable) updates) =>
      super.copyWith((message) => updates(message as PolicyNotApplicable))
          as PolicyNotApplicable;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolicyNotApplicable create() => PolicyNotApplicable._();
  @$core.override
  PolicyNotApplicable createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PolicyNotApplicable getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PolicyNotApplicable>(create);
  static PolicyNotApplicable? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get policyName => $_getSZ(0);
  @$pb.TagNumber(1)
  set policyName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPolicyName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPolicyName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
