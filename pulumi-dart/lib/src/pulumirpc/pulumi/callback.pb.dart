//
//  Generated code. Do not modify.
//  source: pulumi/callback.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Callback extends $pb.GeneratedMessage {
  factory Callback({
    $core.String? target,
    $core.String? token,
  }) {
    final $result = create();
    if (target != null) {
      $result.target = target;
    }
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  Callback._() : super();
  factory Callback.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Callback.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Callback',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'target')
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Callback clone() => Callback()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Callback copyWith(void Function(Callback) updates) =>
      super.copyWith((message) => updates(message as Callback)) as Callback;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Callback create() => Callback._();
  Callback createEmptyInstance() => create();
  static $pb.PbList<Callback> createRepeated() => $pb.PbList<Callback>();
  @$core.pragma('dart2js:noInline')
  static Callback getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Callback>(create);
  static Callback? _defaultInstance;

  /// the gRPC target of the callback service.
  @$pb.TagNumber(1)
  $core.String get target => $_getSZ(0);
  @$pb.TagNumber(1)
  set target($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearTarget() => clearField(1);

  /// the service specific unique token for this callback.
  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

class CallbackInvokeRequest extends $pb.GeneratedMessage {
  factory CallbackInvokeRequest({
    $core.String? token,
    $core.List<$core.int>? request,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    if (request != null) {
      $result.request = request;
    }
    return $result;
  }
  CallbackInvokeRequest._() : super();
  factory CallbackInvokeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CallbackInvokeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CallbackInvokeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'request', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CallbackInvokeRequest clone() =>
      CallbackInvokeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CallbackInvokeRequest copyWith(
          void Function(CallbackInvokeRequest) updates) =>
      super.copyWith((message) => updates(message as CallbackInvokeRequest))
          as CallbackInvokeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallbackInvokeRequest create() => CallbackInvokeRequest._();
  CallbackInvokeRequest createEmptyInstance() => create();
  static $pb.PbList<CallbackInvokeRequest> createRepeated() =>
      $pb.PbList<CallbackInvokeRequest>();
  @$core.pragma('dart2js:noInline')
  static CallbackInvokeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallbackInvokeRequest>(create);
  static CallbackInvokeRequest? _defaultInstance;

  /// the token for the callback.
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

  /// the serialized protobuf message of the arguments for this callback.
  @$pb.TagNumber(2)
  $core.List<$core.int> get request => $_getN(1);
  @$pb.TagNumber(2)
  set request($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequest() => clearField(2);
}

class CallbackInvokeResponse extends $pb.GeneratedMessage {
  factory CallbackInvokeResponse({
    $core.List<$core.int>? response,
  }) {
    final $result = create();
    if (response != null) {
      $result.response = response;
    }
    return $result;
  }
  CallbackInvokeResponse._() : super();
  factory CallbackInvokeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CallbackInvokeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CallbackInvokeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'response', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CallbackInvokeResponse clone() =>
      CallbackInvokeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CallbackInvokeResponse copyWith(
          void Function(CallbackInvokeResponse) updates) =>
      super.copyWith((message) => updates(message as CallbackInvokeResponse))
          as CallbackInvokeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallbackInvokeResponse create() => CallbackInvokeResponse._();
  CallbackInvokeResponse createEmptyInstance() => create();
  static $pb.PbList<CallbackInvokeResponse> createRepeated() =>
      $pb.PbList<CallbackInvokeResponse>();
  @$core.pragma('dart2js:noInline')
  static CallbackInvokeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallbackInvokeResponse>(create);
  static CallbackInvokeResponse? _defaultInstance;

  /// the serialized protobuf message of the response for this callback.
  @$pb.TagNumber(1)
  $core.List<$core.int> get response => $_getN(0);
  @$pb.TagNumber(1)
  set response($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
