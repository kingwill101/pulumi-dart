//
//  Generated code. Do not modify.
//  source: pulumi/testing/language.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetLanguageTestsRequest extends $pb.GeneratedMessage {
  factory GetLanguageTestsRequest() => create();
  GetLanguageTestsRequest._() : super();
  factory GetLanguageTestsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetLanguageTestsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetLanguageTestsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.testing'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetLanguageTestsRequest clone() =>
      GetLanguageTestsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetLanguageTestsRequest copyWith(
          void Function(GetLanguageTestsRequest) updates) =>
      super.copyWith((message) => updates(message as GetLanguageTestsRequest))
          as GetLanguageTestsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLanguageTestsRequest create() => GetLanguageTestsRequest._();
  GetLanguageTestsRequest createEmptyInstance() => create();
  static $pb.PbList<GetLanguageTestsRequest> createRepeated() =>
      $pb.PbList<GetLanguageTestsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLanguageTestsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetLanguageTestsRequest>(create);
  static GetLanguageTestsRequest? _defaultInstance;
}

class GetLanguageTestsResponse extends $pb.GeneratedMessage {
  factory GetLanguageTestsResponse({
    $core.Iterable<$core.String>? tests,
  }) {
    final $result = create();
    if (tests != null) {
      $result.tests.addAll(tests);
    }
    return $result;
  }
  GetLanguageTestsResponse._() : super();
  factory GetLanguageTestsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetLanguageTestsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetLanguageTestsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.testing'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'tests')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetLanguageTestsResponse clone() =>
      GetLanguageTestsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetLanguageTestsResponse copyWith(
          void Function(GetLanguageTestsResponse) updates) =>
      super.copyWith((message) => updates(message as GetLanguageTestsResponse))
          as GetLanguageTestsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLanguageTestsResponse create() => GetLanguageTestsResponse._();
  GetLanguageTestsResponse createEmptyInstance() => create();
  static $pb.PbList<GetLanguageTestsResponse> createRepeated() =>
      $pb.PbList<GetLanguageTestsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLanguageTestsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetLanguageTestsResponse>(create);
  static GetLanguageTestsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get tests => $_getList(0);
}

class PrepareLanguageTestsRequest_Replacement extends $pb.GeneratedMessage {
  factory PrepareLanguageTestsRequest_Replacement({
    $core.String? path,
    $core.String? pattern,
    $core.String? replacement,
  }) {
    final $result = create();
    if (path != null) {
      $result.path = path;
    }
    if (pattern != null) {
      $result.pattern = pattern;
    }
    if (replacement != null) {
      $result.replacement = replacement;
    }
    return $result;
  }
  PrepareLanguageTestsRequest_Replacement._() : super();
  factory PrepareLanguageTestsRequest_Replacement.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PrepareLanguageTestsRequest_Replacement.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareLanguageTestsRequest.Replacement',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.testing'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aOS(2, _omitFieldNames ? '' : 'pattern')
    ..aOS(3, _omitFieldNames ? '' : 'replacement')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PrepareLanguageTestsRequest_Replacement clone() =>
      PrepareLanguageTestsRequest_Replacement()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PrepareLanguageTestsRequest_Replacement copyWith(
          void Function(PrepareLanguageTestsRequest_Replacement) updates) =>
      super.copyWith((message) =>
              updates(message as PrepareLanguageTestsRequest_Replacement))
          as PrepareLanguageTestsRequest_Replacement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareLanguageTestsRequest_Replacement create() =>
      PrepareLanguageTestsRequest_Replacement._();
  PrepareLanguageTestsRequest_Replacement createEmptyInstance() => create();
  static $pb.PbList<PrepareLanguageTestsRequest_Replacement> createRepeated() =>
      $pb.PbList<PrepareLanguageTestsRequest_Replacement>();
  @$core.pragma('dart2js:noInline')
  static PrepareLanguageTestsRequest_Replacement getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          PrepareLanguageTestsRequest_Replacement>(create);
  static PrepareLanguageTestsRequest_Replacement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pattern => $_getSZ(1);
  @$pb.TagNumber(2)
  set pattern($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPattern() => $_has(1);
  @$pb.TagNumber(2)
  void clearPattern() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get replacement => $_getSZ(2);
  @$pb.TagNumber(3)
  set replacement($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReplacement() => $_has(2);
  @$pb.TagNumber(3)
  void clearReplacement() => clearField(3);
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
  }) {
    final $result = create();
    if (languagePluginName != null) {
      $result.languagePluginName = languagePluginName;
    }
    if (languagePluginTarget != null) {
      $result.languagePluginTarget = languagePluginTarget;
    }
    if (snapshotDirectory != null) {
      $result.snapshotDirectory = snapshotDirectory;
    }
    if (temporaryDirectory != null) {
      $result.temporaryDirectory = temporaryDirectory;
    }
    if (coreSdkDirectory != null) {
      $result.coreSdkDirectory = coreSdkDirectory;
    }
    if (coreSdkVersion != null) {
      $result.coreSdkVersion = coreSdkVersion;
    }
    if (snapshotEdits != null) {
      $result.snapshotEdits.addAll(snapshotEdits);
    }
    return $result;
  }
  PrepareLanguageTestsRequest._() : super();
  factory PrepareLanguageTestsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PrepareLanguageTestsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

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
    ..pc<PrepareLanguageTestsRequest_Replacement>(
        7, _omitFieldNames ? '' : 'snapshotEdits', $pb.PbFieldType.PM,
        subBuilder: PrepareLanguageTestsRequest_Replacement.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PrepareLanguageTestsRequest clone() =>
      PrepareLanguageTestsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PrepareLanguageTestsRequest copyWith(
          void Function(PrepareLanguageTestsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as PrepareLanguageTestsRequest))
          as PrepareLanguageTestsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareLanguageTestsRequest create() =>
      PrepareLanguageTestsRequest._();
  PrepareLanguageTestsRequest createEmptyInstance() => create();
  static $pb.PbList<PrepareLanguageTestsRequest> createRepeated() =>
      $pb.PbList<PrepareLanguageTestsRequest>();
  @$core.pragma('dart2js:noInline')
  static PrepareLanguageTestsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareLanguageTestsRequest>(create);
  static PrepareLanguageTestsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get languagePluginName => $_getSZ(0);
  @$pb.TagNumber(1)
  set languagePluginName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLanguagePluginName() => $_has(0);
  @$pb.TagNumber(1)
  void clearLanguagePluginName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get languagePluginTarget => $_getSZ(1);
  @$pb.TagNumber(2)
  set languagePluginTarget($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLanguagePluginTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearLanguagePluginTarget() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get snapshotDirectory => $_getSZ(2);
  @$pb.TagNumber(3)
  set snapshotDirectory($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSnapshotDirectory() => $_has(2);
  @$pb.TagNumber(3)
  void clearSnapshotDirectory() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get temporaryDirectory => $_getSZ(3);
  @$pb.TagNumber(4)
  set temporaryDirectory($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTemporaryDirectory() => $_has(3);
  @$pb.TagNumber(4)
  void clearTemporaryDirectory() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get coreSdkDirectory => $_getSZ(4);
  @$pb.TagNumber(5)
  set coreSdkDirectory($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCoreSdkDirectory() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoreSdkDirectory() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get coreSdkVersion => $_getSZ(5);
  @$pb.TagNumber(6)
  set coreSdkVersion($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCoreSdkVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoreSdkVersion() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<PrepareLanguageTestsRequest_Replacement> get snapshotEdits =>
      $_getList(6);
}

class PrepareLanguageTestsResponse extends $pb.GeneratedMessage {
  factory PrepareLanguageTestsResponse({
    $core.String? token,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  PrepareLanguageTestsResponse._() : super();
  factory PrepareLanguageTestsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PrepareLanguageTestsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrepareLanguageTestsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.testing'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PrepareLanguageTestsResponse clone() =>
      PrepareLanguageTestsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PrepareLanguageTestsResponse copyWith(
          void Function(PrepareLanguageTestsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as PrepareLanguageTestsResponse))
          as PrepareLanguageTestsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrepareLanguageTestsResponse create() =>
      PrepareLanguageTestsResponse._();
  PrepareLanguageTestsResponse createEmptyInstance() => create();
  static $pb.PbList<PrepareLanguageTestsResponse> createRepeated() =>
      $pb.PbList<PrepareLanguageTestsResponse>();
  @$core.pragma('dart2js:noInline')
  static PrepareLanguageTestsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrepareLanguageTestsResponse>(create);
  static PrepareLanguageTestsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class RunLanguageTestRequest extends $pb.GeneratedMessage {
  factory RunLanguageTestRequest({
    $core.String? token,
    $core.String? test,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    if (test != null) {
      $result.test = test;
    }
    return $result;
  }
  RunLanguageTestRequest._() : super();
  factory RunLanguageTestRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RunLanguageTestRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunLanguageTestRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.testing'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aOS(2, _omitFieldNames ? '' : 'test')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RunLanguageTestRequest clone() =>
      RunLanguageTestRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RunLanguageTestRequest copyWith(
          void Function(RunLanguageTestRequest) updates) =>
      super.copyWith((message) => updates(message as RunLanguageTestRequest))
          as RunLanguageTestRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunLanguageTestRequest create() => RunLanguageTestRequest._();
  RunLanguageTestRequest createEmptyInstance() => create();
  static $pb.PbList<RunLanguageTestRequest> createRepeated() =>
      $pb.PbList<RunLanguageTestRequest>();
  @$core.pragma('dart2js:noInline')
  static RunLanguageTestRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunLanguageTestRequest>(create);
  static RunLanguageTestRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get test => $_getSZ(1);
  @$pb.TagNumber(2)
  set test($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTest() => $_has(1);
  @$pb.TagNumber(2)
  void clearTest() => clearField(2);
}

class RunLanguageTestResponse extends $pb.GeneratedMessage {
  factory RunLanguageTestResponse({
    $core.bool? success,
    $core.Iterable<$core.String>? messages,
    $core.String? stdout,
    $core.String? stderr,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (messages != null) {
      $result.messages.addAll(messages);
    }
    if (stdout != null) {
      $result.stdout = stdout;
    }
    if (stderr != null) {
      $result.stderr = stderr;
    }
    return $result;
  }
  RunLanguageTestResponse._() : super();
  factory RunLanguageTestResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RunLanguageTestResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

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

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RunLanguageTestResponse clone() =>
      RunLanguageTestResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RunLanguageTestResponse copyWith(
          void Function(RunLanguageTestResponse) updates) =>
      super.copyWith((message) => updates(message as RunLanguageTestResponse))
          as RunLanguageTestResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunLanguageTestResponse create() => RunLanguageTestResponse._();
  RunLanguageTestResponse createEmptyInstance() => create();
  static $pb.PbList<RunLanguageTestResponse> createRepeated() =>
      $pb.PbList<RunLanguageTestResponse>();
  @$core.pragma('dart2js:noInline')
  static RunLanguageTestResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunLanguageTestResponse>(create);
  static RunLanguageTestResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get messages => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get stdout => $_getSZ(2);
  @$pb.TagNumber(3)
  set stdout($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStdout() => $_has(2);
  @$pb.TagNumber(3)
  void clearStdout() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get stderr => $_getSZ(3);
  @$pb.TagNumber(4)
  set stderr($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasStderr() => $_has(3);
  @$pb.TagNumber(4)
  void clearStderr() => clearField(4);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
