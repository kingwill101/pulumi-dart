// This is a generated file - do not edit.
//
// Generated from pulumi/converter.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'codegen/hcl.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ConvertStateRequest extends $pb.GeneratedMessage {
  factory ConvertStateRequest({
    $core.String? mapperTarget,
    $core.Iterable<$core.String>? args,
  }) {
    final result = create();
    if (mapperTarget != null) result.mapperTarget = mapperTarget;
    if (args != null) result.args.addAll(args);
    return result;
  }

  ConvertStateRequest._();

  factory ConvertStateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConvertStateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertStateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mapperTarget')
    ..pPS(2, _omitFieldNames ? '' : 'args')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertStateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertStateRequest copyWith(void Function(ConvertStateRequest) updates) =>
      super.copyWith((message) => updates(message as ConvertStateRequest))
          as ConvertStateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertStateRequest create() => ConvertStateRequest._();
  @$core.override
  ConvertStateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConvertStateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertStateRequest>(create);
  static ConvertStateRequest? _defaultInstance;

  /// the gRPC target of the mapper service.
  @$pb.TagNumber(1)
  $core.String get mapperTarget => $_getSZ(0);
  @$pb.TagNumber(1)
  set mapperTarget($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMapperTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearMapperTarget() => $_clearField(1);

  /// the args passed to `pulumi import` for this conversion. Normally used to specifiy a state file to
  /// import from.
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get args => $_getList(1);
}

/// A ResourceImport specifies a resource to import.
class ResourceImport extends $pb.GeneratedMessage {
  factory ResourceImport({
    $core.String? type,
    $core.String? name,
    $core.String? id,
    $core.String? version,
    $core.String? pluginDownloadURL,
    $core.String? logicalName,
    $core.bool? isComponent,
    $core.bool? isRemote,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (name != null) result.name = name;
    if (id != null) result.id = id;
    if (version != null) result.version = version;
    if (pluginDownloadURL != null) result.pluginDownloadURL = pluginDownloadURL;
    if (logicalName != null) result.logicalName = logicalName;
    if (isComponent != null) result.isComponent = isComponent;
    if (isRemote != null) result.isRemote = isRemote;
    return result;
  }

  ResourceImport._();

  factory ResourceImport.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResourceImport.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceImport',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'id')
    ..aOS(4, _omitFieldNames ? '' : 'version')
    ..aOS(5, _omitFieldNames ? '' : 'pluginDownloadURL',
        protoName: 'pluginDownloadURL')
    ..aOS(6, _omitFieldNames ? '' : 'logicalName')
    ..aOB(7, _omitFieldNames ? '' : 'isComponent')
    ..aOB(8, _omitFieldNames ? '' : 'isRemote')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceImport clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResourceImport copyWith(void Function(ResourceImport) updates) =>
      super.copyWith((message) => updates(message as ResourceImport))
          as ResourceImport;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceImport create() => ResourceImport._();
  @$core.override
  ResourceImport createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResourceImport getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceImport>(create);
  static ResourceImport? _defaultInstance;

  /// the type token for the resource.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// the name of the resource.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// the ID of the resource.
  @$pb.TagNumber(3)
  $core.String get id => $_getSZ(2);
  @$pb.TagNumber(3)
  set id($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => $_clearField(3);

  /// the provider version to use for the resource, if any.
  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => $_clearField(4);

  /// the provider PluginDownloadURL to use for the resource, if any.
  @$pb.TagNumber(5)
  $core.String get pluginDownloadURL => $_getSZ(4);
  @$pb.TagNumber(5)
  set pluginDownloadURL($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPluginDownloadURL() => $_has(4);
  @$pb.TagNumber(5)
  void clearPluginDownloadURL() => $_clearField(5);

  /// the logical name of the resource.
  @$pb.TagNumber(6)
  $core.String get logicalName => $_getSZ(5);
  @$pb.TagNumber(6)
  set logicalName($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLogicalName() => $_has(5);
  @$pb.TagNumber(6)
  void clearLogicalName() => $_clearField(6);

  /// true if this is a component resource.
  @$pb.TagNumber(7)
  $core.bool get isComponent => $_getBF(6);
  @$pb.TagNumber(7)
  set isComponent($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsComponent() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsComponent() => $_clearField(7);

  /// true if this is a remote resource. Ignored if is_component is false.
  @$pb.TagNumber(8)
  $core.bool get isRemote => $_getBF(7);
  @$pb.TagNumber(8)
  set isRemote($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIsRemote() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsRemote() => $_clearField(8);
}

class ConvertStateResponse extends $pb.GeneratedMessage {
  factory ConvertStateResponse({
    $core.Iterable<ResourceImport>? resources,
    $core.Iterable<$1.Diagnostic>? diagnostics,
  }) {
    final result = create();
    if (resources != null) result.resources.addAll(resources);
    if (diagnostics != null) result.diagnostics.addAll(diagnostics);
    return result;
  }

  ConvertStateResponse._();

  factory ConvertStateResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConvertStateResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertStateResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<ResourceImport>(1, _omitFieldNames ? '' : 'resources',
        subBuilder: ResourceImport.create)
    ..pPM<$1.Diagnostic>(2, _omitFieldNames ? '' : 'diagnostics',
        subBuilder: $1.Diagnostic.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertStateResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertStateResponse copyWith(void Function(ConvertStateResponse) updates) =>
      super.copyWith((message) => updates(message as ConvertStateResponse))
          as ConvertStateResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertStateResponse create() => ConvertStateResponse._();
  @$core.override
  ConvertStateResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConvertStateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertStateResponse>(create);
  static ConvertStateResponse? _defaultInstance;

  /// a list of resources to import.
  @$pb.TagNumber(1)
  $pb.PbList<ResourceImport> get resources => $_getList(0);

  /// any diagnostics from state conversion.
  @$pb.TagNumber(2)
  $pb.PbList<$1.Diagnostic> get diagnostics => $_getList(1);
}

class ConvertProgramRequest extends $pb.GeneratedMessage {
  factory ConvertProgramRequest({
    $core.String? sourceDirectory,
    $core.String? targetDirectory,
    $core.String? mapperTarget,
    $core.String? loaderTarget,
    $core.Iterable<$core.String>? args,
    $core.String? generatedProjectDirectory,
  }) {
    final result = create();
    if (sourceDirectory != null) result.sourceDirectory = sourceDirectory;
    if (targetDirectory != null) result.targetDirectory = targetDirectory;
    if (mapperTarget != null) result.mapperTarget = mapperTarget;
    if (loaderTarget != null) result.loaderTarget = loaderTarget;
    if (args != null) result.args.addAll(args);
    if (generatedProjectDirectory != null)
      result.generatedProjectDirectory = generatedProjectDirectory;
    return result;
  }

  ConvertProgramRequest._();

  factory ConvertProgramRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConvertProgramRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertProgramRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sourceDirectory')
    ..aOS(2, _omitFieldNames ? '' : 'targetDirectory')
    ..aOS(3, _omitFieldNames ? '' : 'mapperTarget')
    ..aOS(4, _omitFieldNames ? '' : 'loaderTarget')
    ..pPS(5, _omitFieldNames ? '' : 'args')
    ..aOS(6, _omitFieldNames ? '' : 'generatedProjectDirectory')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertProgramRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertProgramRequest copyWith(
          void Function(ConvertProgramRequest) updates) =>
      super.copyWith((message) => updates(message as ConvertProgramRequest))
          as ConvertProgramRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertProgramRequest create() => ConvertProgramRequest._();
  @$core.override
  ConvertProgramRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConvertProgramRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertProgramRequest>(create);
  static ConvertProgramRequest? _defaultInstance;

  /// the source directory containing the program to convert from.
  @$pb.TagNumber(1)
  $core.String get sourceDirectory => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourceDirectory($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourceDirectory() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceDirectory() => $_clearField(1);

  /// a target directory to write the resulting PCL code and project file to.
  @$pb.TagNumber(2)
  $core.String get targetDirectory => $_getSZ(1);
  @$pb.TagNumber(2)
  set targetDirectory($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTargetDirectory() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetDirectory() => $_clearField(2);

  /// the gRPC target of the mapper service.
  @$pb.TagNumber(3)
  $core.String get mapperTarget => $_getSZ(2);
  @$pb.TagNumber(3)
  set mapperTarget($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMapperTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearMapperTarget() => $_clearField(3);

  /// The target of a codegen.LoaderServer to use for loading schemas.
  @$pb.TagNumber(4)
  $core.String get loaderTarget => $_getSZ(3);
  @$pb.TagNumber(4)
  set loaderTarget($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLoaderTarget() => $_has(3);
  @$pb.TagNumber(4)
  void clearLoaderTarget() => $_clearField(4);

  /// the args passed to `pulumi convert` for this conversion. Normally used to specifiy a root file, or conversion options.
  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get args => $_getList(4);

  /// the directory where the final generated project for the eventual destination language will be written.
  /// use to determine relative paths of any asset that will be copied over.
  /// Do not write files to this directory as these files might be overwritten in
  /// the project generation process.
  @$pb.TagNumber(6)
  $core.String get generatedProjectDirectory => $_getSZ(5);
  @$pb.TagNumber(6)
  set generatedProjectDirectory($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasGeneratedProjectDirectory() => $_has(5);
  @$pb.TagNumber(6)
  void clearGeneratedProjectDirectory() => $_clearField(6);
}

class ConvertProgramResponse extends $pb.GeneratedMessage {
  factory ConvertProgramResponse({
    $core.Iterable<$1.Diagnostic>? diagnostics,
  }) {
    final result = create();
    if (diagnostics != null) result.diagnostics.addAll(diagnostics);
    return result;
  }

  ConvertProgramResponse._();

  factory ConvertProgramResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConvertProgramResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertProgramResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<$1.Diagnostic>(1, _omitFieldNames ? '' : 'diagnostics',
        subBuilder: $1.Diagnostic.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertProgramResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConvertProgramResponse copyWith(
          void Function(ConvertProgramResponse) updates) =>
      super.copyWith((message) => updates(message as ConvertProgramResponse))
          as ConvertProgramResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertProgramResponse create() => ConvertProgramResponse._();
  @$core.override
  ConvertProgramResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConvertProgramResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertProgramResponse>(create);
  static ConvertProgramResponse? _defaultInstance;

  /// any diagnostics from code generation.
  @$pb.TagNumber(1)
  $pb.PbList<$1.Diagnostic> get diagnostics => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
