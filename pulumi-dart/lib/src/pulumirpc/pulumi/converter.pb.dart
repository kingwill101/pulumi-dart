//
//  Generated code. Do not modify.
//  source: pulumi/converter.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'codegen/hcl.pb.dart' as $13;

class ConvertStateRequest extends $pb.GeneratedMessage {
  factory ConvertStateRequest({
    $core.String? mapperTarget,
    $core.Iterable<$core.String>? args,
  }) {
    final $result = create();
    if (mapperTarget != null) {
      $result.mapperTarget = mapperTarget;
    }
    if (args != null) {
      $result.args.addAll(args);
    }
    return $result;
  }
  ConvertStateRequest._() : super();
  factory ConvertStateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConvertStateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertStateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mapperTarget')
    ..pPS(2, _omitFieldNames ? '' : 'args')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConvertStateRequest clone() => ConvertStateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConvertStateRequest copyWith(void Function(ConvertStateRequest) updates) =>
      super.copyWith((message) => updates(message as ConvertStateRequest))
          as ConvertStateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertStateRequest create() => ConvertStateRequest._();
  ConvertStateRequest createEmptyInstance() => create();
  static $pb.PbList<ConvertStateRequest> createRepeated() =>
      $pb.PbList<ConvertStateRequest>();
  @$core.pragma('dart2js:noInline')
  static ConvertStateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertStateRequest>(create);
  static ConvertStateRequest? _defaultInstance;

  /// the gRPC target of the mapper service.
  @$pb.TagNumber(1)
  $core.String get mapperTarget => $_getSZ(0);
  @$pb.TagNumber(1)
  set mapperTarget($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMapperTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearMapperTarget() => clearField(1);

  /// the args passed to `pulumi import` for this conversion. Normally used to specifiy a state file to
  /// import from.
  @$pb.TagNumber(2)
  $core.List<$core.String> get args => $_getList(1);
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
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (name != null) {
      $result.name = name;
    }
    if (id != null) {
      $result.id = id;
    }
    if (version != null) {
      $result.version = version;
    }
    if (pluginDownloadURL != null) {
      $result.pluginDownloadURL = pluginDownloadURL;
    }
    if (logicalName != null) {
      $result.logicalName = logicalName;
    }
    if (isComponent != null) {
      $result.isComponent = isComponent;
    }
    if (isRemote != null) {
      $result.isRemote = isRemote;
    }
    return $result;
  }
  ResourceImport._() : super();
  factory ResourceImport.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResourceImport.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

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

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResourceImport clone() => ResourceImport()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResourceImport copyWith(void Function(ResourceImport) updates) =>
      super.copyWith((message) => updates(message as ResourceImport))
          as ResourceImport;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceImport create() => ResourceImport._();
  ResourceImport createEmptyInstance() => create();
  static $pb.PbList<ResourceImport> createRepeated() =>
      $pb.PbList<ResourceImport>();
  @$core.pragma('dart2js:noInline')
  static ResourceImport getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceImport>(create);
  static ResourceImport? _defaultInstance;

  /// the type token for the resource.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// the name of the resource.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// the ID of the resource.
  @$pb.TagNumber(3)
  $core.String get id => $_getSZ(2);
  @$pb.TagNumber(3)
  set id($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => clearField(3);

  /// the provider version to use for the resource, if any.
  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  /// the provider PluginDownloadURL to use for the resource, if any.
  @$pb.TagNumber(5)
  $core.String get pluginDownloadURL => $_getSZ(4);
  @$pb.TagNumber(5)
  set pluginDownloadURL($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPluginDownloadURL() => $_has(4);
  @$pb.TagNumber(5)
  void clearPluginDownloadURL() => clearField(5);

  /// the logical name of the resource.
  @$pb.TagNumber(6)
  $core.String get logicalName => $_getSZ(5);
  @$pb.TagNumber(6)
  set logicalName($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasLogicalName() => $_has(5);
  @$pb.TagNumber(6)
  void clearLogicalName() => clearField(6);

  /// true if this is a component resource.
  @$pb.TagNumber(7)
  $core.bool get isComponent => $_getBF(6);
  @$pb.TagNumber(7)
  set isComponent($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasIsComponent() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsComponent() => clearField(7);

  /// true if this is a remote resource. Ignored if is_component is false.
  @$pb.TagNumber(8)
  $core.bool get isRemote => $_getBF(7);
  @$pb.TagNumber(8)
  set isRemote($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasIsRemote() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsRemote() => clearField(8);
}

class ConvertStateResponse extends $pb.GeneratedMessage {
  factory ConvertStateResponse({
    $core.Iterable<ResourceImport>? resources,
    $core.Iterable<$13.Diagnostic>? diagnostics,
  }) {
    final $result = create();
    if (resources != null) {
      $result.resources.addAll(resources);
    }
    if (diagnostics != null) {
      $result.diagnostics.addAll(diagnostics);
    }
    return $result;
  }
  ConvertStateResponse._() : super();
  factory ConvertStateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConvertStateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertStateResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pc<ResourceImport>(
        1, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM,
        subBuilder: ResourceImport.create)
    ..pc<$13.Diagnostic>(
        2, _omitFieldNames ? '' : 'diagnostics', $pb.PbFieldType.PM,
        subBuilder: $13.Diagnostic.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConvertStateResponse clone() =>
      ConvertStateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConvertStateResponse copyWith(void Function(ConvertStateResponse) updates) =>
      super.copyWith((message) => updates(message as ConvertStateResponse))
          as ConvertStateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertStateResponse create() => ConvertStateResponse._();
  ConvertStateResponse createEmptyInstance() => create();
  static $pb.PbList<ConvertStateResponse> createRepeated() =>
      $pb.PbList<ConvertStateResponse>();
  @$core.pragma('dart2js:noInline')
  static ConvertStateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertStateResponse>(create);
  static ConvertStateResponse? _defaultInstance;

  /// a list of resources to import.
  @$pb.TagNumber(1)
  $core.List<ResourceImport> get resources => $_getList(0);

  /// any diagnostics from state conversion.
  @$pb.TagNumber(2)
  $core.List<$13.Diagnostic> get diagnostics => $_getList(1);
}

class ConvertProgramRequest extends $pb.GeneratedMessage {
  factory ConvertProgramRequest({
    $core.String? sourceDirectory,
    $core.String? targetDirectory,
    $core.String? mapperTarget,
    $core.String? loaderTarget,
    $core.Iterable<$core.String>? args,
  }) {
    final $result = create();
    if (sourceDirectory != null) {
      $result.sourceDirectory = sourceDirectory;
    }
    if (targetDirectory != null) {
      $result.targetDirectory = targetDirectory;
    }
    if (mapperTarget != null) {
      $result.mapperTarget = mapperTarget;
    }
    if (loaderTarget != null) {
      $result.loaderTarget = loaderTarget;
    }
    if (args != null) {
      $result.args.addAll(args);
    }
    return $result;
  }
  ConvertProgramRequest._() : super();
  factory ConvertProgramRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConvertProgramRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertProgramRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sourceDirectory')
    ..aOS(2, _omitFieldNames ? '' : 'targetDirectory')
    ..aOS(3, _omitFieldNames ? '' : 'mapperTarget')
    ..aOS(4, _omitFieldNames ? '' : 'loaderTarget')
    ..pPS(5, _omitFieldNames ? '' : 'args')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConvertProgramRequest clone() =>
      ConvertProgramRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConvertProgramRequest copyWith(
          void Function(ConvertProgramRequest) updates) =>
      super.copyWith((message) => updates(message as ConvertProgramRequest))
          as ConvertProgramRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertProgramRequest create() => ConvertProgramRequest._();
  ConvertProgramRequest createEmptyInstance() => create();
  static $pb.PbList<ConvertProgramRequest> createRepeated() =>
      $pb.PbList<ConvertProgramRequest>();
  @$core.pragma('dart2js:noInline')
  static ConvertProgramRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertProgramRequest>(create);
  static ConvertProgramRequest? _defaultInstance;

  /// the source directory containing the program to convert from.
  @$pb.TagNumber(1)
  $core.String get sourceDirectory => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourceDirectory($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSourceDirectory() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceDirectory() => clearField(1);

  /// a target directory to write the resulting PCL code and project file to.
  @$pb.TagNumber(2)
  $core.String get targetDirectory => $_getSZ(1);
  @$pb.TagNumber(2)
  set targetDirectory($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTargetDirectory() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetDirectory() => clearField(2);

  /// the gRPC target of the mapper service.
  @$pb.TagNumber(3)
  $core.String get mapperTarget => $_getSZ(2);
  @$pb.TagNumber(3)
  set mapperTarget($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMapperTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearMapperTarget() => clearField(3);

  /// The target of a codegen.LoaderServer to use for loading schemas.
  @$pb.TagNumber(4)
  $core.String get loaderTarget => $_getSZ(3);
  @$pb.TagNumber(4)
  set loaderTarget($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLoaderTarget() => $_has(3);
  @$pb.TagNumber(4)
  void clearLoaderTarget() => clearField(4);

  /// the args passed to `pulumi convert` for this conversion. Normally used to specifiy a root file, or conversion options.
  @$pb.TagNumber(5)
  $core.List<$core.String> get args => $_getList(4);
}

class ConvertProgramResponse extends $pb.GeneratedMessage {
  factory ConvertProgramResponse({
    $core.Iterable<$13.Diagnostic>? diagnostics,
  }) {
    final $result = create();
    if (diagnostics != null) {
      $result.diagnostics.addAll(diagnostics);
    }
    return $result;
  }
  ConvertProgramResponse._() : super();
  factory ConvertProgramResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConvertProgramResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConvertProgramResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pc<$13.Diagnostic>(
        1, _omitFieldNames ? '' : 'diagnostics', $pb.PbFieldType.PM,
        subBuilder: $13.Diagnostic.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConvertProgramResponse clone() =>
      ConvertProgramResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConvertProgramResponse copyWith(
          void Function(ConvertProgramResponse) updates) =>
      super.copyWith((message) => updates(message as ConvertProgramResponse))
          as ConvertProgramResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertProgramResponse create() => ConvertProgramResponse._();
  ConvertProgramResponse createEmptyInstance() => create();
  static $pb.PbList<ConvertProgramResponse> createRepeated() =>
      $pb.PbList<ConvertProgramResponse>();
  @$core.pragma('dart2js:noInline')
  static ConvertProgramResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvertProgramResponse>(create);
  static ConvertProgramResponse? _defaultInstance;

  /// any diagnostics from code generation.
  @$pb.TagNumber(1)
  $core.List<$13.Diagnostic> get diagnostics => $_getList(0);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
