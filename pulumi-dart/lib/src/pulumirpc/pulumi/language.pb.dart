//
//  Generated code. Do not modify.
//  source: pulumi/language.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/struct.pb.dart' as $12;
import 'codegen/hcl.pb.dart' as $13;
import 'language.pbenum.dart';
import 'plugin.pb.dart' as $2;

export 'language.pbenum.dart';

/// ProgramInfo are the common set of options that a language runtime needs to execute or query a program. This
/// is filled in by the engine based on where the `Pulumi.yaml` file was, the `runtime.options` property, and
/// the `main` property.
class ProgramInfo extends $pb.GeneratedMessage {
  factory ProgramInfo({
    $core.String? rootDirectory,
    $core.String? programDirectory,
    $core.String? entryPoint,
    $12.Struct? options,
  }) {
    final $result = create();
    if (rootDirectory != null) {
      $result.rootDirectory = rootDirectory;
    }
    if (programDirectory != null) {
      $result.programDirectory = programDirectory;
    }
    if (entryPoint != null) {
      $result.entryPoint = entryPoint;
    }
    if (options != null) {
      $result.options = options;
    }
    return $result;
  }
  ProgramInfo._() : super();
  factory ProgramInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ProgramInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProgramInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rootDirectory')
    ..aOS(2, _omitFieldNames ? '' : 'programDirectory')
    ..aOS(3, _omitFieldNames ? '' : 'entryPoint')
    ..aOM<$12.Struct>(4, _omitFieldNames ? '' : 'options',
        subBuilder: $12.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ProgramInfo clone() => ProgramInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ProgramInfo copyWith(void Function(ProgramInfo) updates) =>
      super.copyWith((message) => updates(message as ProgramInfo))
          as ProgramInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProgramInfo create() => ProgramInfo._();
  ProgramInfo createEmptyInstance() => create();
  static $pb.PbList<ProgramInfo> createRepeated() => $pb.PbList<ProgramInfo>();
  @$core.pragma('dart2js:noInline')
  static ProgramInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProgramInfo>(create);
  static ProgramInfo? _defaultInstance;

  /// the root of the project, where the `Pulumi.yaml` file is located.
  @$pb.TagNumber(1)
  $core.String get rootDirectory => $_getSZ(0);
  @$pb.TagNumber(1)
  set rootDirectory($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRootDirectory() => $_has(0);
  @$pb.TagNumber(1)
  void clearRootDirectory() => clearField(1);

  /// the absolute path to the directory of the program to execute. Generally, but not required to be,
  /// underneath the root directory.
  @$pb.TagNumber(2)
  $core.String get programDirectory => $_getSZ(1);
  @$pb.TagNumber(2)
  set programDirectory($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProgramDirectory() => $_has(1);
  @$pb.TagNumber(2)
  void clearProgramDirectory() => clearField(2);

  /// the entry point of the program, normally '.' meaning to just use the program directory, but can also be
  /// a filename inside the program directory. How that filename is interpreted, if at all, is language
  /// specific.
  @$pb.TagNumber(3)
  $core.String get entryPoint => $_getSZ(2);
  @$pb.TagNumber(3)
  set entryPoint($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEntryPoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearEntryPoint() => clearField(3);

  /// JSON style options from the `Pulumi.yaml` runtime options section.
  @$pb.TagNumber(4)
  $12.Struct get options => $_getN(3);
  @$pb.TagNumber(4)
  set options($12.Struct v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOptions() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptions() => clearField(4);
  @$pb.TagNumber(4)
  $12.Struct ensureOptions() => $_ensure(3);
}

class AboutRequest extends $pb.GeneratedMessage {
  factory AboutRequest({
    ProgramInfo? info,
  }) {
    final $result = create();
    if (info != null) {
      $result.info = info;
    }
    return $result;
  }
  AboutRequest._() : super();
  factory AboutRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AboutRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AboutRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<ProgramInfo>(1, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AboutRequest clone() => AboutRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AboutRequest copyWith(void Function(AboutRequest) updates) =>
      super.copyWith((message) => updates(message as AboutRequest))
          as AboutRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AboutRequest create() => AboutRequest._();
  AboutRequest createEmptyInstance() => create();
  static $pb.PbList<AboutRequest> createRepeated() =>
      $pb.PbList<AboutRequest>();
  @$core.pragma('dart2js:noInline')
  static AboutRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AboutRequest>(create);
  static AboutRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ProgramInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(ProgramInfo v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  ProgramInfo ensureInfo() => $_ensure(0);
}

/// AboutResponse returns runtime information about the language.
class AboutResponse extends $pb.GeneratedMessage {
  factory AboutResponse({
    $core.String? executable,
    $core.String? version,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final $result = create();
    if (executable != null) {
      $result.executable = executable;
    }
    if (version != null) {
      $result.version = version;
    }
    if (metadata != null) {
      $result.metadata.addAll(metadata);
    }
    return $result;
  }
  AboutResponse._() : super();
  factory AboutResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AboutResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AboutResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'executable')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'metadata',
        entryClassName: 'AboutResponse.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AboutResponse clone() => AboutResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AboutResponse copyWith(void Function(AboutResponse) updates) =>
      super.copyWith((message) => updates(message as AboutResponse))
          as AboutResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AboutResponse create() => AboutResponse._();
  AboutResponse createEmptyInstance() => create();
  static $pb.PbList<AboutResponse> createRepeated() =>
      $pb.PbList<AboutResponse>();
  @$core.pragma('dart2js:noInline')
  static AboutResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AboutResponse>(create);
  static AboutResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get executable => $_getSZ(0);
  @$pb.TagNumber(1)
  set executable($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasExecutable() => $_has(0);
  @$pb.TagNumber(1)
  void clearExecutable() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(2);
}

class GetProgramDependenciesRequest extends $pb.GeneratedMessage {
  factory GetProgramDependenciesRequest({
    @$core.Deprecated('This field is deprecated.') $core.String? project,
    @$core.Deprecated('This field is deprecated.') $core.String? pwd,
    @$core.Deprecated('This field is deprecated.') $core.String? program,
    $core.bool? transitiveDependencies,
    ProgramInfo? info,
  }) {
    final $result = create();
    if (project != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.project = project;
    }
    if (pwd != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.pwd = pwd;
    }
    if (program != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.program = program;
    }
    if (transitiveDependencies != null) {
      $result.transitiveDependencies = transitiveDependencies;
    }
    if (info != null) {
      $result.info = info;
    }
    return $result;
  }
  GetProgramDependenciesRequest._() : super();
  factory GetProgramDependenciesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetProgramDependenciesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetProgramDependenciesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'project')
    ..aOS(2, _omitFieldNames ? '' : 'pwd')
    ..aOS(3, _omitFieldNames ? '' : 'program')
    ..aOB(4, _omitFieldNames ? '' : 'transitiveDependencies',
        protoName: 'transitiveDependencies')
    ..aOM<ProgramInfo>(5, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetProgramDependenciesRequest clone() =>
      GetProgramDependenciesRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetProgramDependenciesRequest copyWith(
          void Function(GetProgramDependenciesRequest) updates) =>
      super.copyWith(
              (message) => updates(message as GetProgramDependenciesRequest))
          as GetProgramDependenciesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetProgramDependenciesRequest create() =>
      GetProgramDependenciesRequest._();
  GetProgramDependenciesRequest createEmptyInstance() => create();
  static $pb.PbList<GetProgramDependenciesRequest> createRepeated() =>
      $pb.PbList<GetProgramDependenciesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetProgramDependenciesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetProgramDependenciesRequest>(create);
  static GetProgramDependenciesRequest? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.String get project => $_getSZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set project($core.String v) {
    $_setString(0, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasProject() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearProject() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.String get pwd => $_getSZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set pwd($core.String v) {
    $_setString(1, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasPwd() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearPwd() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.String get program => $_getSZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set program($core.String v) {
    $_setString(2, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasProgram() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearProgram() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get transitiveDependencies => $_getBF(3);
  @$pb.TagNumber(4)
  set transitiveDependencies($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTransitiveDependencies() => $_has(3);
  @$pb.TagNumber(4)
  void clearTransitiveDependencies() => clearField(4);

  @$pb.TagNumber(5)
  ProgramInfo get info => $_getN(4);
  @$pb.TagNumber(5)
  set info(ProgramInfo v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearInfo() => clearField(5);
  @$pb.TagNumber(5)
  ProgramInfo ensureInfo() => $_ensure(4);
}

class DependencyInfo extends $pb.GeneratedMessage {
  factory DependencyInfo({
    $core.String? name,
    $core.String? version,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  DependencyInfo._() : super();
  factory DependencyInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DependencyInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DependencyInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DependencyInfo clone() => DependencyInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DependencyInfo copyWith(void Function(DependencyInfo) updates) =>
      super.copyWith((message) => updates(message as DependencyInfo))
          as DependencyInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DependencyInfo create() => DependencyInfo._();
  DependencyInfo createEmptyInstance() => create();
  static $pb.PbList<DependencyInfo> createRepeated() =>
      $pb.PbList<DependencyInfo>();
  @$core.pragma('dart2js:noInline')
  static DependencyInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DependencyInfo>(create);
  static DependencyInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
}

class GetProgramDependenciesResponse extends $pb.GeneratedMessage {
  factory GetProgramDependenciesResponse({
    $core.Iterable<DependencyInfo>? dependencies,
  }) {
    final $result = create();
    if (dependencies != null) {
      $result.dependencies.addAll(dependencies);
    }
    return $result;
  }
  GetProgramDependenciesResponse._() : super();
  factory GetProgramDependenciesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetProgramDependenciesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetProgramDependenciesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pc<DependencyInfo>(
        1, _omitFieldNames ? '' : 'dependencies', $pb.PbFieldType.PM,
        subBuilder: DependencyInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetProgramDependenciesResponse clone() =>
      GetProgramDependenciesResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetProgramDependenciesResponse copyWith(
          void Function(GetProgramDependenciesResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetProgramDependenciesResponse))
          as GetProgramDependenciesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetProgramDependenciesResponse create() =>
      GetProgramDependenciesResponse._();
  GetProgramDependenciesResponse createEmptyInstance() => create();
  static $pb.PbList<GetProgramDependenciesResponse> createRepeated() =>
      $pb.PbList<GetProgramDependenciesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetProgramDependenciesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetProgramDependenciesResponse>(create);
  static GetProgramDependenciesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DependencyInfo> get dependencies => $_getList(0);
}

class GetRequiredPluginsRequest extends $pb.GeneratedMessage {
  factory GetRequiredPluginsRequest({
    @$core.Deprecated('This field is deprecated.') $core.String? project,
    @$core.Deprecated('This field is deprecated.') $core.String? pwd,
    @$core.Deprecated('This field is deprecated.') $core.String? program,
    ProgramInfo? info,
  }) {
    final $result = create();
    if (project != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.project = project;
    }
    if (pwd != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.pwd = pwd;
    }
    if (program != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.program = program;
    }
    if (info != null) {
      $result.info = info;
    }
    return $result;
  }
  GetRequiredPluginsRequest._() : super();
  factory GetRequiredPluginsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetRequiredPluginsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetRequiredPluginsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'project')
    ..aOS(2, _omitFieldNames ? '' : 'pwd')
    ..aOS(3, _omitFieldNames ? '' : 'program')
    ..aOM<ProgramInfo>(4, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetRequiredPluginsRequest clone() =>
      GetRequiredPluginsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetRequiredPluginsRequest copyWith(
          void Function(GetRequiredPluginsRequest) updates) =>
      super.copyWith((message) => updates(message as GetRequiredPluginsRequest))
          as GetRequiredPluginsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRequiredPluginsRequest create() => GetRequiredPluginsRequest._();
  GetRequiredPluginsRequest createEmptyInstance() => create();
  static $pb.PbList<GetRequiredPluginsRequest> createRepeated() =>
      $pb.PbList<GetRequiredPluginsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRequiredPluginsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRequiredPluginsRequest>(create);
  static GetRequiredPluginsRequest? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.String get project => $_getSZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set project($core.String v) {
    $_setString(0, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasProject() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearProject() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.String get pwd => $_getSZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set pwd($core.String v) {
    $_setString(1, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasPwd() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearPwd() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.String get program => $_getSZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set program($core.String v) {
    $_setString(2, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasProgram() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearProgram() => clearField(3);

  @$pb.TagNumber(4)
  ProgramInfo get info => $_getN(3);
  @$pb.TagNumber(4)
  set info(ProgramInfo v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearInfo() => clearField(4);
  @$pb.TagNumber(4)
  ProgramInfo ensureInfo() => $_ensure(3);
}

class GetRequiredPluginsResponse extends $pb.GeneratedMessage {
  factory GetRequiredPluginsResponse({
    $core.Iterable<$2.PluginDependency>? plugins,
  }) {
    final $result = create();
    if (plugins != null) {
      $result.plugins.addAll(plugins);
    }
    return $result;
  }
  GetRequiredPluginsResponse._() : super();
  factory GetRequiredPluginsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetRequiredPluginsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetRequiredPluginsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pc<$2.PluginDependency>(
        1, _omitFieldNames ? '' : 'plugins', $pb.PbFieldType.PM,
        subBuilder: $2.PluginDependency.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetRequiredPluginsResponse clone() =>
      GetRequiredPluginsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetRequiredPluginsResponse copyWith(
          void Function(GetRequiredPluginsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetRequiredPluginsResponse))
          as GetRequiredPluginsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRequiredPluginsResponse create() => GetRequiredPluginsResponse._();
  GetRequiredPluginsResponse createEmptyInstance() => create();
  static $pb.PbList<GetRequiredPluginsResponse> createRepeated() =>
      $pb.PbList<GetRequiredPluginsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRequiredPluginsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRequiredPluginsResponse>(create);
  static GetRequiredPluginsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.PluginDependency> get plugins => $_getList(0);
}

/// RunRequest asks the interpreter to execute a program.
class RunRequest extends $pb.GeneratedMessage {
  factory RunRequest({
    $core.String? project,
    $core.String? stack,
    $core.String? pwd,
    @$core.Deprecated('This field is deprecated.') $core.String? program,
    $core.Iterable<$core.String>? args,
    $core.Map<$core.String, $core.String>? config,
    $core.bool? dryRun,
    $core.int? parallel,
    $core.String? monitorAddress,
    $core.bool? queryMode,
    $core.Iterable<$core.String>? configSecretKeys,
    $core.String? organization,
    $12.Struct? configPropertyMap,
    ProgramInfo? info,
  }) {
    final $result = create();
    if (project != null) {
      $result.project = project;
    }
    if (stack != null) {
      $result.stack = stack;
    }
    if (pwd != null) {
      $result.pwd = pwd;
    }
    if (program != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.program = program;
    }
    if (args != null) {
      $result.args.addAll(args);
    }
    if (config != null) {
      $result.config.addAll(config);
    }
    if (dryRun != null) {
      $result.dryRun = dryRun;
    }
    if (parallel != null) {
      $result.parallel = parallel;
    }
    if (monitorAddress != null) {
      $result.monitorAddress = monitorAddress;
    }
    if (queryMode != null) {
      $result.queryMode = queryMode;
    }
    if (configSecretKeys != null) {
      $result.configSecretKeys.addAll(configSecretKeys);
    }
    if (organization != null) {
      $result.organization = organization;
    }
    if (configPropertyMap != null) {
      $result.configPropertyMap = configPropertyMap;
    }
    if (info != null) {
      $result.info = info;
    }
    return $result;
  }
  RunRequest._() : super();
  factory RunRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RunRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'project')
    ..aOS(2, _omitFieldNames ? '' : 'stack')
    ..aOS(3, _omitFieldNames ? '' : 'pwd')
    ..aOS(4, _omitFieldNames ? '' : 'program')
    ..pPS(5, _omitFieldNames ? '' : 'args')
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'config',
        entryClassName: 'RunRequest.ConfigEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOB(7, _omitFieldNames ? '' : 'dryRun', protoName: 'dryRun')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'parallel', $pb.PbFieldType.O3)
    ..aOS(9, _omitFieldNames ? '' : 'monitorAddress')
    ..aOB(10, _omitFieldNames ? '' : 'queryMode', protoName: 'queryMode')
    ..pPS(11, _omitFieldNames ? '' : 'configSecretKeys',
        protoName: 'configSecretKeys')
    ..aOS(12, _omitFieldNames ? '' : 'organization')
    ..aOM<$12.Struct>(13, _omitFieldNames ? '' : 'configPropertyMap',
        protoName: 'configPropertyMap', subBuilder: $12.Struct.create)
    ..aOM<ProgramInfo>(14, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RunRequest clone() => RunRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RunRequest copyWith(void Function(RunRequest) updates) =>
      super.copyWith((message) => updates(message as RunRequest)) as RunRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunRequest create() => RunRequest._();
  RunRequest createEmptyInstance() => create();
  static $pb.PbList<RunRequest> createRepeated() => $pb.PbList<RunRequest>();
  @$core.pragma('dart2js:noInline')
  static RunRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunRequest>(create);
  static RunRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get project => $_getSZ(0);
  @$pb.TagNumber(1)
  set project($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProject() => $_has(0);
  @$pb.TagNumber(1)
  void clearProject() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get stack => $_getSZ(1);
  @$pb.TagNumber(2)
  set stack($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStack() => $_has(1);
  @$pb.TagNumber(2)
  void clearStack() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pwd => $_getSZ(2);
  @$pb.TagNumber(3)
  set pwd($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPwd() => $_has(2);
  @$pb.TagNumber(3)
  void clearPwd() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.String get program => $_getSZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set program($core.String v) {
    $_setString(3, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasProgram() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearProgram() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get args => $_getList(4);

  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get config => $_getMap(5);

  @$pb.TagNumber(7)
  $core.bool get dryRun => $_getBF(6);
  @$pb.TagNumber(7)
  set dryRun($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasDryRun() => $_has(6);
  @$pb.TagNumber(7)
  void clearDryRun() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get parallel => $_getIZ(7);
  @$pb.TagNumber(8)
  set parallel($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasParallel() => $_has(7);
  @$pb.TagNumber(8)
  void clearParallel() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get monitorAddress => $_getSZ(8);
  @$pb.TagNumber(9)
  set monitorAddress($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasMonitorAddress() => $_has(8);
  @$pb.TagNumber(9)
  void clearMonitorAddress() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get queryMode => $_getBF(9);
  @$pb.TagNumber(10)
  set queryMode($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasQueryMode() => $_has(9);
  @$pb.TagNumber(10)
  void clearQueryMode() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.String> get configSecretKeys => $_getList(10);

  @$pb.TagNumber(12)
  $core.String get organization => $_getSZ(11);
  @$pb.TagNumber(12)
  set organization($core.String v) {
    $_setString(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasOrganization() => $_has(11);
  @$pb.TagNumber(12)
  void clearOrganization() => clearField(12);

  @$pb.TagNumber(13)
  $12.Struct get configPropertyMap => $_getN(12);
  @$pb.TagNumber(13)
  set configPropertyMap($12.Struct v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasConfigPropertyMap() => $_has(12);
  @$pb.TagNumber(13)
  void clearConfigPropertyMap() => clearField(13);
  @$pb.TagNumber(13)
  $12.Struct ensureConfigPropertyMap() => $_ensure(12);

  @$pb.TagNumber(14)
  ProgramInfo get info => $_getN(13);
  @$pb.TagNumber(14)
  set info(ProgramInfo v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasInfo() => $_has(13);
  @$pb.TagNumber(14)
  void clearInfo() => clearField(14);
  @$pb.TagNumber(14)
  ProgramInfo ensureInfo() => $_ensure(13);
}

/// RunResponse is the response back from the interpreter/source back to the monitor.
class RunResponse extends $pb.GeneratedMessage {
  factory RunResponse({
    $core.String? error,
    $core.bool? bail,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    if (bail != null) {
      $result.bail = bail;
    }
    return $result;
  }
  RunResponse._() : super();
  factory RunResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RunResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'error')
    ..aOB(2, _omitFieldNames ? '' : 'bail')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RunResponse clone() => RunResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RunResponse copyWith(void Function(RunResponse) updates) =>
      super.copyWith((message) => updates(message as RunResponse))
          as RunResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunResponse create() => RunResponse._();
  RunResponse createEmptyInstance() => create();
  static $pb.PbList<RunResponse> createRepeated() => $pb.PbList<RunResponse>();
  @$core.pragma('dart2js:noInline')
  static RunResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunResponse>(create);
  static RunResponse? _defaultInstance;

  /// An unhandled error if any occurred.
  @$pb.TagNumber(1)
  $core.String get error => $_getSZ(0);
  @$pb.TagNumber(1)
  set error($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);

  /// An error happened.  And it was reported to the user.  Work should stop immediately
  /// with nothing further to print to the user.  This corresponds to a "result.Bail()"
  /// value in the 'go' layer.
  @$pb.TagNumber(2)
  $core.bool get bail => $_getBF(1);
  @$pb.TagNumber(2)
  set bail($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBail() => $_has(1);
  @$pb.TagNumber(2)
  void clearBail() => clearField(2);
}

class InstallDependenciesRequest extends $pb.GeneratedMessage {
  factory InstallDependenciesRequest({
    @$core.Deprecated('This field is deprecated.') $core.String? directory,
    $core.bool? isTerminal,
    ProgramInfo? info,
  }) {
    final $result = create();
    if (directory != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.directory = directory;
    }
    if (isTerminal != null) {
      $result.isTerminal = isTerminal;
    }
    if (info != null) {
      $result.info = info;
    }
    return $result;
  }
  InstallDependenciesRequest._() : super();
  factory InstallDependenciesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InstallDependenciesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InstallDependenciesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'directory')
    ..aOB(2, _omitFieldNames ? '' : 'isTerminal')
    ..aOM<ProgramInfo>(3, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InstallDependenciesRequest clone() =>
      InstallDependenciesRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InstallDependenciesRequest copyWith(
          void Function(InstallDependenciesRequest) updates) =>
      super.copyWith(
              (message) => updates(message as InstallDependenciesRequest))
          as InstallDependenciesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InstallDependenciesRequest create() => InstallDependenciesRequest._();
  InstallDependenciesRequest createEmptyInstance() => create();
  static $pb.PbList<InstallDependenciesRequest> createRepeated() =>
      $pb.PbList<InstallDependenciesRequest>();
  @$core.pragma('dart2js:noInline')
  static InstallDependenciesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InstallDependenciesRequest>(create);
  static InstallDependenciesRequest? _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.String get directory => $_getSZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set directory($core.String v) {
    $_setString(0, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasDirectory() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearDirectory() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isTerminal => $_getBF(1);
  @$pb.TagNumber(2)
  set isTerminal($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIsTerminal() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsTerminal() => clearField(2);

  @$pb.TagNumber(3)
  ProgramInfo get info => $_getN(2);
  @$pb.TagNumber(3)
  set info(ProgramInfo v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearInfo() => clearField(3);
  @$pb.TagNumber(3)
  ProgramInfo ensureInfo() => $_ensure(2);
}

class InstallDependenciesResponse extends $pb.GeneratedMessage {
  factory InstallDependenciesResponse({
    $core.List<$core.int>? stdout,
    $core.List<$core.int>? stderr,
  }) {
    final $result = create();
    if (stdout != null) {
      $result.stdout = stdout;
    }
    if (stderr != null) {
      $result.stderr = stderr;
    }
    return $result;
  }
  InstallDependenciesResponse._() : super();
  factory InstallDependenciesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InstallDependenciesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InstallDependenciesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'stdout', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'stderr', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InstallDependenciesResponse clone() =>
      InstallDependenciesResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InstallDependenciesResponse copyWith(
          void Function(InstallDependenciesResponse) updates) =>
      super.copyWith(
              (message) => updates(message as InstallDependenciesResponse))
          as InstallDependenciesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InstallDependenciesResponse create() =>
      InstallDependenciesResponse._();
  InstallDependenciesResponse createEmptyInstance() => create();
  static $pb.PbList<InstallDependenciesResponse> createRepeated() =>
      $pb.PbList<InstallDependenciesResponse>();
  @$core.pragma('dart2js:noInline')
  static InstallDependenciesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InstallDependenciesResponse>(create);
  static InstallDependenciesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get stdout => $_getN(0);
  @$pb.TagNumber(1)
  set stdout($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStdout() => $_has(0);
  @$pb.TagNumber(1)
  void clearStdout() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get stderr => $_getN(1);
  @$pb.TagNumber(2)
  set stderr($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStderr() => $_has(1);
  @$pb.TagNumber(2)
  void clearStderr() => clearField(2);
}

class RuntimeOptionsRequest extends $pb.GeneratedMessage {
  factory RuntimeOptionsRequest({
    ProgramInfo? info,
  }) {
    final $result = create();
    if (info != null) {
      $result.info = info;
    }
    return $result;
  }
  RuntimeOptionsRequest._() : super();
  factory RuntimeOptionsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RuntimeOptionsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RuntimeOptionsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<ProgramInfo>(1, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RuntimeOptionsRequest clone() =>
      RuntimeOptionsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RuntimeOptionsRequest copyWith(
          void Function(RuntimeOptionsRequest) updates) =>
      super.copyWith((message) => updates(message as RuntimeOptionsRequest))
          as RuntimeOptionsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RuntimeOptionsRequest create() => RuntimeOptionsRequest._();
  RuntimeOptionsRequest createEmptyInstance() => create();
  static $pb.PbList<RuntimeOptionsRequest> createRepeated() =>
      $pb.PbList<RuntimeOptionsRequest>();
  @$core.pragma('dart2js:noInline')
  static RuntimeOptionsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RuntimeOptionsRequest>(create);
  static RuntimeOptionsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ProgramInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(ProgramInfo v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  ProgramInfo ensureInfo() => $_ensure(0);
}

class RuntimeOptionPrompt_RuntimeOptionValue extends $pb.GeneratedMessage {
  factory RuntimeOptionPrompt_RuntimeOptionValue({
    RuntimeOptionPrompt_RuntimeOptionType? promptType,
    $core.String? stringValue,
    $core.int? int32Value,
    $core.String? displayName,
  }) {
    final $result = create();
    if (promptType != null) {
      $result.promptType = promptType;
    }
    if (stringValue != null) {
      $result.stringValue = stringValue;
    }
    if (int32Value != null) {
      $result.int32Value = int32Value;
    }
    if (displayName != null) {
      $result.displayName = displayName;
    }
    return $result;
  }
  RuntimeOptionPrompt_RuntimeOptionValue._() : super();
  factory RuntimeOptionPrompt_RuntimeOptionValue.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RuntimeOptionPrompt_RuntimeOptionValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RuntimeOptionPrompt.RuntimeOptionValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..e<RuntimeOptionPrompt_RuntimeOptionType>(
        1, _omitFieldNames ? '' : 'promptType', $pb.PbFieldType.OE,
        protoName: 'promptType',
        defaultOrMaker: RuntimeOptionPrompt_RuntimeOptionType.STRING,
        valueOf: RuntimeOptionPrompt_RuntimeOptionType.valueOf,
        enumValues: RuntimeOptionPrompt_RuntimeOptionType.values)
    ..aOS(2, _omitFieldNames ? '' : 'stringValue', protoName: 'stringValue')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'int32Value', $pb.PbFieldType.O3,
        protoName: 'int32Value')
    ..aOS(4, _omitFieldNames ? '' : 'displayName', protoName: 'displayName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RuntimeOptionPrompt_RuntimeOptionValue clone() =>
      RuntimeOptionPrompt_RuntimeOptionValue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RuntimeOptionPrompt_RuntimeOptionValue copyWith(
          void Function(RuntimeOptionPrompt_RuntimeOptionValue) updates) =>
      super.copyWith((message) =>
              updates(message as RuntimeOptionPrompt_RuntimeOptionValue))
          as RuntimeOptionPrompt_RuntimeOptionValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RuntimeOptionPrompt_RuntimeOptionValue create() =>
      RuntimeOptionPrompt_RuntimeOptionValue._();
  RuntimeOptionPrompt_RuntimeOptionValue createEmptyInstance() => create();
  static $pb.PbList<RuntimeOptionPrompt_RuntimeOptionValue> createRepeated() =>
      $pb.PbList<RuntimeOptionPrompt_RuntimeOptionValue>();
  @$core.pragma('dart2js:noInline')
  static RuntimeOptionPrompt_RuntimeOptionValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RuntimeOptionPrompt_RuntimeOptionValue>(create);
  static RuntimeOptionPrompt_RuntimeOptionValue? _defaultInstance;

  @$pb.TagNumber(1)
  RuntimeOptionPrompt_RuntimeOptionType get promptType => $_getN(0);
  @$pb.TagNumber(1)
  set promptType(RuntimeOptionPrompt_RuntimeOptionType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPromptType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPromptType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get stringValue => $_getSZ(1);
  @$pb.TagNumber(2)
  set stringValue($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStringValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearStringValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get int32Value => $_getIZ(2);
  @$pb.TagNumber(3)
  set int32Value($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasInt32Value() => $_has(2);
  @$pb.TagNumber(3)
  void clearInt32Value() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get displayName => $_getSZ(3);
  @$pb.TagNumber(4)
  set displayName($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDisplayName() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisplayName() => clearField(4);
}

class RuntimeOptionPrompt extends $pb.GeneratedMessage {
  factory RuntimeOptionPrompt({
    $core.String? key,
    $core.String? description,
    RuntimeOptionPrompt_RuntimeOptionType? promptType,
    $core.Iterable<RuntimeOptionPrompt_RuntimeOptionValue>? choices,
    RuntimeOptionPrompt_RuntimeOptionValue? default_5,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (description != null) {
      $result.description = description;
    }
    if (promptType != null) {
      $result.promptType = promptType;
    }
    if (choices != null) {
      $result.choices.addAll(choices);
    }
    if (default_5 != null) {
      $result.default_5 = default_5;
    }
    return $result;
  }
  RuntimeOptionPrompt._() : super();
  factory RuntimeOptionPrompt.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RuntimeOptionPrompt.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RuntimeOptionPrompt',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..e<RuntimeOptionPrompt_RuntimeOptionType>(
        3, _omitFieldNames ? '' : 'promptType', $pb.PbFieldType.OE,
        protoName: 'promptType',
        defaultOrMaker: RuntimeOptionPrompt_RuntimeOptionType.STRING,
        valueOf: RuntimeOptionPrompt_RuntimeOptionType.valueOf,
        enumValues: RuntimeOptionPrompt_RuntimeOptionType.values)
    ..pc<RuntimeOptionPrompt_RuntimeOptionValue>(
        4, _omitFieldNames ? '' : 'choices', $pb.PbFieldType.PM,
        subBuilder: RuntimeOptionPrompt_RuntimeOptionValue.create)
    ..aOM<RuntimeOptionPrompt_RuntimeOptionValue>(
        5, _omitFieldNames ? '' : 'default',
        subBuilder: RuntimeOptionPrompt_RuntimeOptionValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RuntimeOptionPrompt clone() => RuntimeOptionPrompt()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RuntimeOptionPrompt copyWith(void Function(RuntimeOptionPrompt) updates) =>
      super.copyWith((message) => updates(message as RuntimeOptionPrompt))
          as RuntimeOptionPrompt;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RuntimeOptionPrompt create() => RuntimeOptionPrompt._();
  RuntimeOptionPrompt createEmptyInstance() => create();
  static $pb.PbList<RuntimeOptionPrompt> createRepeated() =>
      $pb.PbList<RuntimeOptionPrompt>();
  @$core.pragma('dart2js:noInline')
  static RuntimeOptionPrompt getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RuntimeOptionPrompt>(create);
  static RuntimeOptionPrompt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  RuntimeOptionPrompt_RuntimeOptionType get promptType => $_getN(2);
  @$pb.TagNumber(3)
  set promptType(RuntimeOptionPrompt_RuntimeOptionType v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPromptType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPromptType() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<RuntimeOptionPrompt_RuntimeOptionValue> get choices =>
      $_getList(3);

  @$pb.TagNumber(5)
  RuntimeOptionPrompt_RuntimeOptionValue get default_5 => $_getN(4);
  @$pb.TagNumber(5)
  set default_5(RuntimeOptionPrompt_RuntimeOptionValue v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDefault_5() => $_has(4);
  @$pb.TagNumber(5)
  void clearDefault_5() => clearField(5);
  @$pb.TagNumber(5)
  RuntimeOptionPrompt_RuntimeOptionValue ensureDefault_5() => $_ensure(4);
}

class RuntimeOptionsResponse extends $pb.GeneratedMessage {
  factory RuntimeOptionsResponse({
    $core.Iterable<RuntimeOptionPrompt>? prompts,
  }) {
    final $result = create();
    if (prompts != null) {
      $result.prompts.addAll(prompts);
    }
    return $result;
  }
  RuntimeOptionsResponse._() : super();
  factory RuntimeOptionsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RuntimeOptionsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RuntimeOptionsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pc<RuntimeOptionPrompt>(
        1, _omitFieldNames ? '' : 'prompts', $pb.PbFieldType.PM,
        subBuilder: RuntimeOptionPrompt.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RuntimeOptionsResponse clone() =>
      RuntimeOptionsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RuntimeOptionsResponse copyWith(
          void Function(RuntimeOptionsResponse) updates) =>
      super.copyWith((message) => updates(message as RuntimeOptionsResponse))
          as RuntimeOptionsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RuntimeOptionsResponse create() => RuntimeOptionsResponse._();
  RuntimeOptionsResponse createEmptyInstance() => create();
  static $pb.PbList<RuntimeOptionsResponse> createRepeated() =>
      $pb.PbList<RuntimeOptionsResponse>();
  @$core.pragma('dart2js:noInline')
  static RuntimeOptionsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RuntimeOptionsResponse>(create);
  static RuntimeOptionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RuntimeOptionPrompt> get prompts => $_getList(0);
}

class RunPluginRequest extends $pb.GeneratedMessage {
  factory RunPluginRequest({
    $core.String? pwd,
    @$core.Deprecated('This field is deprecated.') $core.String? program,
    $core.Iterable<$core.String>? args,
    $core.Iterable<$core.String>? env,
    ProgramInfo? info,
  }) {
    final $result = create();
    if (pwd != null) {
      $result.pwd = pwd;
    }
    if (program != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.program = program;
    }
    if (args != null) {
      $result.args.addAll(args);
    }
    if (env != null) {
      $result.env.addAll(env);
    }
    if (info != null) {
      $result.info = info;
    }
    return $result;
  }
  RunPluginRequest._() : super();
  factory RunPluginRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RunPluginRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunPluginRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pwd')
    ..aOS(2, _omitFieldNames ? '' : 'program')
    ..pPS(3, _omitFieldNames ? '' : 'args')
    ..pPS(4, _omitFieldNames ? '' : 'env')
    ..aOM<ProgramInfo>(5, _omitFieldNames ? '' : 'info',
        subBuilder: ProgramInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RunPluginRequest clone() => RunPluginRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RunPluginRequest copyWith(void Function(RunPluginRequest) updates) =>
      super.copyWith((message) => updates(message as RunPluginRequest))
          as RunPluginRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunPluginRequest create() => RunPluginRequest._();
  RunPluginRequest createEmptyInstance() => create();
  static $pb.PbList<RunPluginRequest> createRepeated() =>
      $pb.PbList<RunPluginRequest>();
  @$core.pragma('dart2js:noInline')
  static RunPluginRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunPluginRequest>(create);
  static RunPluginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pwd => $_getSZ(0);
  @$pb.TagNumber(1)
  set pwd($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPwd() => $_has(0);
  @$pb.TagNumber(1)
  void clearPwd() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.String get program => $_getSZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set program($core.String v) {
    $_setString(1, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasProgram() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearProgram() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get args => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get env => $_getList(3);

  @$pb.TagNumber(5)
  ProgramInfo get info => $_getN(4);
  @$pb.TagNumber(5)
  set info(ProgramInfo v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearInfo() => clearField(5);
  @$pb.TagNumber(5)
  ProgramInfo ensureInfo() => $_ensure(4);
}

enum RunPluginResponse_Output { stdout, stderr, exitcode, notSet }

class RunPluginResponse extends $pb.GeneratedMessage {
  factory RunPluginResponse({
    $core.List<$core.int>? stdout,
    $core.List<$core.int>? stderr,
    $core.int? exitcode,
  }) {
    final $result = create();
    if (stdout != null) {
      $result.stdout = stdout;
    }
    if (stderr != null) {
      $result.stderr = stderr;
    }
    if (exitcode != null) {
      $result.exitcode = exitcode;
    }
    return $result;
  }
  RunPluginResponse._() : super();
  factory RunPluginResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RunPluginResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RunPluginResponse_Output>
      _RunPluginResponse_OutputByTag = {
    1: RunPluginResponse_Output.stdout,
    2: RunPluginResponse_Output.stderr,
    3: RunPluginResponse_Output.exitcode,
    0: RunPluginResponse_Output.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunPluginResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'stdout', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'stderr', $pb.PbFieldType.OY)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'exitcode', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RunPluginResponse clone() => RunPluginResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RunPluginResponse copyWith(void Function(RunPluginResponse) updates) =>
      super.copyWith((message) => updates(message as RunPluginResponse))
          as RunPluginResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunPluginResponse create() => RunPluginResponse._();
  RunPluginResponse createEmptyInstance() => create();
  static $pb.PbList<RunPluginResponse> createRepeated() =>
      $pb.PbList<RunPluginResponse>();
  @$core.pragma('dart2js:noInline')
  static RunPluginResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunPluginResponse>(create);
  static RunPluginResponse? _defaultInstance;

  RunPluginResponse_Output whichOutput() =>
      _RunPluginResponse_OutputByTag[$_whichOneof(0)]!;
  void clearOutput() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get stdout => $_getN(0);
  @$pb.TagNumber(1)
  set stdout($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStdout() => $_has(0);
  @$pb.TagNumber(1)
  void clearStdout() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get stderr => $_getN(1);
  @$pb.TagNumber(2)
  set stderr($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStderr() => $_has(1);
  @$pb.TagNumber(2)
  void clearStderr() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get exitcode => $_getIZ(2);
  @$pb.TagNumber(3)
  set exitcode($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasExitcode() => $_has(2);
  @$pb.TagNumber(3)
  void clearExitcode() => clearField(3);
}

class GenerateProgramRequest extends $pb.GeneratedMessage {
  factory GenerateProgramRequest({
    $core.Map<$core.String, $core.String>? source,
    $core.String? loaderTarget,
    $core.bool? strict,
  }) {
    final $result = create();
    if (source != null) {
      $result.source.addAll(source);
    }
    if (loaderTarget != null) {
      $result.loaderTarget = loaderTarget;
    }
    if (strict != null) {
      $result.strict = strict;
    }
    return $result;
  }
  GenerateProgramRequest._() : super();
  factory GenerateProgramRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GenerateProgramRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GenerateProgramRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'source',
        entryClassName: 'GenerateProgramRequest.SourceEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(2, _omitFieldNames ? '' : 'loaderTarget')
    ..aOB(3, _omitFieldNames ? '' : 'strict')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GenerateProgramRequest clone() =>
      GenerateProgramRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GenerateProgramRequest copyWith(
          void Function(GenerateProgramRequest) updates) =>
      super.copyWith((message) => updates(message as GenerateProgramRequest))
          as GenerateProgramRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateProgramRequest create() => GenerateProgramRequest._();
  GenerateProgramRequest createEmptyInstance() => create();
  static $pb.PbList<GenerateProgramRequest> createRepeated() =>
      $pb.PbList<GenerateProgramRequest>();
  @$core.pragma('dart2js:noInline')
  static GenerateProgramRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenerateProgramRequest>(create);
  static GenerateProgramRequest? _defaultInstance;

  /// the PCL source of the project.
  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get source => $_getMap(0);

  /// The target of a codegen.LoaderServer to use for loading schemas.
  @$pb.TagNumber(2)
  $core.String get loaderTarget => $_getSZ(1);
  @$pb.TagNumber(2)
  set loaderTarget($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLoaderTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoaderTarget() => clearField(2);

  /// if PCL binding should be strict or not.
  @$pb.TagNumber(3)
  $core.bool get strict => $_getBF(2);
  @$pb.TagNumber(3)
  set strict($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStrict() => $_has(2);
  @$pb.TagNumber(3)
  void clearStrict() => clearField(3);
}

class GenerateProgramResponse extends $pb.GeneratedMessage {
  factory GenerateProgramResponse({
    $core.Iterable<$13.Diagnostic>? diagnostics,
    $core.Map<$core.String, $core.List<$core.int>>? source,
  }) {
    final $result = create();
    if (diagnostics != null) {
      $result.diagnostics.addAll(diagnostics);
    }
    if (source != null) {
      $result.source.addAll(source);
    }
    return $result;
  }
  GenerateProgramResponse._() : super();
  factory GenerateProgramResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GenerateProgramResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GenerateProgramResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pc<$13.Diagnostic>(
        1, _omitFieldNames ? '' : 'diagnostics', $pb.PbFieldType.PM,
        subBuilder: $13.Diagnostic.create)
    ..m<$core.String, $core.List<$core.int>>(2, _omitFieldNames ? '' : 'source',
        entryClassName: 'GenerateProgramResponse.SourceEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GenerateProgramResponse clone() =>
      GenerateProgramResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GenerateProgramResponse copyWith(
          void Function(GenerateProgramResponse) updates) =>
      super.copyWith((message) => updates(message as GenerateProgramResponse))
          as GenerateProgramResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateProgramResponse create() => GenerateProgramResponse._();
  GenerateProgramResponse createEmptyInstance() => create();
  static $pb.PbList<GenerateProgramResponse> createRepeated() =>
      $pb.PbList<GenerateProgramResponse>();
  @$core.pragma('dart2js:noInline')
  static GenerateProgramResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenerateProgramResponse>(create);
  static GenerateProgramResponse? _defaultInstance;

  /// any diagnostics from code generation.
  @$pb.TagNumber(1)
  $core.List<$13.Diagnostic> get diagnostics => $_getList(0);

  /// the generated program source code.
  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.List<$core.int>> get source => $_getMap(1);
}

class GenerateProjectRequest extends $pb.GeneratedMessage {
  factory GenerateProjectRequest({
    $core.String? sourceDirectory,
    $core.String? targetDirectory,
    $core.String? project,
    $core.bool? strict,
    $core.String? loaderTarget,
    $core.Map<$core.String, $core.String>? localDependencies,
  }) {
    final $result = create();
    if (sourceDirectory != null) {
      $result.sourceDirectory = sourceDirectory;
    }
    if (targetDirectory != null) {
      $result.targetDirectory = targetDirectory;
    }
    if (project != null) {
      $result.project = project;
    }
    if (strict != null) {
      $result.strict = strict;
    }
    if (loaderTarget != null) {
      $result.loaderTarget = loaderTarget;
    }
    if (localDependencies != null) {
      $result.localDependencies.addAll(localDependencies);
    }
    return $result;
  }
  GenerateProjectRequest._() : super();
  factory GenerateProjectRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GenerateProjectRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GenerateProjectRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sourceDirectory')
    ..aOS(2, _omitFieldNames ? '' : 'targetDirectory')
    ..aOS(3, _omitFieldNames ? '' : 'project')
    ..aOB(4, _omitFieldNames ? '' : 'strict')
    ..aOS(5, _omitFieldNames ? '' : 'loaderTarget')
    ..m<$core.String, $core.String>(
        6, _omitFieldNames ? '' : 'localDependencies',
        entryClassName: 'GenerateProjectRequest.LocalDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GenerateProjectRequest clone() =>
      GenerateProjectRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GenerateProjectRequest copyWith(
          void Function(GenerateProjectRequest) updates) =>
      super.copyWith((message) => updates(message as GenerateProjectRequest))
          as GenerateProjectRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateProjectRequest create() => GenerateProjectRequest._();
  GenerateProjectRequest createEmptyInstance() => create();
  static $pb.PbList<GenerateProjectRequest> createRepeated() =>
      $pb.PbList<GenerateProjectRequest>();
  @$core.pragma('dart2js:noInline')
  static GenerateProjectRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenerateProjectRequest>(create);
  static GenerateProjectRequest? _defaultInstance;

  /// the directory to generate the project from.
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

  /// the directory to generate the project in.
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

  /// the JSON-encoded pulumi project file.
  @$pb.TagNumber(3)
  $core.String get project => $_getSZ(2);
  @$pb.TagNumber(3)
  set project($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasProject() => $_has(2);
  @$pb.TagNumber(3)
  void clearProject() => clearField(3);

  /// if PCL binding should be strict or not.
  @$pb.TagNumber(4)
  $core.bool get strict => $_getBF(3);
  @$pb.TagNumber(4)
  set strict($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasStrict() => $_has(3);
  @$pb.TagNumber(4)
  void clearStrict() => clearField(4);

  /// The target of a codegen.LoaderServer to use for loading schemas.
  @$pb.TagNumber(5)
  $core.String get loaderTarget => $_getSZ(4);
  @$pb.TagNumber(5)
  set loaderTarget($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLoaderTarget() => $_has(4);
  @$pb.TagNumber(5)
  void clearLoaderTarget() => clearField(5);

  /// local dependencies to use instead of using the package system. This is a map of package name to a local
  /// path of a language specific artifact to use for the SDK for that package.
  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get localDependencies => $_getMap(5);
}

class GenerateProjectResponse extends $pb.GeneratedMessage {
  factory GenerateProjectResponse({
    $core.Iterable<$13.Diagnostic>? diagnostics,
  }) {
    final $result = create();
    if (diagnostics != null) {
      $result.diagnostics.addAll(diagnostics);
    }
    return $result;
  }
  GenerateProjectResponse._() : super();
  factory GenerateProjectResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GenerateProjectResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GenerateProjectResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pc<$13.Diagnostic>(
        1, _omitFieldNames ? '' : 'diagnostics', $pb.PbFieldType.PM,
        subBuilder: $13.Diagnostic.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GenerateProjectResponse clone() =>
      GenerateProjectResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GenerateProjectResponse copyWith(
          void Function(GenerateProjectResponse) updates) =>
      super.copyWith((message) => updates(message as GenerateProjectResponse))
          as GenerateProjectResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GenerateProjectResponse create() => GenerateProjectResponse._();
  GenerateProjectResponse createEmptyInstance() => create();
  static $pb.PbList<GenerateProjectResponse> createRepeated() =>
      $pb.PbList<GenerateProjectResponse>();
  @$core.pragma('dart2js:noInline')
  static GenerateProjectResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenerateProjectResponse>(create);
  static GenerateProjectResponse? _defaultInstance;

  /// any diagnostics from code generation.
  @$pb.TagNumber(1)
  $core.List<$13.Diagnostic> get diagnostics => $_getList(0);
}

class GeneratePackageRequest extends $pb.GeneratedMessage {
  factory GeneratePackageRequest({
    $core.String? directory,
    $core.String? schema,
    $core.Map<$core.String, $core.List<$core.int>>? extraFiles,
    $core.String? loaderTarget,
    $core.Map<$core.String, $core.String>? localDependencies,
  }) {
    final $result = create();
    if (directory != null) {
      $result.directory = directory;
    }
    if (schema != null) {
      $result.schema = schema;
    }
    if (extraFiles != null) {
      $result.extraFiles.addAll(extraFiles);
    }
    if (loaderTarget != null) {
      $result.loaderTarget = loaderTarget;
    }
    if (localDependencies != null) {
      $result.localDependencies.addAll(localDependencies);
    }
    return $result;
  }
  GeneratePackageRequest._() : super();
  factory GeneratePackageRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GeneratePackageRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GeneratePackageRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'directory')
    ..aOS(2, _omitFieldNames ? '' : 'schema')
    ..m<$core.String, $core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'extraFiles',
        entryClassName: 'GeneratePackageRequest.ExtraFilesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(4, _omitFieldNames ? '' : 'loaderTarget')
    ..m<$core.String, $core.String>(
        5, _omitFieldNames ? '' : 'localDependencies',
        entryClassName: 'GeneratePackageRequest.LocalDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GeneratePackageRequest clone() =>
      GeneratePackageRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GeneratePackageRequest copyWith(
          void Function(GeneratePackageRequest) updates) =>
      super.copyWith((message) => updates(message as GeneratePackageRequest))
          as GeneratePackageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GeneratePackageRequest create() => GeneratePackageRequest._();
  GeneratePackageRequest createEmptyInstance() => create();
  static $pb.PbList<GeneratePackageRequest> createRepeated() =>
      $pb.PbList<GeneratePackageRequest>();
  @$core.pragma('dart2js:noInline')
  static GeneratePackageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GeneratePackageRequest>(create);
  static GeneratePackageRequest? _defaultInstance;

  /// the directory to generate the package in.
  @$pb.TagNumber(1)
  $core.String get directory => $_getSZ(0);
  @$pb.TagNumber(1)
  set directory($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDirectory() => $_has(0);
  @$pb.TagNumber(1)
  void clearDirectory() => clearField(1);

  /// the JSON-encoded schema.
  @$pb.TagNumber(2)
  $core.String get schema => $_getSZ(1);
  @$pb.TagNumber(2)
  set schema($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSchema() => $_has(1);
  @$pb.TagNumber(2)
  void clearSchema() => clearField(2);

  /// extra files to copy to the package output.
  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.List<$core.int>> get extraFiles => $_getMap(2);

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

  /// local dependencies to use instead of using the package system. This is a map of package name to a local
  /// path of a language specific artifact to use for the SDK for that package.
  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get localDependencies => $_getMap(4);
}

class GeneratePackageResponse extends $pb.GeneratedMessage {
  factory GeneratePackageResponse({
    $core.Iterable<$13.Diagnostic>? diagnostics,
  }) {
    final $result = create();
    if (diagnostics != null) {
      $result.diagnostics.addAll(diagnostics);
    }
    return $result;
  }
  GeneratePackageResponse._() : super();
  factory GeneratePackageResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GeneratePackageResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GeneratePackageResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pc<$13.Diagnostic>(
        1, _omitFieldNames ? '' : 'diagnostics', $pb.PbFieldType.PM,
        subBuilder: $13.Diagnostic.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GeneratePackageResponse clone() =>
      GeneratePackageResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GeneratePackageResponse copyWith(
          void Function(GeneratePackageResponse) updates) =>
      super.copyWith((message) => updates(message as GeneratePackageResponse))
          as GeneratePackageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GeneratePackageResponse create() => GeneratePackageResponse._();
  GeneratePackageResponse createEmptyInstance() => create();
  static $pb.PbList<GeneratePackageResponse> createRepeated() =>
      $pb.PbList<GeneratePackageResponse>();
  @$core.pragma('dart2js:noInline')
  static GeneratePackageResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GeneratePackageResponse>(create);
  static GeneratePackageResponse? _defaultInstance;

  /// any diagnostics from code generation.
  @$pb.TagNumber(1)
  $core.List<$13.Diagnostic> get diagnostics => $_getList(0);
}

class PackRequest extends $pb.GeneratedMessage {
  factory PackRequest({
    $core.String? packageDirectory,
    $core.String? destinationDirectory,
  }) {
    final $result = create();
    if (packageDirectory != null) {
      $result.packageDirectory = packageDirectory;
    }
    if (destinationDirectory != null) {
      $result.destinationDirectory = destinationDirectory;
    }
    return $result;
  }
  PackRequest._() : super();
  factory PackRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PackRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PackRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'packageDirectory')
    ..aOS(2, _omitFieldNames ? '' : 'destinationDirectory')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PackRequest clone() => PackRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PackRequest copyWith(void Function(PackRequest) updates) =>
      super.copyWith((message) => updates(message as PackRequest))
          as PackRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackRequest create() => PackRequest._();
  PackRequest createEmptyInstance() => create();
  static $pb.PbList<PackRequest> createRepeated() => $pb.PbList<PackRequest>();
  @$core.pragma('dart2js:noInline')
  static PackRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PackRequest>(create);
  static PackRequest? _defaultInstance;

  /// the directory of a package to pack.
  @$pb.TagNumber(1)
  $core.String get packageDirectory => $_getSZ(0);
  @$pb.TagNumber(1)
  set packageDirectory($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPackageDirectory() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackageDirectory() => clearField(1);

  /// the directory to write the packed artifact to.
  @$pb.TagNumber(2)
  $core.String get destinationDirectory => $_getSZ(1);
  @$pb.TagNumber(2)
  set destinationDirectory($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDestinationDirectory() => $_has(1);
  @$pb.TagNumber(2)
  void clearDestinationDirectory() => clearField(2);
}

class PackResponse extends $pb.GeneratedMessage {
  factory PackResponse({
    $core.String? artifactPath,
  }) {
    final $result = create();
    if (artifactPath != null) {
      $result.artifactPath = artifactPath;
    }
    return $result;
  }
  PackResponse._() : super();
  factory PackResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PackResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PackResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'artifactPath')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PackResponse clone() => PackResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PackResponse copyWith(void Function(PackResponse) updates) =>
      super.copyWith((message) => updates(message as PackResponse))
          as PackResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PackResponse create() => PackResponse._();
  PackResponse createEmptyInstance() => create();
  static $pb.PbList<PackResponse> createRepeated() =>
      $pb.PbList<PackResponse>();
  @$core.pragma('dart2js:noInline')
  static PackResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PackResponse>(create);
  static PackResponse? _defaultInstance;

  /// the full path of the packed artifact.
  @$pb.TagNumber(1)
  $core.String get artifactPath => $_getSZ(0);
  @$pb.TagNumber(1)
  set artifactPath($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasArtifactPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearArtifactPath() => clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
