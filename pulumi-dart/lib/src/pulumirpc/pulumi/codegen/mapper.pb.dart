//
//  Generated code. Do not modify.
//  source: pulumi/codegen/mapper.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// GetMappingRequest allows the engine to return ecosystem specific information to allow the converter to be
/// convert provider types from a source markup to Pulumi.
class GetMappingRequest extends $pb.GeneratedMessage {
  factory GetMappingRequest({
    $core.String? provider,
    $core.String? pulumiProvider,
  }) {
    final $result = create();
    if (provider != null) {
      $result.provider = provider;
    }
    if (pulumiProvider != null) {
      $result.pulumiProvider = pulumiProvider;
    }
    return $result;
  }
  GetMappingRequest._() : super();
  factory GetMappingRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMappingRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMappingRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'codegen'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'provider')
    ..aOS(2, _omitFieldNames ? '' : 'pulumiProvider')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMappingRequest clone() => GetMappingRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMappingRequest copyWith(void Function(GetMappingRequest) updates) =>
      super.copyWith((message) => updates(message as GetMappingRequest))
          as GetMappingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMappingRequest create() => GetMappingRequest._();
  GetMappingRequest createEmptyInstance() => create();
  static $pb.PbList<GetMappingRequest> createRepeated() =>
      $pb.PbList<GetMappingRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMappingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMappingRequest>(create);
  static GetMappingRequest? _defaultInstance;

  /// the provider name for the mapping being requested.
  @$pb.TagNumber(1)
  $core.String get provider => $_getSZ(0);
  @$pb.TagNumber(1)
  set provider($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProvider() => $_has(0);
  @$pb.TagNumber(1)
  void clearProvider() => clearField(1);

  /// the expected name of the pulumi provider that maps to the requested provider. Defaults to the same as 'provider'.
  @$pb.TagNumber(2)
  $core.String get pulumiProvider => $_getSZ(1);
  @$pb.TagNumber(2)
  set pulumiProvider($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPulumiProvider() => $_has(1);
  @$pb.TagNumber(2)
  void clearPulumiProvider() => clearField(2);
}

/// GetMappingResponse returns converter plugin specific data for the requested provider. This will normally be human
/// readable JSON, but the engine doesn't mandate any form.
class GetMappingResponse extends $pb.GeneratedMessage {
  factory GetMappingResponse({
    $core.List<$core.int>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  GetMappingResponse._() : super();
  factory GetMappingResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMappingResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMappingResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'codegen'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMappingResponse clone() => GetMappingResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMappingResponse copyWith(void Function(GetMappingResponse) updates) =>
      super.copyWith((message) => updates(message as GetMappingResponse))
          as GetMappingResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMappingResponse create() => GetMappingResponse._();
  GetMappingResponse createEmptyInstance() => create();
  static $pb.PbList<GetMappingResponse> createRepeated() =>
      $pb.PbList<GetMappingResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMappingResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMappingResponse>(create);
  static GetMappingResponse? _defaultInstance;

  /// the conversion plugin specific data (if any)
  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
