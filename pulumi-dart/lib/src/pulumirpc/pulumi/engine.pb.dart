//
//  Generated code. Do not modify.
//  source: pulumi/engine.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'engine.pbenum.dart';

export 'engine.pbenum.dart';

class LogRequest extends $pb.GeneratedMessage {
  factory LogRequest({
    LogSeverity? severity,
    $core.String? message,
    $core.String? urn,
    $core.int? streamId,
    $core.bool? ephemeral,
  }) {
    final $result = create();
    if (severity != null) {
      $result.severity = severity;
    }
    if (message != null) {
      $result.message = message;
    }
    if (urn != null) {
      $result.urn = urn;
    }
    if (streamId != null) {
      $result.streamId = streamId;
    }
    if (ephemeral != null) {
      $result.ephemeral = ephemeral;
    }
    return $result;
  }
  LogRequest._() : super();
  factory LogRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LogRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LogRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..e<LogSeverity>(1, _omitFieldNames ? '' : 'severity', $pb.PbFieldType.OE,
        defaultOrMaker: LogSeverity.DEBUG,
        valueOf: LogSeverity.valueOf,
        enumValues: LogSeverity.values)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOS(3, _omitFieldNames ? '' : 'urn')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'streamId', $pb.PbFieldType.O3,
        protoName: 'streamId')
    ..aOB(5, _omitFieldNames ? '' : 'ephemeral')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LogRequest clone() => LogRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LogRequest copyWith(void Function(LogRequest) updates) =>
      super.copyWith((message) => updates(message as LogRequest)) as LogRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LogRequest create() => LogRequest._();
  LogRequest createEmptyInstance() => create();
  static $pb.PbList<LogRequest> createRepeated() => $pb.PbList<LogRequest>();
  @$core.pragma('dart2js:noInline')
  static LogRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LogRequest>(create);
  static LogRequest? _defaultInstance;

  /// the logging level of this message.
  @$pb.TagNumber(1)
  LogSeverity get severity => $_getN(0);
  @$pb.TagNumber(1)
  set severity(LogSeverity v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSeverity() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeverity() => clearField(1);

  /// the contents of the logged message.
  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  /// the (optional) resource urn this log is associated with.
  @$pb.TagNumber(3)
  $core.String get urn => $_getSZ(2);
  @$pb.TagNumber(3)
  set urn($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUrn() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrn() => clearField(3);

  ///  the (optional) stream id that a stream of log messages can be associated with. This allows
  ///  clients to not have to buffer a large set of log messages that they all want to be
  ///  conceptually connected.  Instead the messages can be sent as chunks (with the same stream id)
  ///  and the end display can show the messages as they arrive, while still stitching them together
  ///  into one total log message.
  ///
  ///  0/not-given means: do not associate with any stream.
  @$pb.TagNumber(4)
  $core.int get streamId => $_getIZ(3);
  @$pb.TagNumber(4)
  set streamId($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasStreamId() => $_has(3);
  @$pb.TagNumber(4)
  void clearStreamId() => clearField(4);

  /// Optional value indicating whether this is a status message.
  @$pb.TagNumber(5)
  $core.bool get ephemeral => $_getBF(4);
  @$pb.TagNumber(5)
  set ephemeral($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasEphemeral() => $_has(4);
  @$pb.TagNumber(5)
  void clearEphemeral() => clearField(5);
}

class GetRootResourceRequest extends $pb.GeneratedMessage {
  factory GetRootResourceRequest() => create();
  GetRootResourceRequest._() : super();
  factory GetRootResourceRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetRootResourceRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetRootResourceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetRootResourceRequest clone() =>
      GetRootResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetRootResourceRequest copyWith(
          void Function(GetRootResourceRequest) updates) =>
      super.copyWith((message) => updates(message as GetRootResourceRequest))
          as GetRootResourceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRootResourceRequest create() => GetRootResourceRequest._();
  GetRootResourceRequest createEmptyInstance() => create();
  static $pb.PbList<GetRootResourceRequest> createRepeated() =>
      $pb.PbList<GetRootResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRootResourceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRootResourceRequest>(create);
  static GetRootResourceRequest? _defaultInstance;
}

class GetRootResourceResponse extends $pb.GeneratedMessage {
  factory GetRootResourceResponse({
    $core.String? urn,
  }) {
    final $result = create();
    if (urn != null) {
      $result.urn = urn;
    }
    return $result;
  }
  GetRootResourceResponse._() : super();
  factory GetRootResourceResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetRootResourceResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetRootResourceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetRootResourceResponse clone() =>
      GetRootResourceResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetRootResourceResponse copyWith(
          void Function(GetRootResourceResponse) updates) =>
      super.copyWith((message) => updates(message as GetRootResourceResponse))
          as GetRootResourceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRootResourceResponse create() => GetRootResourceResponse._();
  GetRootResourceResponse createEmptyInstance() => create();
  static $pb.PbList<GetRootResourceResponse> createRepeated() =>
      $pb.PbList<GetRootResourceResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRootResourceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRootResourceResponse>(create);
  static GetRootResourceResponse? _defaultInstance;

  /// the URN of the root resource, or the empty string if one was not set.
  @$pb.TagNumber(1)
  $core.String get urn => $_getSZ(0);
  @$pb.TagNumber(1)
  set urn($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUrn() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrn() => clearField(1);
}

class SetRootResourceRequest extends $pb.GeneratedMessage {
  factory SetRootResourceRequest({
    $core.String? urn,
  }) {
    final $result = create();
    if (urn != null) {
      $result.urn = urn;
    }
    return $result;
  }
  SetRootResourceRequest._() : super();
  factory SetRootResourceRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetRootResourceRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetRootResourceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetRootResourceRequest clone() =>
      SetRootResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetRootResourceRequest copyWith(
          void Function(SetRootResourceRequest) updates) =>
      super.copyWith((message) => updates(message as SetRootResourceRequest))
          as SetRootResourceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRootResourceRequest create() => SetRootResourceRequest._();
  SetRootResourceRequest createEmptyInstance() => create();
  static $pb.PbList<SetRootResourceRequest> createRepeated() =>
      $pb.PbList<SetRootResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static SetRootResourceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetRootResourceRequest>(create);
  static SetRootResourceRequest? _defaultInstance;

  /// the URN of the root resource, or the empty string.
  @$pb.TagNumber(1)
  $core.String get urn => $_getSZ(0);
  @$pb.TagNumber(1)
  set urn($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUrn() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrn() => clearField(1);
}

class SetRootResourceResponse extends $pb.GeneratedMessage {
  factory SetRootResourceResponse() => create();
  SetRootResourceResponse._() : super();
  factory SetRootResourceResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetRootResourceResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetRootResourceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetRootResourceResponse clone() =>
      SetRootResourceResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetRootResourceResponse copyWith(
          void Function(SetRootResourceResponse) updates) =>
      super.copyWith((message) => updates(message as SetRootResourceResponse))
          as SetRootResourceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRootResourceResponse create() => SetRootResourceResponse._();
  SetRootResourceResponse createEmptyInstance() => create();
  static $pb.PbList<SetRootResourceResponse> createRepeated() =>
      $pb.PbList<SetRootResourceResponse>();
  @$core.pragma('dart2js:noInline')
  static SetRootResourceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetRootResourceResponse>(create);
  static SetRootResourceResponse? _defaultInstance;
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
