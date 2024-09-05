//
//  Generated code. Do not modify.
//  source: pulumi/errors.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ErrorCause extends $pb.GeneratedMessage {
  factory ErrorCause({
    $core.String? message,
    $core.String? stackTrace,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (stackTrace != null) {
      $result.stackTrace = stackTrace;
    }
    return $result;
  }
  ErrorCause._() : super();
  factory ErrorCause.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ErrorCause.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ErrorCause',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..aOS(2, _omitFieldNames ? '' : 'stackTrace', protoName: 'stackTrace')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ErrorCause clone() => ErrorCause()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ErrorCause copyWith(void Function(ErrorCause) updates) =>
      super.copyWith((message) => updates(message as ErrorCause)) as ErrorCause;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrorCause create() => ErrorCause._();
  ErrorCause createEmptyInstance() => create();
  static $pb.PbList<ErrorCause> createRepeated() => $pb.PbList<ErrorCause>();
  @$core.pragma('dart2js:noInline')
  static ErrorCause getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ErrorCause>(create);
  static ErrorCause? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get stackTrace => $_getSZ(1);
  @$pb.TagNumber(2)
  set stackTrace($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStackTrace() => $_has(1);
  @$pb.TagNumber(2)
  void clearStackTrace() => clearField(2);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
