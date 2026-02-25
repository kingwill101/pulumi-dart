// This is a generated file - do not edit.
//
// Generated from pulumi/testing/language.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GetLanguageTestsRequest extends $pb.GeneratedMessage {
  factory GetLanguageTestsRequest() => create();

  GetLanguageTestsRequest._();

  factory GetLanguageTestsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetLanguageTestsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetLanguageTestsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.testing'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetLanguageTestsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetLanguageTestsRequest copyWith(
          void Function(GetLanguageTestsRequest) updates) =>
      super.copyWith((message) => updates(message as GetLanguageTestsRequest))
          as GetLanguageTestsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLanguageTestsRequest create() => GetLanguageTestsRequest._();
  @$core.override
  GetLanguageTestsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetLanguageTestsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetLanguageTestsRequest>(create);
  static GetLanguageTestsRequest? _defaultInstance;
}

class GetLanguageTestsResponse extends $pb.GeneratedMessage {
  factory GetLanguageTestsResponse({
    $core.Iterable<$core.String>? tests,
  }) {
    final result = create();
    if (tests != null) result.tests.addAll(tests);
    return result;
  }

  GetLanguageTestsResponse._();

  factory GetLanguageTestsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetLanguageTestsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetLanguageTestsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.testing'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'tests')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetLanguageTestsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetLanguageTestsResponse copyWith(
          void Function(GetLanguageTestsResponse) updates) =>
      super.copyWith((message) => updates(message as GetLanguageTestsResponse))
          as GetLanguageTestsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLanguageTestsResponse create() => GetLanguageTestsResponse._();
  @$core.override
  GetLanguageTestsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetLanguageTestsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetLanguageTestsResponse>(create);
  static GetLanguageTestsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get tests => $_getList(0);
}

class PrepareLanguageTestsRequest_Replacement extends $pb.GeneratedMessage {
  factory PrepareLanguageTestsRequest_Replacement({
    $core.String? path,
    $core.String? pattern,
    $core.String? replacement,
  }) {
    final result = create();
    if (path != null) result.path = path;
    if (pattern != null) result.pattern = pattern;
    if (replacement != null) result.replacement = replacement;
    return result;
  }

  PrepareLanguageTestsRequest_Replacement._();

  factory PrepareLanguageTestsRequest_Replacement.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareLanguageTestsRequest_Replacement.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareLanguageTestsRequest.Replacement',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.testing'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aOS(2, _omitFieldNames ? '' : 'pattern')
    ..aOS(3, _omitFieldNames ? '' : 'replacement')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareLanguageTestsRequest_Replacement clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareLanguageTestsRequest_Replacement copyWith(
          void Function(PrepareLanguageTestsRequest_Replacement) updates) =>
      super.copyWith((message) =>
              updates(message as PrepareLanguageTestsRequest_Replacement))
          as PrepareLanguageTestsRequest_Replacement;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareLanguageTestsRequest_Replacement create() =>
      PrepareLanguageTestsRequest_Replacement._();
  @$core.override
  PrepareLanguageTestsRequest_Replacement createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareLanguageTestsRequest_Replacement getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PrepareLanguageTestsRequest_Replacement>(create);
  static PrepareLanguageTestsRequest_Replacement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get pattern => $_getSZ(1);
  @$pb.TagNumber(2)
  set pattern($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPattern() => $_has(1);
  @$pb.TagNumber(2)
  void clearPattern() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get replacement => $_getSZ(2);
  @$pb.TagNumber(3)
  set replacement($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasReplacement() => $_has(2);
  @$pb.TagNumber(3)
  void clearReplacement() => $_clearField(3);
}

/// ProgramOverrides represent overrides whereby a test may specify a set of hardcoded or pre-generated programs to
/// be used, in place of running GenerateProject on source PCL. This is useful for testing SDK functionality when the
/// requisite program code generation is not yet complete enough to support generating programs which exercise that
/// functionality.
class PrepareLanguageTestsRequest_ProgramOverride extends $pb.GeneratedMessage {
  factory PrepareLanguageTestsRequest_ProgramOverride({
    $core.Iterable<$core.String>? paths,
  }) {
    final result = create();
    if (paths != null) result.paths.addAll(paths);
    return result;
  }

  PrepareLanguageTestsRequest_ProgramOverride._();

  factory PrepareLanguageTestsRequest_ProgramOverride.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareLanguageTestsRequest_ProgramOverride.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareLanguageTestsRequest.ProgramOverride',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.testing'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'paths')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareLanguageTestsRequest_ProgramOverride clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareLanguageTestsRequest_ProgramOverride copyWith(
          void Function(PrepareLanguageTestsRequest_ProgramOverride) updates) =>
      super.copyWith((message) =>
              updates(message as PrepareLanguageTestsRequest_ProgramOverride))
          as PrepareLanguageTestsRequest_ProgramOverride;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareLanguageTestsRequest_ProgramOverride create() =>
      PrepareLanguageTestsRequest_ProgramOverride._();
  @$core.override
  PrepareLanguageTestsRequest_ProgramOverride createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareLanguageTestsRequest_ProgramOverride getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PrepareLanguageTestsRequest_ProgramOverride>(create);
  static PrepareLanguageTestsRequest_ProgramOverride? _defaultInstance;

  /// A list of paths to directories containing programs to use for the test. The length of this list should
  /// correspond to the number of `Runs` in the test, with each entry being used for the corresponding run (e.g.
  /// entry 0 for run 0, entry 1 for run 1, etc.).
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get paths => $_getList(0);
}

class PrepareLanguageTestsRequest extends $pb.GeneratedMessage {
  factory PrepareLanguageTestsRequest({
    $core.String? languagePluginName,
    $core.String? languagePluginTarget,
    $core.String? snapshotDirectory,
    $core.String? temporaryDirectory,
    $core.String? coreSdkDirectory,
    $core.String? coreSdkVersion,
    $core.Iterable<PrepareLanguageTestsRequest_Replacement>? snapshotEdits,
    $core.String? languageInfo,
    $core.Iterable<
            $core.MapEntry<$core.String,
                PrepareLanguageTestsRequest_ProgramOverride>>?
        programOverrides,
    $core.String? policyPackDirectory,
    $core.bool? local,
    $core.String? providersDirectory,
  }) {
    final result = create();
    if (languagePluginName != null)
      result.languagePluginName = languagePluginName;
    if (languagePluginTarget != null)
      result.languagePluginTarget = languagePluginTarget;
    if (snapshotDirectory != null) result.snapshotDirectory = snapshotDirectory;
    if (temporaryDirectory != null)
      result.temporaryDirectory = temporaryDirectory;
    if (coreSdkDirectory != null) result.coreSdkDirectory = coreSdkDirectory;
    if (coreSdkVersion != null) result.coreSdkVersion = coreSdkVersion;
    if (snapshotEdits != null) result.snapshotEdits.addAll(snapshotEdits);
    if (languageInfo != null) result.languageInfo = languageInfo;
    if (programOverrides != null)
      result.programOverrides.addEntries(programOverrides);
    if (policyPackDirectory != null)
      result.policyPackDirectory = policyPackDirectory;
    if (local != null) result.local = local;
    if (providersDirectory != null)
      result.providersDirectory = providersDirectory;
    return result;
  }

  PrepareLanguageTestsRequest._();

  factory PrepareLanguageTestsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareLanguageTestsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareLanguageTestsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.testing'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'languagePluginName')
    ..aOS(2, _omitFieldNames ? '' : 'languagePluginTarget')
    ..aOS(3, _omitFieldNames ? '' : 'snapshotDirectory')
    ..aOS(4, _omitFieldNames ? '' : 'temporaryDirectory')
    ..aOS(5, _omitFieldNames ? '' : 'coreSdkDirectory')
    ..aOS(6, _omitFieldNames ? '' : 'coreSdkVersion')
    ..pPM<PrepareLanguageTestsRequest_Replacement>(
        7, _omitFieldNames ? '' : 'snapshotEdits',
        subBuilder: PrepareLanguageTestsRequest_Replacement.create)
    ..aOS(8, _omitFieldNames ? '' : 'languageInfo')
    ..m<$core.String, PrepareLanguageTestsRequest_ProgramOverride>(
        9, _omitFieldNames ? '' : 'programOverrides',
        entryClassName: 'PrepareLanguageTestsRequest.ProgramOverridesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: PrepareLanguageTestsRequest_ProgramOverride.create,
        valueDefaultOrMaker:
            PrepareLanguageTestsRequest_ProgramOverride.getDefault,
        packageName: const $pb.PackageName('pulumirpc.testing'))
    ..aOS(10, _omitFieldNames ? '' : 'policyPackDirectory')
    ..aOB(11, _omitFieldNames ? '' : 'local')
    ..aOS(12, _omitFieldNames ? '' : 'providersDirectory')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareLanguageTestsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareLanguageTestsRequest copyWith(
          void Function(PrepareLanguageTestsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as PrepareLanguageTestsRequest))
          as PrepareLanguageTestsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareLanguageTestsRequest create() =>
      PrepareLanguageTestsRequest._();
  @$core.override
  PrepareLanguageTestsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareLanguageTestsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareLanguageTestsRequest>(create);
  static PrepareLanguageTestsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get languagePluginName => $_getSZ(0);
  @$pb.TagNumber(1)
  set languagePluginName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLanguagePluginName() => $_has(0);
  @$pb.TagNumber(1)
  void clearLanguagePluginName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get languagePluginTarget => $_getSZ(1);
  @$pb.TagNumber(2)
  set languagePluginTarget($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLanguagePluginTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearLanguagePluginTarget() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get snapshotDirectory => $_getSZ(2);
  @$pb.TagNumber(3)
  set snapshotDirectory($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSnapshotDirectory() => $_has(2);
  @$pb.TagNumber(3)
  void clearSnapshotDirectory() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get temporaryDirectory => $_getSZ(3);
  @$pb.TagNumber(4)
  set temporaryDirectory($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTemporaryDirectory() => $_has(3);
  @$pb.TagNumber(4)
  void clearTemporaryDirectory() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get coreSdkDirectory => $_getSZ(4);
  @$pb.TagNumber(5)
  set coreSdkDirectory($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCoreSdkDirectory() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoreSdkDirectory() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get coreSdkVersion => $_getSZ(5);
  @$pb.TagNumber(6)
  set coreSdkVersion($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCoreSdkVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoreSdkVersion() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<PrepareLanguageTestsRequest_Replacement> get snapshotEdits =>
      $_getList(6);

  /// a JSON string that will be inserted into every schema loaded (for both GeneratePackage and GenerateProject) in
  /// the "Languages[language_plugin_name]" field. This can be used to test language specific options such as
  /// inputTypes in python.
  @$pb.TagNumber(8)
  $core.String get languageInfo => $_getSZ(7);
  @$pb.TagNumber(8)
  set languageInfo($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasLanguageInfo() => $_has(7);
  @$pb.TagNumber(8)
  void clearLanguageInfo() => $_clearField(8);

  /// A map of test names to program overrides. This may be used to specify tests for which program generation should
  /// not be run (e.g. because it does not support the necessary features), but where the test can still execute and
  /// pass. This is useful in cases where e.g. a language's code SDK is relatively feature complete (and thus it's
  /// desirable to test that feature set) but where program code generation is not yet complete enough to support
  /// generating programs which exercise that functionality.
  @$pb.TagNumber(9)
  $pb.PbMap<$core.String, PrepareLanguageTestsRequest_ProgramOverride>
      get programOverrides => $_getMap(8);

  /// A folder pointing to policy packs to use for the tests. This is used to test the language plugin's policy pack
  /// support. These must be manually written.
  @$pb.TagNumber(10)
  $core.String get policyPackDirectory => $_getSZ(9);
  @$pb.TagNumber(10)
  set policyPackDirectory($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasPolicyPackDirectory() => $_has(9);
  @$pb.TagNumber(10)
  void clearPolicyPackDirectory() => $_clearField(10);

  /// If true, tests will be run in "local" mode, meaning all SDKs will be generated with the `--local` flag and not packed.
  @$pb.TagNumber(11)
  $core.bool get local => $_getBF(10);
  @$pb.TagNumber(11)
  set local($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasLocal() => $_has(10);
  @$pb.TagNumber(11)
  void clearLocal() => $_clearField(11);

  /// The path to a directory containing provider plugins to be used for the "provider-" tests.
  @$pb.TagNumber(12)
  $core.String get providersDirectory => $_getSZ(11);
  @$pb.TagNumber(12)
  set providersDirectory($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasProvidersDirectory() => $_has(11);
  @$pb.TagNumber(12)
  void clearProvidersDirectory() => $_clearField(12);
}

class PrepareLanguageTestsResponse extends $pb.GeneratedMessage {
  factory PrepareLanguageTestsResponse({
    $core.String? token,
  }) {
    final result = create();
    if (token != null) result.token = token;
    return result;
  }

  PrepareLanguageTestsResponse._();

  factory PrepareLanguageTestsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrepareLanguageTestsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareLanguageTestsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.testing'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareLanguageTestsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrepareLanguageTestsResponse copyWith(
          void Function(PrepareLanguageTestsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as PrepareLanguageTestsResponse))
          as PrepareLanguageTestsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareLanguageTestsResponse create() =>
      PrepareLanguageTestsResponse._();
  @$core.override
  PrepareLanguageTestsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrepareLanguageTestsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareLanguageTestsResponse>(create);
  static PrepareLanguageTestsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);
}

class RunLanguageTestRequest extends $pb.GeneratedMessage {
  factory RunLanguageTestRequest({
    $core.String? token,
    $core.String? test,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (test != null) result.test = test;
    return result;
  }

  RunLanguageTestRequest._();

  factory RunLanguageTestRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunLanguageTestRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunLanguageTestRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.testing'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aOS(2, _omitFieldNames ? '' : 'test')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunLanguageTestRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunLanguageTestRequest copyWith(
          void Function(RunLanguageTestRequest) updates) =>
      super.copyWith((message) => updates(message as RunLanguageTestRequest))
          as RunLanguageTestRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunLanguageTestRequest create() => RunLanguageTestRequest._();
  @$core.override
  RunLanguageTestRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunLanguageTestRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunLanguageTestRequest>(create);
  static RunLanguageTestRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get test => $_getSZ(1);
  @$pb.TagNumber(2)
  set test($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTest() => $_has(1);
  @$pb.TagNumber(2)
  void clearTest() => $_clearField(2);
}

class RunLanguageTestResponse extends $pb.GeneratedMessage {
  factory RunLanguageTestResponse({
    $core.bool? success,
    $core.Iterable<$core.String>? messages,
    $core.String? stdout,
    $core.String? stderr,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (messages != null) result.messages.addAll(messages);
    if (stdout != null) result.stdout = stdout;
    if (stderr != null) result.stderr = stderr;
    return result;
  }

  RunLanguageTestResponse._();

  factory RunLanguageTestResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunLanguageTestResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunLanguageTestResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.testing'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..pPS(2, _omitFieldNames ? '' : 'messages')
    ..aOS(3, _omitFieldNames ? '' : 'stdout')
    ..aOS(4, _omitFieldNames ? '' : 'stderr')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunLanguageTestResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunLanguageTestResponse copyWith(
          void Function(RunLanguageTestResponse) updates) =>
      super.copyWith((message) => updates(message as RunLanguageTestResponse))
          as RunLanguageTestResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunLanguageTestResponse create() => RunLanguageTestResponse._();
  @$core.override
  RunLanguageTestResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunLanguageTestResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunLanguageTestResponse>(create);
  static RunLanguageTestResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get messages => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get stdout => $_getSZ(2);
  @$pb.TagNumber(3)
  set stdout($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStdout() => $_has(2);
  @$pb.TagNumber(3)
  void clearStdout() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get stderr => $_getSZ(3);
  @$pb.TagNumber(4)
  set stderr($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStderr() => $_has(3);
  @$pb.TagNumber(4)
  void clearStderr() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
