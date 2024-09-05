//
//  Generated code. Do not modify.
//  source: pulumi/provider.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/struct.pb.dart' as $12;
import 'provider.pbenum.dart';

export 'provider.pbenum.dart';

class ParameterizeRequest_ParametersArgs extends $pb.GeneratedMessage {
  factory ParameterizeRequest_ParametersArgs({
    $core.Iterable<$core.String>? args,
  }) {
    final $result = create();
    if (args != null) {
      $result.args.addAll(args);
    }
    return $result;
  }
  ParameterizeRequest_ParametersArgs._() : super();
  factory ParameterizeRequest_ParametersArgs.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ParameterizeRequest_ParametersArgs.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ParameterizeRequest.ParametersArgs',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'args')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ParameterizeRequest_ParametersArgs clone() =>
      ParameterizeRequest_ParametersArgs()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ParameterizeRequest_ParametersArgs copyWith(
          void Function(ParameterizeRequest_ParametersArgs) updates) =>
      super.copyWith((message) =>
              updates(message as ParameterizeRequest_ParametersArgs))
          as ParameterizeRequest_ParametersArgs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParameterizeRequest_ParametersArgs create() =>
      ParameterizeRequest_ParametersArgs._();
  ParameterizeRequest_ParametersArgs createEmptyInstance() => create();
  static $pb.PbList<ParameterizeRequest_ParametersArgs> createRepeated() =>
      $pb.PbList<ParameterizeRequest_ParametersArgs>();
  @$core.pragma('dart2js:noInline')
  static ParameterizeRequest_ParametersArgs getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ParameterizeRequest_ParametersArgs>(
          create);
  static ParameterizeRequest_ParametersArgs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get args => $_getList(0);
}

class ParameterizeRequest_ParametersValue extends $pb.GeneratedMessage {
  factory ParameterizeRequest_ParametersValue({
    $core.String? name,
    $core.String? version,
    $core.List<$core.int>? value,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (version != null) {
      $result.version = version;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  ParameterizeRequest_ParametersValue._() : super();
  factory ParameterizeRequest_ParametersValue.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ParameterizeRequest_ParametersValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ParameterizeRequest.ParametersValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ParameterizeRequest_ParametersValue clone() =>
      ParameterizeRequest_ParametersValue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ParameterizeRequest_ParametersValue copyWith(
          void Function(ParameterizeRequest_ParametersValue) updates) =>
      super.copyWith((message) =>
              updates(message as ParameterizeRequest_ParametersValue))
          as ParameterizeRequest_ParametersValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParameterizeRequest_ParametersValue create() =>
      ParameterizeRequest_ParametersValue._();
  ParameterizeRequest_ParametersValue createEmptyInstance() => create();
  static $pb.PbList<ParameterizeRequest_ParametersValue> createRepeated() =>
      $pb.PbList<ParameterizeRequest_ParametersValue>();
  @$core.pragma('dart2js:noInline')
  static ParameterizeRequest_ParametersValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ParameterizeRequest_ParametersValue>(create);
  static ParameterizeRequest_ParametersValue? _defaultInstance;

  /// The sub-package name for this sub-schema parameterization.
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

  /// The sub-package version for this sub-schema parameterization.
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

  /// The embedded value from the sub-package.
  @$pb.TagNumber(3)
  $core.List<$core.int> get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}

enum ParameterizeRequest_Parameters { args, value, notSet }

class ParameterizeRequest extends $pb.GeneratedMessage {
  factory ParameterizeRequest({
    ParameterizeRequest_ParametersArgs? args,
    ParameterizeRequest_ParametersValue? value,
  }) {
    final $result = create();
    if (args != null) {
      $result.args = args;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  ParameterizeRequest._() : super();
  factory ParameterizeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ParameterizeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ParameterizeRequest_Parameters>
      _ParameterizeRequest_ParametersByTag = {
    1: ParameterizeRequest_Parameters.args,
    2: ParameterizeRequest_Parameters.value,
    0: ParameterizeRequest_Parameters.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ParameterizeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ParameterizeRequest_ParametersArgs>(1, _omitFieldNames ? '' : 'args',
        subBuilder: ParameterizeRequest_ParametersArgs.create)
    ..aOM<ParameterizeRequest_ParametersValue>(
        2, _omitFieldNames ? '' : 'value',
        subBuilder: ParameterizeRequest_ParametersValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ParameterizeRequest clone() => ParameterizeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ParameterizeRequest copyWith(void Function(ParameterizeRequest) updates) =>
      super.copyWith((message) => updates(message as ParameterizeRequest))
          as ParameterizeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParameterizeRequest create() => ParameterizeRequest._();
  ParameterizeRequest createEmptyInstance() => create();
  static $pb.PbList<ParameterizeRequest> createRepeated() =>
      $pb.PbList<ParameterizeRequest>();
  @$core.pragma('dart2js:noInline')
  static ParameterizeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ParameterizeRequest>(create);
  static ParameterizeRequest? _defaultInstance;

  ParameterizeRequest_Parameters whichParameters() =>
      _ParameterizeRequest_ParametersByTag[$_whichOneof(0)]!;
  void clearParameters() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ParameterizeRequest_ParametersArgs get args => $_getN(0);
  @$pb.TagNumber(1)
  set args(ParameterizeRequest_ParametersArgs v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasArgs() => $_has(0);
  @$pb.TagNumber(1)
  void clearArgs() => clearField(1);
  @$pb.TagNumber(1)
  ParameterizeRequest_ParametersArgs ensureArgs() => $_ensure(0);

  @$pb.TagNumber(2)
  ParameterizeRequest_ParametersValue get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(ParameterizeRequest_ParametersValue v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  ParameterizeRequest_ParametersValue ensureValue() => $_ensure(1);
}

class ParameterizeResponse extends $pb.GeneratedMessage {
  factory ParameterizeResponse({
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
  ParameterizeResponse._() : super();
  factory ParameterizeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ParameterizeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ParameterizeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ParameterizeResponse clone() =>
      ParameterizeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ParameterizeResponse copyWith(void Function(ParameterizeResponse) updates) =>
      super.copyWith((message) => updates(message as ParameterizeResponse))
          as ParameterizeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParameterizeResponse create() => ParameterizeResponse._();
  ParameterizeResponse createEmptyInstance() => create();
  static $pb.PbList<ParameterizeResponse> createRepeated() =>
      $pb.PbList<ParameterizeResponse>();
  @$core.pragma('dart2js:noInline')
  static ParameterizeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ParameterizeResponse>(create);
  static ParameterizeResponse? _defaultInstance;

  /// The name of the sub-package parameterized.
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

  /// The version of the sub-package parameterized.
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

class GetSchemaRequest extends $pb.GeneratedMessage {
  factory GetSchemaRequest({
    $core.int? version,
    $core.String? subpackageName,
    $core.String? subpackageVersion,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (subpackageName != null) {
      $result.subpackageName = subpackageName;
    }
    if (subpackageVersion != null) {
      $result.subpackageVersion = subpackageVersion;
    }
    return $result;
  }
  GetSchemaRequest._() : super();
  factory GetSchemaRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSchemaRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetSchemaRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'subpackageName')
    ..aOS(3, _omitFieldNames ? '' : 'subpackageVersion')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSchemaRequest clone() => GetSchemaRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSchemaRequest copyWith(void Function(GetSchemaRequest) updates) =>
      super.copyWith((message) => updates(message as GetSchemaRequest))
          as GetSchemaRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSchemaRequest create() => GetSchemaRequest._();
  GetSchemaRequest createEmptyInstance() => create();
  static $pb.PbList<GetSchemaRequest> createRepeated() =>
      $pb.PbList<GetSchemaRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSchemaRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSchemaRequest>(create);
  static GetSchemaRequest? _defaultInstance;

  /// the schema version.
  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  /// the name of the sub-package to lookup
  @$pb.TagNumber(2)
  $core.String get subpackageName => $_getSZ(1);
  @$pb.TagNumber(2)
  set subpackageName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSubpackageName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubpackageName() => clearField(2);

  /// the version of the sub-package to lookup
  @$pb.TagNumber(3)
  $core.String get subpackageVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set subpackageVersion($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSubpackageVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubpackageVersion() => clearField(3);
}

class GetSchemaResponse extends $pb.GeneratedMessage {
  factory GetSchemaResponse({
    $core.String? schema,
  }) {
    final $result = create();
    if (schema != null) {
      $result.schema = schema;
    }
    return $result;
  }
  GetSchemaResponse._() : super();
  factory GetSchemaResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSchemaResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetSchemaResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'schema')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSchemaResponse clone() => GetSchemaResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSchemaResponse copyWith(void Function(GetSchemaResponse) updates) =>
      super.copyWith((message) => updates(message as GetSchemaResponse))
          as GetSchemaResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSchemaResponse create() => GetSchemaResponse._();
  GetSchemaResponse createEmptyInstance() => create();
  static $pb.PbList<GetSchemaResponse> createRepeated() =>
      $pb.PbList<GetSchemaResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSchemaResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSchemaResponse>(create);
  static GetSchemaResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schema => $_getSZ(0);
  @$pb.TagNumber(1)
  set schema($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSchema() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchema() => clearField(1);
}

class ConfigureRequest extends $pb.GeneratedMessage {
  factory ConfigureRequest({
    $core.Map<$core.String, $core.String>? variables,
    $12.Struct? args,
    $core.bool? acceptSecrets,
    $core.bool? acceptResources,
    $core.bool? sendsOldInputs,
    $core.bool? sendsOldInputsToDelete,
  }) {
    final $result = create();
    if (variables != null) {
      $result.variables.addAll(variables);
    }
    if (args != null) {
      $result.args = args;
    }
    if (acceptSecrets != null) {
      $result.acceptSecrets = acceptSecrets;
    }
    if (acceptResources != null) {
      $result.acceptResources = acceptResources;
    }
    if (sendsOldInputs != null) {
      $result.sendsOldInputs = sendsOldInputs;
    }
    if (sendsOldInputsToDelete != null) {
      $result.sendsOldInputsToDelete = sendsOldInputsToDelete;
    }
    return $result;
  }
  ConfigureRequest._() : super();
  factory ConfigureRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConfigureRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfigureRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'variables',
        entryClassName: 'ConfigureRequest.VariablesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'args',
        subBuilder: $12.Struct.create)
    ..aOB(3, _omitFieldNames ? '' : 'acceptSecrets', protoName: 'acceptSecrets')
    ..aOB(4, _omitFieldNames ? '' : 'acceptResources',
        protoName: 'acceptResources')
    ..aOB(5, _omitFieldNames ? '' : 'sendsOldInputs')
    ..aOB(6, _omitFieldNames ? '' : 'sendsOldInputsToDelete')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConfigureRequest clone() => ConfigureRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConfigureRequest copyWith(void Function(ConfigureRequest) updates) =>
      super.copyWith((message) => updates(message as ConfigureRequest))
          as ConfigureRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigureRequest create() => ConfigureRequest._();
  ConfigureRequest createEmptyInstance() => create();
  static $pb.PbList<ConfigureRequest> createRepeated() =>
      $pb.PbList<ConfigureRequest>();
  @$core.pragma('dart2js:noInline')
  static ConfigureRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfigureRequest>(create);
  static ConfigureRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get variables => $_getMap(0);

  @$pb.TagNumber(2)
  $12.Struct get args => $_getN(1);
  @$pb.TagNumber(2)
  set args($12.Struct v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasArgs() => $_has(1);
  @$pb.TagNumber(2)
  void clearArgs() => clearField(2);
  @$pb.TagNumber(2)
  $12.Struct ensureArgs() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get acceptSecrets => $_getBF(2);
  @$pb.TagNumber(3)
  set acceptSecrets($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAcceptSecrets() => $_has(2);
  @$pb.TagNumber(3)
  void clearAcceptSecrets() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get acceptResources => $_getBF(3);
  @$pb.TagNumber(4)
  set acceptResources($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAcceptResources() => $_has(3);
  @$pb.TagNumber(4)
  void clearAcceptResources() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get sendsOldInputs => $_getBF(4);
  @$pb.TagNumber(5)
  set sendsOldInputs($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSendsOldInputs() => $_has(4);
  @$pb.TagNumber(5)
  void clearSendsOldInputs() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get sendsOldInputsToDelete => $_getBF(5);
  @$pb.TagNumber(6)
  set sendsOldInputsToDelete($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasSendsOldInputsToDelete() => $_has(5);
  @$pb.TagNumber(6)
  void clearSendsOldInputsToDelete() => clearField(6);
}

class ConfigureResponse extends $pb.GeneratedMessage {
  factory ConfigureResponse({
    $core.bool? acceptSecrets,
    $core.bool? supportsPreview,
    $core.bool? acceptResources,
    $core.bool? acceptOutputs,
  }) {
    final $result = create();
    if (acceptSecrets != null) {
      $result.acceptSecrets = acceptSecrets;
    }
    if (supportsPreview != null) {
      $result.supportsPreview = supportsPreview;
    }
    if (acceptResources != null) {
      $result.acceptResources = acceptResources;
    }
    if (acceptOutputs != null) {
      $result.acceptOutputs = acceptOutputs;
    }
    return $result;
  }
  ConfigureResponse._() : super();
  factory ConfigureResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConfigureResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfigureResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'acceptSecrets', protoName: 'acceptSecrets')
    ..aOB(2, _omitFieldNames ? '' : 'supportsPreview',
        protoName: 'supportsPreview')
    ..aOB(3, _omitFieldNames ? '' : 'acceptResources',
        protoName: 'acceptResources')
    ..aOB(4, _omitFieldNames ? '' : 'acceptOutputs', protoName: 'acceptOutputs')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConfigureResponse clone() => ConfigureResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConfigureResponse copyWith(void Function(ConfigureResponse) updates) =>
      super.copyWith((message) => updates(message as ConfigureResponse))
          as ConfigureResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigureResponse create() => ConfigureResponse._();
  ConfigureResponse createEmptyInstance() => create();
  static $pb.PbList<ConfigureResponse> createRepeated() =>
      $pb.PbList<ConfigureResponse>();
  @$core.pragma('dart2js:noInline')
  static ConfigureResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfigureResponse>(create);
  static ConfigureResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get acceptSecrets => $_getBF(0);
  @$pb.TagNumber(1)
  set acceptSecrets($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAcceptSecrets() => $_has(0);
  @$pb.TagNumber(1)
  void clearAcceptSecrets() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get supportsPreview => $_getBF(1);
  @$pb.TagNumber(2)
  set supportsPreview($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSupportsPreview() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupportsPreview() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get acceptResources => $_getBF(2);
  @$pb.TagNumber(3)
  set acceptResources($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAcceptResources() => $_has(2);
  @$pb.TagNumber(3)
  void clearAcceptResources() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get acceptOutputs => $_getBF(3);
  @$pb.TagNumber(4)
  set acceptOutputs($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAcceptOutputs() => $_has(3);
  @$pb.TagNumber(4)
  void clearAcceptOutputs() => clearField(4);
}

class ConfigureErrorMissingKeys_MissingKey extends $pb.GeneratedMessage {
  factory ConfigureErrorMissingKeys_MissingKey({
    $core.String? name,
    $core.String? description,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  ConfigureErrorMissingKeys_MissingKey._() : super();
  factory ConfigureErrorMissingKeys_MissingKey.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConfigureErrorMissingKeys_MissingKey.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfigureErrorMissingKeys.MissingKey',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConfigureErrorMissingKeys_MissingKey clone() =>
      ConfigureErrorMissingKeys_MissingKey()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConfigureErrorMissingKeys_MissingKey copyWith(
          void Function(ConfigureErrorMissingKeys_MissingKey) updates) =>
      super.copyWith((message) =>
              updates(message as ConfigureErrorMissingKeys_MissingKey))
          as ConfigureErrorMissingKeys_MissingKey;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigureErrorMissingKeys_MissingKey create() =>
      ConfigureErrorMissingKeys_MissingKey._();
  ConfigureErrorMissingKeys_MissingKey createEmptyInstance() => create();
  static $pb.PbList<ConfigureErrorMissingKeys_MissingKey> createRepeated() =>
      $pb.PbList<ConfigureErrorMissingKeys_MissingKey>();
  @$core.pragma('dart2js:noInline')
  static ConfigureErrorMissingKeys_MissingKey getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ConfigureErrorMissingKeys_MissingKey>(create);
  static ConfigureErrorMissingKeys_MissingKey? _defaultInstance;

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
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);
}

/// ConfigureErrorMissingKeys is sent as a Detail on an error returned from `ResourceProvider.Configure`.
class ConfigureErrorMissingKeys extends $pb.GeneratedMessage {
  factory ConfigureErrorMissingKeys({
    $core.Iterable<ConfigureErrorMissingKeys_MissingKey>? missingKeys,
  }) {
    final $result = create();
    if (missingKeys != null) {
      $result.missingKeys.addAll(missingKeys);
    }
    return $result;
  }
  ConfigureErrorMissingKeys._() : super();
  factory ConfigureErrorMissingKeys.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConfigureErrorMissingKeys.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfigureErrorMissingKeys',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pc<ConfigureErrorMissingKeys_MissingKey>(
        1, _omitFieldNames ? '' : 'missingKeys', $pb.PbFieldType.PM,
        protoName: 'missingKeys',
        subBuilder: ConfigureErrorMissingKeys_MissingKey.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConfigureErrorMissingKeys clone() =>
      ConfigureErrorMissingKeys()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConfigureErrorMissingKeys copyWith(
          void Function(ConfigureErrorMissingKeys) updates) =>
      super.copyWith((message) => updates(message as ConfigureErrorMissingKeys))
          as ConfigureErrorMissingKeys;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigureErrorMissingKeys create() => ConfigureErrorMissingKeys._();
  ConfigureErrorMissingKeys createEmptyInstance() => create();
  static $pb.PbList<ConfigureErrorMissingKeys> createRepeated() =>
      $pb.PbList<ConfigureErrorMissingKeys>();
  @$core.pragma('dart2js:noInline')
  static ConfigureErrorMissingKeys getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfigureErrorMissingKeys>(create);
  static ConfigureErrorMissingKeys? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ConfigureErrorMissingKeys_MissingKey> get missingKeys =>
      $_getList(0);
}

class InvokeRequest extends $pb.GeneratedMessage {
  factory InvokeRequest({
    $core.String? tok,
    $12.Struct? args,
  }) {
    final $result = create();
    if (tok != null) {
      $result.tok = tok;
    }
    if (args != null) {
      $result.args = args;
    }
    return $result;
  }
  InvokeRequest._() : super();
  factory InvokeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvokeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InvokeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tok')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'args',
        subBuilder: $12.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvokeRequest clone() => InvokeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvokeRequest copyWith(void Function(InvokeRequest) updates) =>
      super.copyWith((message) => updates(message as InvokeRequest))
          as InvokeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InvokeRequest create() => InvokeRequest._();
  InvokeRequest createEmptyInstance() => create();
  static $pb.PbList<InvokeRequest> createRepeated() =>
      $pb.PbList<InvokeRequest>();
  @$core.pragma('dart2js:noInline')
  static InvokeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvokeRequest>(create);
  static InvokeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tok => $_getSZ(0);
  @$pb.TagNumber(1)
  set tok($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTok() => $_has(0);
  @$pb.TagNumber(1)
  void clearTok() => clearField(1);

  @$pb.TagNumber(2)
  $12.Struct get args => $_getN(1);
  @$pb.TagNumber(2)
  set args($12.Struct v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasArgs() => $_has(1);
  @$pb.TagNumber(2)
  void clearArgs() => clearField(2);
  @$pb.TagNumber(2)
  $12.Struct ensureArgs() => $_ensure(1);
}

class InvokeResponse extends $pb.GeneratedMessage {
  factory InvokeResponse({
    $12.Struct? return_1,
    $core.Iterable<CheckFailure>? failures,
  }) {
    final $result = create();
    if (return_1 != null) {
      $result.return_1 = return_1;
    }
    if (failures != null) {
      $result.failures.addAll(failures);
    }
    return $result;
  }
  InvokeResponse._() : super();
  factory InvokeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvokeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InvokeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$12.Struct>(1, _omitFieldNames ? '' : 'return',
        subBuilder: $12.Struct.create)
    ..pc<CheckFailure>(2, _omitFieldNames ? '' : 'failures', $pb.PbFieldType.PM,
        subBuilder: CheckFailure.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvokeResponse clone() => InvokeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvokeResponse copyWith(void Function(InvokeResponse) updates) =>
      super.copyWith((message) => updates(message as InvokeResponse))
          as InvokeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InvokeResponse create() => InvokeResponse._();
  InvokeResponse createEmptyInstance() => create();
  static $pb.PbList<InvokeResponse> createRepeated() =>
      $pb.PbList<InvokeResponse>();
  @$core.pragma('dart2js:noInline')
  static InvokeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvokeResponse>(create);
  static InvokeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $12.Struct get return_1 => $_getN(0);
  @$pb.TagNumber(1)
  set return_1($12.Struct v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReturn_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearReturn_1() => clearField(1);
  @$pb.TagNumber(1)
  $12.Struct ensureReturn_1() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<CheckFailure> get failures => $_getList(1);
}

/// ArgumentDependencies describes the resources that a particular argument depends on.
class CallRequest_ArgumentDependencies extends $pb.GeneratedMessage {
  factory CallRequest_ArgumentDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final $result = create();
    if (urns != null) {
      $result.urns.addAll(urns);
    }
    return $result;
  }
  CallRequest_ArgumentDependencies._() : super();
  factory CallRequest_ArgumentDependencies.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CallRequest_ArgumentDependencies.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CallRequest.ArgumentDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CallRequest_ArgumentDependencies clone() =>
      CallRequest_ArgumentDependencies()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CallRequest_ArgumentDependencies copyWith(
          void Function(CallRequest_ArgumentDependencies) updates) =>
      super.copyWith(
              (message) => updates(message as CallRequest_ArgumentDependencies))
          as CallRequest_ArgumentDependencies;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallRequest_ArgumentDependencies create() =>
      CallRequest_ArgumentDependencies._();
  CallRequest_ArgumentDependencies createEmptyInstance() => create();
  static $pb.PbList<CallRequest_ArgumentDependencies> createRepeated() =>
      $pb.PbList<CallRequest_ArgumentDependencies>();
  @$core.pragma('dart2js:noInline')
  static CallRequest_ArgumentDependencies getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallRequest_ArgumentDependencies>(
          create);
  static CallRequest_ArgumentDependencies? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get urns => $_getList(0);
}

class CallRequest extends $pb.GeneratedMessage {
  factory CallRequest({
    $core.String? tok,
    $12.Struct? args,
    $core.Map<$core.String, CallRequest_ArgumentDependencies>? argDependencies,
    $core.String? project,
    $core.String? stack,
    $core.Map<$core.String, $core.String>? config,
    $core.Iterable<$core.String>? configSecretKeys,
    $core.bool? dryRun,
    $core.int? parallel,
    $core.String? monitorEndpoint,
    $core.String? organization,
    $core.bool? acceptsOutputValues,
  }) {
    final $result = create();
    if (tok != null) {
      $result.tok = tok;
    }
    if (args != null) {
      $result.args = args;
    }
    if (argDependencies != null) {
      $result.argDependencies.addAll(argDependencies);
    }
    if (project != null) {
      $result.project = project;
    }
    if (stack != null) {
      $result.stack = stack;
    }
    if (config != null) {
      $result.config.addAll(config);
    }
    if (configSecretKeys != null) {
      $result.configSecretKeys.addAll(configSecretKeys);
    }
    if (dryRun != null) {
      $result.dryRun = dryRun;
    }
    if (parallel != null) {
      $result.parallel = parallel;
    }
    if (monitorEndpoint != null) {
      $result.monitorEndpoint = monitorEndpoint;
    }
    if (organization != null) {
      $result.organization = organization;
    }
    if (acceptsOutputValues != null) {
      $result.acceptsOutputValues = acceptsOutputValues;
    }
    return $result;
  }
  CallRequest._() : super();
  factory CallRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CallRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CallRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tok')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'args',
        subBuilder: $12.Struct.create)
    ..m<$core.String, CallRequest_ArgumentDependencies>(
        3, _omitFieldNames ? '' : 'argDependencies',
        protoName: 'argDependencies',
        entryClassName: 'CallRequest.ArgDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: CallRequest_ArgumentDependencies.create,
        valueDefaultOrMaker: CallRequest_ArgumentDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(6, _omitFieldNames ? '' : 'project')
    ..aOS(7, _omitFieldNames ? '' : 'stack')
    ..m<$core.String, $core.String>(8, _omitFieldNames ? '' : 'config',
        entryClassName: 'CallRequest.ConfigEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..pPS(9, _omitFieldNames ? '' : 'configSecretKeys',
        protoName: 'configSecretKeys')
    ..aOB(10, _omitFieldNames ? '' : 'dryRun', protoName: 'dryRun')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'parallel', $pb.PbFieldType.O3)
    ..aOS(12, _omitFieldNames ? '' : 'monitorEndpoint',
        protoName: 'monitorEndpoint')
    ..aOS(14, _omitFieldNames ? '' : 'organization')
    ..aOB(17, _omitFieldNames ? '' : 'acceptsOutputValues')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CallRequest clone() => CallRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CallRequest copyWith(void Function(CallRequest) updates) =>
      super.copyWith((message) => updates(message as CallRequest))
          as CallRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallRequest create() => CallRequest._();
  CallRequest createEmptyInstance() => create();
  static $pb.PbList<CallRequest> createRepeated() => $pb.PbList<CallRequest>();
  @$core.pragma('dart2js:noInline')
  static CallRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallRequest>(create);
  static CallRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tok => $_getSZ(0);
  @$pb.TagNumber(1)
  set tok($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTok() => $_has(0);
  @$pb.TagNumber(1)
  void clearTok() => clearField(1);

  @$pb.TagNumber(2)
  $12.Struct get args => $_getN(1);
  @$pb.TagNumber(2)
  set args($12.Struct v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasArgs() => $_has(1);
  @$pb.TagNumber(2)
  void clearArgs() => clearField(2);
  @$pb.TagNumber(2)
  $12.Struct ensureArgs() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, CallRequest_ArgumentDependencies>
      get argDependencies => $_getMap(2);

  @$pb.TagNumber(6)
  $core.String get project => $_getSZ(3);
  @$pb.TagNumber(6)
  set project($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasProject() => $_has(3);
  @$pb.TagNumber(6)
  void clearProject() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get stack => $_getSZ(4);
  @$pb.TagNumber(7)
  set stack($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasStack() => $_has(4);
  @$pb.TagNumber(7)
  void clearStack() => clearField(7);

  @$pb.TagNumber(8)
  $core.Map<$core.String, $core.String> get config => $_getMap(5);

  @$pb.TagNumber(9)
  $core.List<$core.String> get configSecretKeys => $_getList(6);

  @$pb.TagNumber(10)
  $core.bool get dryRun => $_getBF(7);
  @$pb.TagNumber(10)
  set dryRun($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasDryRun() => $_has(7);
  @$pb.TagNumber(10)
  void clearDryRun() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get parallel => $_getIZ(8);
  @$pb.TagNumber(11)
  set parallel($core.int v) {
    $_setSignedInt32(8, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasParallel() => $_has(8);
  @$pb.TagNumber(11)
  void clearParallel() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get monitorEndpoint => $_getSZ(9);
  @$pb.TagNumber(12)
  set monitorEndpoint($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasMonitorEndpoint() => $_has(9);
  @$pb.TagNumber(12)
  void clearMonitorEndpoint() => clearField(12);

  @$pb.TagNumber(14)
  $core.String get organization => $_getSZ(10);
  @$pb.TagNumber(14)
  set organization($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasOrganization() => $_has(10);
  @$pb.TagNumber(14)
  void clearOrganization() => clearField(14);

  @$pb.TagNumber(17)
  $core.bool get acceptsOutputValues => $_getBF(11);
  @$pb.TagNumber(17)
  set acceptsOutputValues($core.bool v) {
    $_setBool(11, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasAcceptsOutputValues() => $_has(11);
  @$pb.TagNumber(17)
  void clearAcceptsOutputValues() => clearField(17);
}

/// ReturnDependencies describes the resources that a particular return value depends on.
class CallResponse_ReturnDependencies extends $pb.GeneratedMessage {
  factory CallResponse_ReturnDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final $result = create();
    if (urns != null) {
      $result.urns.addAll(urns);
    }
    return $result;
  }
  CallResponse_ReturnDependencies._() : super();
  factory CallResponse_ReturnDependencies.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CallResponse_ReturnDependencies.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CallResponse.ReturnDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CallResponse_ReturnDependencies clone() =>
      CallResponse_ReturnDependencies()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CallResponse_ReturnDependencies copyWith(
          void Function(CallResponse_ReturnDependencies) updates) =>
      super.copyWith(
              (message) => updates(message as CallResponse_ReturnDependencies))
          as CallResponse_ReturnDependencies;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallResponse_ReturnDependencies create() =>
      CallResponse_ReturnDependencies._();
  CallResponse_ReturnDependencies createEmptyInstance() => create();
  static $pb.PbList<CallResponse_ReturnDependencies> createRepeated() =>
      $pb.PbList<CallResponse_ReturnDependencies>();
  @$core.pragma('dart2js:noInline')
  static CallResponse_ReturnDependencies getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallResponse_ReturnDependencies>(
          create);
  static CallResponse_ReturnDependencies? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get urns => $_getList(0);
}

class CallResponse extends $pb.GeneratedMessage {
  factory CallResponse({
    $12.Struct? return_1,
    $core.Map<$core.String, CallResponse_ReturnDependencies>?
        returnDependencies,
    $core.Iterable<CheckFailure>? failures,
  }) {
    final $result = create();
    if (return_1 != null) {
      $result.return_1 = return_1;
    }
    if (returnDependencies != null) {
      $result.returnDependencies.addAll(returnDependencies);
    }
    if (failures != null) {
      $result.failures.addAll(failures);
    }
    return $result;
  }
  CallResponse._() : super();
  factory CallResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CallResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CallResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$12.Struct>(1, _omitFieldNames ? '' : 'return',
        subBuilder: $12.Struct.create)
    ..m<$core.String, CallResponse_ReturnDependencies>(
        2, _omitFieldNames ? '' : 'returnDependencies',
        protoName: 'returnDependencies',
        entryClassName: 'CallResponse.ReturnDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: CallResponse_ReturnDependencies.create,
        valueDefaultOrMaker: CallResponse_ReturnDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..pc<CheckFailure>(3, _omitFieldNames ? '' : 'failures', $pb.PbFieldType.PM,
        subBuilder: CheckFailure.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CallResponse clone() => CallResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CallResponse copyWith(void Function(CallResponse) updates) =>
      super.copyWith((message) => updates(message as CallResponse))
          as CallResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallResponse create() => CallResponse._();
  CallResponse createEmptyInstance() => create();
  static $pb.PbList<CallResponse> createRepeated() =>
      $pb.PbList<CallResponse>();
  @$core.pragma('dart2js:noInline')
  static CallResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CallResponse>(create);
  static CallResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $12.Struct get return_1 => $_getN(0);
  @$pb.TagNumber(1)
  set return_1($12.Struct v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReturn_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearReturn_1() => clearField(1);
  @$pb.TagNumber(1)
  $12.Struct ensureReturn_1() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, CallResponse_ReturnDependencies>
      get returnDependencies => $_getMap(1);

  @$pb.TagNumber(3)
  $core.List<CheckFailure> get failures => $_getList(2);
}

class CheckRequest extends $pb.GeneratedMessage {
  factory CheckRequest({
    $core.String? urn,
    $12.Struct? olds,
    $12.Struct? news,
    $core.List<$core.int>? randomSeed,
  }) {
    final $result = create();
    if (urn != null) {
      $result.urn = urn;
    }
    if (olds != null) {
      $result.olds = olds;
    }
    if (news != null) {
      $result.news = news;
    }
    if (randomSeed != null) {
      $result.randomSeed = randomSeed;
    }
    return $result;
  }
  CheckRequest._() : super();
  factory CheckRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CheckRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CheckRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'olds',
        subBuilder: $12.Struct.create)
    ..aOM<$12.Struct>(3, _omitFieldNames ? '' : 'news',
        subBuilder: $12.Struct.create)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'randomSeed', $pb.PbFieldType.OY,
        protoName: 'randomSeed')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CheckRequest clone() => CheckRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CheckRequest copyWith(void Function(CheckRequest) updates) =>
      super.copyWith((message) => updates(message as CheckRequest))
          as CheckRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckRequest create() => CheckRequest._();
  CheckRequest createEmptyInstance() => create();
  static $pb.PbList<CheckRequest> createRepeated() =>
      $pb.PbList<CheckRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckRequest>(create);
  static CheckRequest? _defaultInstance;

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

  @$pb.TagNumber(2)
  $12.Struct get olds => $_getN(1);
  @$pb.TagNumber(2)
  set olds($12.Struct v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOlds() => $_has(1);
  @$pb.TagNumber(2)
  void clearOlds() => clearField(2);
  @$pb.TagNumber(2)
  $12.Struct ensureOlds() => $_ensure(1);

  ///  the new Pulumi inputs for this resource.
  ///
  ///  Note that if the user specifies the ignoreChanges resource option, the value of news passed
  ///  to the provider here may differ from the values written in the program source. It will be pre-processed by
  ///  replacing every ignoreChanges property by a matching value from the old inputs stored in the state.
  ///
  ///  See also: https://www.pulumi.com/docs/concepts/options/ignorechanges/
  @$pb.TagNumber(3)
  $12.Struct get news => $_getN(2);
  @$pb.TagNumber(3)
  set news($12.Struct v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNews() => $_has(2);
  @$pb.TagNumber(3)
  void clearNews() => clearField(3);
  @$pb.TagNumber(3)
  $12.Struct ensureNews() => $_ensure(2);

  @$pb.TagNumber(5)
  $core.List<$core.int> get randomSeed => $_getN(3);
  @$pb.TagNumber(5)
  set randomSeed($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasRandomSeed() => $_has(3);
  @$pb.TagNumber(5)
  void clearRandomSeed() => clearField(5);
}

class CheckResponse extends $pb.GeneratedMessage {
  factory CheckResponse({
    $12.Struct? inputs,
    $core.Iterable<CheckFailure>? failures,
  }) {
    final $result = create();
    if (inputs != null) {
      $result.inputs = inputs;
    }
    if (failures != null) {
      $result.failures.addAll(failures);
    }
    return $result;
  }
  CheckResponse._() : super();
  factory CheckResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CheckResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CheckResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$12.Struct>(1, _omitFieldNames ? '' : 'inputs',
        subBuilder: $12.Struct.create)
    ..pc<CheckFailure>(2, _omitFieldNames ? '' : 'failures', $pb.PbFieldType.PM,
        subBuilder: CheckFailure.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CheckResponse clone() => CheckResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CheckResponse copyWith(void Function(CheckResponse) updates) =>
      super.copyWith((message) => updates(message as CheckResponse))
          as CheckResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckResponse create() => CheckResponse._();
  CheckResponse createEmptyInstance() => create();
  static $pb.PbList<CheckResponse> createRepeated() =>
      $pb.PbList<CheckResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckResponse>(create);
  static CheckResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $12.Struct get inputs => $_getN(0);
  @$pb.TagNumber(1)
  set inputs($12.Struct v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInputs() => $_has(0);
  @$pb.TagNumber(1)
  void clearInputs() => clearField(1);
  @$pb.TagNumber(1)
  $12.Struct ensureInputs() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<CheckFailure> get failures => $_getList(1);
}

class CheckFailure extends $pb.GeneratedMessage {
  factory CheckFailure({
    $core.String? property,
    $core.String? reason,
  }) {
    final $result = create();
    if (property != null) {
      $result.property = property;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    return $result;
  }
  CheckFailure._() : super();
  factory CheckFailure.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CheckFailure.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CheckFailure',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'property')
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CheckFailure clone() => CheckFailure()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CheckFailure copyWith(void Function(CheckFailure) updates) =>
      super.copyWith((message) => updates(message as CheckFailure))
          as CheckFailure;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckFailure create() => CheckFailure._();
  CheckFailure createEmptyInstance() => create();
  static $pb.PbList<CheckFailure> createRepeated() =>
      $pb.PbList<CheckFailure>();
  @$core.pragma('dart2js:noInline')
  static CheckFailure getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckFailure>(create);
  static CheckFailure? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get property => $_getSZ(0);
  @$pb.TagNumber(1)
  set property($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProperty() => $_has(0);
  @$pb.TagNumber(1)
  void clearProperty() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => clearField(2);
}

class DiffRequest extends $pb.GeneratedMessage {
  factory DiffRequest({
    $core.String? id,
    $core.String? urn,
    $12.Struct? olds,
    $12.Struct? news,
    $core.Iterable<$core.String>? ignoreChanges,
    $12.Struct? oldInputs,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (urn != null) {
      $result.urn = urn;
    }
    if (olds != null) {
      $result.olds = olds;
    }
    if (news != null) {
      $result.news = news;
    }
    if (ignoreChanges != null) {
      $result.ignoreChanges.addAll(ignoreChanges);
    }
    if (oldInputs != null) {
      $result.oldInputs = oldInputs;
    }
    return $result;
  }
  DiffRequest._() : super();
  factory DiffRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DiffRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DiffRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'urn')
    ..aOM<$12.Struct>(3, _omitFieldNames ? '' : 'olds',
        subBuilder: $12.Struct.create)
    ..aOM<$12.Struct>(4, _omitFieldNames ? '' : 'news',
        subBuilder: $12.Struct.create)
    ..pPS(5, _omitFieldNames ? '' : 'ignoreChanges', protoName: 'ignoreChanges')
    ..aOM<$12.Struct>(6, _omitFieldNames ? '' : 'oldInputs',
        subBuilder: $12.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DiffRequest clone() => DiffRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DiffRequest copyWith(void Function(DiffRequest) updates) =>
      super.copyWith((message) => updates(message as DiffRequest))
          as DiffRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DiffRequest create() => DiffRequest._();
  DiffRequest createEmptyInstance() => create();
  static $pb.PbList<DiffRequest> createRepeated() => $pb.PbList<DiffRequest>();
  @$core.pragma('dart2js:noInline')
  static DiffRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DiffRequest>(create);
  static DiffRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get urn => $_getSZ(1);
  @$pb.TagNumber(2)
  set urn($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUrn() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrn() => clearField(2);

  @$pb.TagNumber(3)
  $12.Struct get olds => $_getN(2);
  @$pb.TagNumber(3)
  set olds($12.Struct v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOlds() => $_has(2);
  @$pb.TagNumber(3)
  void clearOlds() => clearField(3);
  @$pb.TagNumber(3)
  $12.Struct ensureOlds() => $_ensure(2);

  /// the new input values of resource to diff, copied from CheckResponse.inputs.
  @$pb.TagNumber(4)
  $12.Struct get news => $_getN(3);
  @$pb.TagNumber(4)
  set news($12.Struct v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasNews() => $_has(3);
  @$pb.TagNumber(4)
  void clearNews() => clearField(4);
  @$pb.TagNumber(4)
  $12.Struct ensureNews() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get ignoreChanges => $_getList(4);

  @$pb.TagNumber(6)
  $12.Struct get oldInputs => $_getN(5);
  @$pb.TagNumber(6)
  set oldInputs($12.Struct v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasOldInputs() => $_has(5);
  @$pb.TagNumber(6)
  void clearOldInputs() => clearField(6);
  @$pb.TagNumber(6)
  $12.Struct ensureOldInputs() => $_ensure(5);
}

class PropertyDiff extends $pb.GeneratedMessage {
  factory PropertyDiff({
    PropertyDiff_Kind? kind,
    $core.bool? inputDiff,
  }) {
    final $result = create();
    if (kind != null) {
      $result.kind = kind;
    }
    if (inputDiff != null) {
      $result.inputDiff = inputDiff;
    }
    return $result;
  }
  PropertyDiff._() : super();
  factory PropertyDiff.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PropertyDiff.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PropertyDiff',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..e<PropertyDiff_Kind>(1, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker: PropertyDiff_Kind.ADD,
        valueOf: PropertyDiff_Kind.valueOf,
        enumValues: PropertyDiff_Kind.values)
    ..aOB(2, _omitFieldNames ? '' : 'inputDiff', protoName: 'inputDiff')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PropertyDiff clone() => PropertyDiff()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PropertyDiff copyWith(void Function(PropertyDiff) updates) =>
      super.copyWith((message) => updates(message as PropertyDiff))
          as PropertyDiff;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyDiff create() => PropertyDiff._();
  PropertyDiff createEmptyInstance() => create();
  static $pb.PbList<PropertyDiff> createRepeated() =>
      $pb.PbList<PropertyDiff>();
  @$core.pragma('dart2js:noInline')
  static PropertyDiff getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PropertyDiff>(create);
  static PropertyDiff? _defaultInstance;

  @$pb.TagNumber(1)
  PropertyDiff_Kind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind(PropertyDiff_Kind v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get inputDiff => $_getBF(1);
  @$pb.TagNumber(2)
  set inputDiff($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInputDiff() => $_has(1);
  @$pb.TagNumber(2)
  void clearInputDiff() => clearField(2);
}

class DiffResponse extends $pb.GeneratedMessage {
  factory DiffResponse({
    $core.Iterable<$core.String>? replaces,
    $core.Iterable<$core.String>? stables,
    $core.bool? deleteBeforeReplace,
    DiffResponse_DiffChanges? changes,
    $core.Iterable<$core.String>? diffs,
    $core.Map<$core.String, PropertyDiff>? detailedDiff,
    $core.bool? hasDetailedDiff,
  }) {
    final $result = create();
    if (replaces != null) {
      $result.replaces.addAll(replaces);
    }
    if (stables != null) {
      $result.stables.addAll(stables);
    }
    if (deleteBeforeReplace != null) {
      $result.deleteBeforeReplace = deleteBeforeReplace;
    }
    if (changes != null) {
      $result.changes = changes;
    }
    if (diffs != null) {
      $result.diffs.addAll(diffs);
    }
    if (detailedDiff != null) {
      $result.detailedDiff.addAll(detailedDiff);
    }
    if (hasDetailedDiff != null) {
      $result.hasDetailedDiff = hasDetailedDiff;
    }
    return $result;
  }
  DiffResponse._() : super();
  factory DiffResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DiffResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DiffResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'replaces')
    ..pPS(2, _omitFieldNames ? '' : 'stables')
    ..aOB(3, _omitFieldNames ? '' : 'deleteBeforeReplace',
        protoName: 'deleteBeforeReplace')
    ..e<DiffResponse_DiffChanges>(
        4, _omitFieldNames ? '' : 'changes', $pb.PbFieldType.OE,
        defaultOrMaker: DiffResponse_DiffChanges.DIFF_UNKNOWN,
        valueOf: DiffResponse_DiffChanges.valueOf,
        enumValues: DiffResponse_DiffChanges.values)
    ..pPS(5, _omitFieldNames ? '' : 'diffs')
    ..m<$core.String, PropertyDiff>(6, _omitFieldNames ? '' : 'detailedDiff',
        protoName: 'detailedDiff',
        entryClassName: 'DiffResponse.DetailedDiffEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: PropertyDiff.create,
        valueDefaultOrMaker: PropertyDiff.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOB(7, _omitFieldNames ? '' : 'hasDetailedDiff',
        protoName: 'hasDetailedDiff')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DiffResponse clone() => DiffResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DiffResponse copyWith(void Function(DiffResponse) updates) =>
      super.copyWith((message) => updates(message as DiffResponse))
          as DiffResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DiffResponse create() => DiffResponse._();
  DiffResponse createEmptyInstance() => create();
  static $pb.PbList<DiffResponse> createRepeated() =>
      $pb.PbList<DiffResponse>();
  @$core.pragma('dart2js:noInline')
  static DiffResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DiffResponse>(create);
  static DiffResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get replaces => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get stables => $_getList(1);

  @$pb.TagNumber(3)
  $core.bool get deleteBeforeReplace => $_getBF(2);
  @$pb.TagNumber(3)
  set deleteBeforeReplace($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDeleteBeforeReplace() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeleteBeforeReplace() => clearField(3);

  @$pb.TagNumber(4)
  DiffResponse_DiffChanges get changes => $_getN(3);
  @$pb.TagNumber(4)
  set changes(DiffResponse_DiffChanges v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasChanges() => $_has(3);
  @$pb.TagNumber(4)
  void clearChanges() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get diffs => $_getList(4);

  ///  detailedDiff is an optional field that contains map from each changed property to the type of the change.
  ///
  ///  The keys of this map are property paths. These paths are essentially Javascript property access expressions
  ///  in which all elements are literals, and obey the following EBNF-ish grammar:
  ///
  ///    propertyName := [a-zA-Z_$] { [a-zA-Z0-9_$] }
  ///    quotedPropertyName := '"' ( '\' '"' | [^"] ) { ( '\' '"' | [^"] ) } '"'
  ///    arrayIndex := { [0-9] }
  ///
  ///    propertyIndex := '[' ( quotedPropertyName | arrayIndex ) ']'
  ///    rootProperty := ( propertyName | propertyIndex )
  ///    propertyAccessor := ( ( '.' propertyName ) |  propertyIndex )
  ///    path := rootProperty { propertyAccessor }
  ///
  ///  Examples of valid keys:
  ///  - root
  ///  - root.nested
  ///  - root["nested"]
  ///  - root.double.nest
  ///  - root["double"].nest
  ///  - root["double"]["nest"]
  ///  - root.array[0]
  ///  - root.array[100]
  ///  - root.array[0].nested
  ///  - root.array[0][1].nested
  ///  - root.nested.array[0].double[1]
  ///  - root["key with \"escaped\" quotes"]
  ///  - root["key with a ."]
  ///  - ["root key with \"escaped\" quotes"].nested
  ///  - ["root key with a ."][100]
  @$pb.TagNumber(6)
  $core.Map<$core.String, PropertyDiff> get detailedDiff => $_getMap(5);

  @$pb.TagNumber(7)
  $core.bool get hasDetailedDiff => $_getBF(6);
  @$pb.TagNumber(7)
  set hasDetailedDiff($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasHasDetailedDiff() => $_has(6);
  @$pb.TagNumber(7)
  void clearHasDetailedDiff() => clearField(7);
}

class CreateRequest extends $pb.GeneratedMessage {
  factory CreateRequest({
    $core.String? urn,
    $12.Struct? properties,
    $core.double? timeout,
    $core.bool? preview,
  }) {
    final $result = create();
    if (urn != null) {
      $result.urn = urn;
    }
    if (properties != null) {
      $result.properties = properties;
    }
    if (timeout != null) {
      $result.timeout = timeout;
    }
    if (preview != null) {
      $result.preview = preview;
    }
    return $result;
  }
  CreateRequest._() : super();
  factory CreateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'timeout', $pb.PbFieldType.OD)
    ..aOB(4, _omitFieldNames ? '' : 'preview')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateRequest clone() => CreateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateRequest copyWith(void Function(CreateRequest) updates) =>
      super.copyWith((message) => updates(message as CreateRequest))
          as CreateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRequest create() => CreateRequest._();
  CreateRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRequest> createRepeated() =>
      $pb.PbList<CreateRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateRequest>(create);
  static CreateRequest? _defaultInstance;

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

  @$pb.TagNumber(2)
  $12.Struct get properties => $_getN(1);
  @$pb.TagNumber(2)
  set properties($12.Struct v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProperties() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperties() => clearField(2);
  @$pb.TagNumber(2)
  $12.Struct ensureProperties() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get timeout => $_getN(2);
  @$pb.TagNumber(3)
  set timeout($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTimeout() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimeout() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get preview => $_getBF(3);
  @$pb.TagNumber(4)
  set preview($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPreview() => $_has(3);
  @$pb.TagNumber(4)
  void clearPreview() => clearField(4);
}

class CreateResponse extends $pb.GeneratedMessage {
  factory CreateResponse({
    $core.String? id,
    $12.Struct? properties,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (properties != null) {
      $result.properties = properties;
    }
    return $result;
  }
  CreateResponse._() : super();
  factory CreateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateResponse clone() => CreateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateResponse copyWith(void Function(CreateResponse) updates) =>
      super.copyWith((message) => updates(message as CreateResponse))
          as CreateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateResponse create() => CreateResponse._();
  CreateResponse createEmptyInstance() => create();
  static $pb.PbList<CreateResponse> createRepeated() =>
      $pb.PbList<CreateResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateResponse>(create);
  static CreateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $12.Struct get properties => $_getN(1);
  @$pb.TagNumber(2)
  set properties($12.Struct v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProperties() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperties() => clearField(2);
  @$pb.TagNumber(2)
  $12.Struct ensureProperties() => $_ensure(1);
}

class ReadRequest extends $pb.GeneratedMessage {
  factory ReadRequest({
    $core.String? id,
    $core.String? urn,
    $12.Struct? properties,
    $12.Struct? inputs,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (urn != null) {
      $result.urn = urn;
    }
    if (properties != null) {
      $result.properties = properties;
    }
    if (inputs != null) {
      $result.inputs = inputs;
    }
    return $result;
  }
  ReadRequest._() : super();
  factory ReadRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'urn')
    ..aOM<$12.Struct>(3, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..aOM<$12.Struct>(4, _omitFieldNames ? '' : 'inputs',
        subBuilder: $12.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReadRequest clone() => ReadRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReadRequest copyWith(void Function(ReadRequest) updates) =>
      super.copyWith((message) => updates(message as ReadRequest))
          as ReadRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadRequest create() => ReadRequest._();
  ReadRequest createEmptyInstance() => create();
  static $pb.PbList<ReadRequest> createRepeated() => $pb.PbList<ReadRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadRequest>(create);
  static ReadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get urn => $_getSZ(1);
  @$pb.TagNumber(2)
  set urn($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUrn() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrn() => clearField(2);

  @$pb.TagNumber(3)
  $12.Struct get properties => $_getN(2);
  @$pb.TagNumber(3)
  set properties($12.Struct v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasProperties() => $_has(2);
  @$pb.TagNumber(3)
  void clearProperties() => clearField(3);
  @$pb.TagNumber(3)
  $12.Struct ensureProperties() => $_ensure(2);

  @$pb.TagNumber(4)
  $12.Struct get inputs => $_getN(3);
  @$pb.TagNumber(4)
  set inputs($12.Struct v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasInputs() => $_has(3);
  @$pb.TagNumber(4)
  void clearInputs() => clearField(4);
  @$pb.TagNumber(4)
  $12.Struct ensureInputs() => $_ensure(3);
}

class ReadResponse extends $pb.GeneratedMessage {
  factory ReadResponse({
    $core.String? id,
    $12.Struct? properties,
    $12.Struct? inputs,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (properties != null) {
      $result.properties = properties;
    }
    if (inputs != null) {
      $result.inputs = inputs;
    }
    return $result;
  }
  ReadResponse._() : super();
  factory ReadResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..aOM<$12.Struct>(3, _omitFieldNames ? '' : 'inputs',
        subBuilder: $12.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReadResponse clone() => ReadResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReadResponse copyWith(void Function(ReadResponse) updates) =>
      super.copyWith((message) => updates(message as ReadResponse))
          as ReadResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadResponse create() => ReadResponse._();
  ReadResponse createEmptyInstance() => create();
  static $pb.PbList<ReadResponse> createRepeated() =>
      $pb.PbList<ReadResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadResponse>(create);
  static ReadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $12.Struct get properties => $_getN(1);
  @$pb.TagNumber(2)
  set properties($12.Struct v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProperties() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperties() => clearField(2);
  @$pb.TagNumber(2)
  $12.Struct ensureProperties() => $_ensure(1);

  @$pb.TagNumber(3)
  $12.Struct get inputs => $_getN(2);
  @$pb.TagNumber(3)
  set inputs($12.Struct v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasInputs() => $_has(2);
  @$pb.TagNumber(3)
  void clearInputs() => clearField(3);
  @$pb.TagNumber(3)
  $12.Struct ensureInputs() => $_ensure(2);
}

class UpdateRequest extends $pb.GeneratedMessage {
  factory UpdateRequest({
    $core.String? id,
    $core.String? urn,
    $12.Struct? olds,
    $12.Struct? news,
    $core.double? timeout,
    $core.Iterable<$core.String>? ignoreChanges,
    $core.bool? preview,
    $12.Struct? oldInputs,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (urn != null) {
      $result.urn = urn;
    }
    if (olds != null) {
      $result.olds = olds;
    }
    if (news != null) {
      $result.news = news;
    }
    if (timeout != null) {
      $result.timeout = timeout;
    }
    if (ignoreChanges != null) {
      $result.ignoreChanges.addAll(ignoreChanges);
    }
    if (preview != null) {
      $result.preview = preview;
    }
    if (oldInputs != null) {
      $result.oldInputs = oldInputs;
    }
    return $result;
  }
  UpdateRequest._() : super();
  factory UpdateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'urn')
    ..aOM<$12.Struct>(3, _omitFieldNames ? '' : 'olds',
        subBuilder: $12.Struct.create)
    ..aOM<$12.Struct>(4, _omitFieldNames ? '' : 'news',
        subBuilder: $12.Struct.create)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'timeout', $pb.PbFieldType.OD)
    ..pPS(6, _omitFieldNames ? '' : 'ignoreChanges', protoName: 'ignoreChanges')
    ..aOB(7, _omitFieldNames ? '' : 'preview')
    ..aOM<$12.Struct>(8, _omitFieldNames ? '' : 'oldInputs',
        subBuilder: $12.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateRequest clone() => UpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateRequest copyWith(void Function(UpdateRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateRequest))
          as UpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRequest create() => UpdateRequest._();
  UpdateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRequest> createRepeated() =>
      $pb.PbList<UpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateRequest>(create);
  static UpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get urn => $_getSZ(1);
  @$pb.TagNumber(2)
  set urn($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUrn() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrn() => clearField(2);

  @$pb.TagNumber(3)
  $12.Struct get olds => $_getN(2);
  @$pb.TagNumber(3)
  set olds($12.Struct v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOlds() => $_has(2);
  @$pb.TagNumber(3)
  void clearOlds() => clearField(3);
  @$pb.TagNumber(3)
  $12.Struct ensureOlds() => $_ensure(2);

  /// the new values of provider inputs for the resource to update, copied from CheckResponse.inputs.
  @$pb.TagNumber(4)
  $12.Struct get news => $_getN(3);
  @$pb.TagNumber(4)
  set news($12.Struct v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasNews() => $_has(3);
  @$pb.TagNumber(4)
  void clearNews() => clearField(4);
  @$pb.TagNumber(4)
  $12.Struct ensureNews() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.double get timeout => $_getN(4);
  @$pb.TagNumber(5)
  set timeout($core.double v) {
    $_setDouble(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTimeout() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimeout() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get ignoreChanges => $_getList(5);

  @$pb.TagNumber(7)
  $core.bool get preview => $_getBF(6);
  @$pb.TagNumber(7)
  set preview($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasPreview() => $_has(6);
  @$pb.TagNumber(7)
  void clearPreview() => clearField(7);

  @$pb.TagNumber(8)
  $12.Struct get oldInputs => $_getN(7);
  @$pb.TagNumber(8)
  set oldInputs($12.Struct v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasOldInputs() => $_has(7);
  @$pb.TagNumber(8)
  void clearOldInputs() => clearField(8);
  @$pb.TagNumber(8)
  $12.Struct ensureOldInputs() => $_ensure(7);
}

class UpdateResponse extends $pb.GeneratedMessage {
  factory UpdateResponse({
    $12.Struct? properties,
  }) {
    final $result = create();
    if (properties != null) {
      $result.properties = properties;
    }
    return $result;
  }
  UpdateResponse._() : super();
  factory UpdateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$12.Struct>(1, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateResponse clone() => UpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateResponse copyWith(void Function(UpdateResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateResponse))
          as UpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateResponse create() => UpdateResponse._();
  UpdateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateResponse> createRepeated() =>
      $pb.PbList<UpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateResponse>(create);
  static UpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $12.Struct get properties => $_getN(0);
  @$pb.TagNumber(1)
  set properties($12.Struct v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProperties() => $_has(0);
  @$pb.TagNumber(1)
  void clearProperties() => clearField(1);
  @$pb.TagNumber(1)
  $12.Struct ensureProperties() => $_ensure(0);
}

class DeleteRequest extends $pb.GeneratedMessage {
  factory DeleteRequest({
    $core.String? id,
    $core.String? urn,
    $12.Struct? properties,
    $core.double? timeout,
    $12.Struct? oldInputs,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (urn != null) {
      $result.urn = urn;
    }
    if (properties != null) {
      $result.properties = properties;
    }
    if (timeout != null) {
      $result.timeout = timeout;
    }
    if (oldInputs != null) {
      $result.oldInputs = oldInputs;
    }
    return $result;
  }
  DeleteRequest._() : super();
  factory DeleteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'urn')
    ..aOM<$12.Struct>(3, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'timeout', $pb.PbFieldType.OD)
    ..aOM<$12.Struct>(5, _omitFieldNames ? '' : 'oldInputs',
        subBuilder: $12.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteRequest clone() => DeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteRequest copyWith(void Function(DeleteRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteRequest))
          as DeleteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRequest create() => DeleteRequest._();
  DeleteRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRequest> createRepeated() =>
      $pb.PbList<DeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteRequest>(create);
  static DeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get urn => $_getSZ(1);
  @$pb.TagNumber(2)
  set urn($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUrn() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrn() => clearField(2);

  @$pb.TagNumber(3)
  $12.Struct get properties => $_getN(2);
  @$pb.TagNumber(3)
  set properties($12.Struct v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasProperties() => $_has(2);
  @$pb.TagNumber(3)
  void clearProperties() => clearField(3);
  @$pb.TagNumber(3)
  $12.Struct ensureProperties() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.double get timeout => $_getN(3);
  @$pb.TagNumber(4)
  set timeout($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTimeout() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimeout() => clearField(4);

  @$pb.TagNumber(5)
  $12.Struct get oldInputs => $_getN(4);
  @$pb.TagNumber(5)
  set oldInputs($12.Struct v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOldInputs() => $_has(4);
  @$pb.TagNumber(5)
  void clearOldInputs() => clearField(5);
  @$pb.TagNumber(5)
  $12.Struct ensureOldInputs() => $_ensure(4);
}

/// PropertyDependencies describes the resources that a particular property depends on.
class ConstructRequest_PropertyDependencies extends $pb.GeneratedMessage {
  factory ConstructRequest_PropertyDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final $result = create();
    if (urns != null) {
      $result.urns.addAll(urns);
    }
    return $result;
  }
  ConstructRequest_PropertyDependencies._() : super();
  factory ConstructRequest_PropertyDependencies.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConstructRequest_PropertyDependencies.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConstructRequest.PropertyDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConstructRequest_PropertyDependencies clone() =>
      ConstructRequest_PropertyDependencies()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConstructRequest_PropertyDependencies copyWith(
          void Function(ConstructRequest_PropertyDependencies) updates) =>
      super.copyWith((message) =>
              updates(message as ConstructRequest_PropertyDependencies))
          as ConstructRequest_PropertyDependencies;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstructRequest_PropertyDependencies create() =>
      ConstructRequest_PropertyDependencies._();
  ConstructRequest_PropertyDependencies createEmptyInstance() => create();
  static $pb.PbList<ConstructRequest_PropertyDependencies> createRepeated() =>
      $pb.PbList<ConstructRequest_PropertyDependencies>();
  @$core.pragma('dart2js:noInline')
  static ConstructRequest_PropertyDependencies getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ConstructRequest_PropertyDependencies>(create);
  static ConstructRequest_PropertyDependencies? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get urns => $_getList(0);
}

///  CustomTimeouts specifies timeouts for resource provisioning operations.
///  Use it with the [Timeouts] option when creating new resources
///  to override default timeouts.
///
///  Each timeout is specified as a duration string such as,
///  "5ms" (5 milliseconds), "40s" (40 seconds),
///  and "1m30s" (1 minute, 30 seconds).
///
///  The following units are accepted.
///
///    - ns: nanoseconds
///    - us: microseconds
///    - µs: microseconds
///    - ms: milliseconds
///    - s: seconds
///    - m: minutes
///    - h: hours
class ConstructRequest_CustomTimeouts extends $pb.GeneratedMessage {
  factory ConstructRequest_CustomTimeouts({
    $core.String? create_1,
    $core.String? update,
    $core.String? delete,
  }) {
    final $result = create();
    if (create_1 != null) {
      $result.create_1 = create_1;
    }
    if (update != null) {
      $result.update = update;
    }
    if (delete != null) {
      $result.delete = delete;
    }
    return $result;
  }
  ConstructRequest_CustomTimeouts._() : super();
  factory ConstructRequest_CustomTimeouts.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConstructRequest_CustomTimeouts.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConstructRequest.CustomTimeouts',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'create')
    ..aOS(2, _omitFieldNames ? '' : 'update')
    ..aOS(3, _omitFieldNames ? '' : 'delete')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConstructRequest_CustomTimeouts clone() =>
      ConstructRequest_CustomTimeouts()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConstructRequest_CustomTimeouts copyWith(
          void Function(ConstructRequest_CustomTimeouts) updates) =>
      super.copyWith(
              (message) => updates(message as ConstructRequest_CustomTimeouts))
          as ConstructRequest_CustomTimeouts;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstructRequest_CustomTimeouts create() =>
      ConstructRequest_CustomTimeouts._();
  ConstructRequest_CustomTimeouts createEmptyInstance() => create();
  static $pb.PbList<ConstructRequest_CustomTimeouts> createRepeated() =>
      $pb.PbList<ConstructRequest_CustomTimeouts>();
  @$core.pragma('dart2js:noInline')
  static ConstructRequest_CustomTimeouts getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConstructRequest_CustomTimeouts>(
          create);
  static ConstructRequest_CustomTimeouts? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get create_1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set create_1($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCreate_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreate_1() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get update => $_getSZ(1);
  @$pb.TagNumber(2)
  set update($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdate() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get delete => $_getSZ(2);
  @$pb.TagNumber(3)
  set delete($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDelete() => $_has(2);
  @$pb.TagNumber(3)
  void clearDelete() => clearField(3);
}

class ConstructRequest extends $pb.GeneratedMessage {
  factory ConstructRequest({
    $core.String? project,
    $core.String? stack,
    $core.Map<$core.String, $core.String>? config,
    $core.bool? dryRun,
    $core.int? parallel,
    $core.String? monitorEndpoint,
    $core.String? type,
    $core.String? name,
    $core.String? parent,
    $12.Struct? inputs,
    $core.Map<$core.String, ConstructRequest_PropertyDependencies>?
        inputDependencies,
    $core.bool? protect,
    $core.Map<$core.String, $core.String>? providers,
    $core.Iterable<$core.String>? aliases,
    $core.Iterable<$core.String>? dependencies,
    $core.Iterable<$core.String>? configSecretKeys,
    $core.String? organization,
    $core.Iterable<$core.String>? additionalSecretOutputs,
    ConstructRequest_CustomTimeouts? customTimeouts,
    $core.String? deletedWith,
    $core.bool? deleteBeforeReplace,
    $core.Iterable<$core.String>? ignoreChanges,
    $core.Iterable<$core.String>? replaceOnChanges,
    $core.bool? retainOnDelete,
    $core.bool? acceptsOutputValues,
  }) {
    final $result = create();
    if (project != null) {
      $result.project = project;
    }
    if (stack != null) {
      $result.stack = stack;
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
    if (monitorEndpoint != null) {
      $result.monitorEndpoint = monitorEndpoint;
    }
    if (type != null) {
      $result.type = type;
    }
    if (name != null) {
      $result.name = name;
    }
    if (parent != null) {
      $result.parent = parent;
    }
    if (inputs != null) {
      $result.inputs = inputs;
    }
    if (inputDependencies != null) {
      $result.inputDependencies.addAll(inputDependencies);
    }
    if (protect != null) {
      $result.protect = protect;
    }
    if (providers != null) {
      $result.providers.addAll(providers);
    }
    if (aliases != null) {
      $result.aliases.addAll(aliases);
    }
    if (dependencies != null) {
      $result.dependencies.addAll(dependencies);
    }
    if (configSecretKeys != null) {
      $result.configSecretKeys.addAll(configSecretKeys);
    }
    if (organization != null) {
      $result.organization = organization;
    }
    if (additionalSecretOutputs != null) {
      $result.additionalSecretOutputs.addAll(additionalSecretOutputs);
    }
    if (customTimeouts != null) {
      $result.customTimeouts = customTimeouts;
    }
    if (deletedWith != null) {
      $result.deletedWith = deletedWith;
    }
    if (deleteBeforeReplace != null) {
      $result.deleteBeforeReplace = deleteBeforeReplace;
    }
    if (ignoreChanges != null) {
      $result.ignoreChanges.addAll(ignoreChanges);
    }
    if (replaceOnChanges != null) {
      $result.replaceOnChanges.addAll(replaceOnChanges);
    }
    if (retainOnDelete != null) {
      $result.retainOnDelete = retainOnDelete;
    }
    if (acceptsOutputValues != null) {
      $result.acceptsOutputValues = acceptsOutputValues;
    }
    return $result;
  }
  ConstructRequest._() : super();
  factory ConstructRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConstructRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConstructRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'project')
    ..aOS(2, _omitFieldNames ? '' : 'stack')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'config',
        entryClassName: 'ConstructRequest.ConfigEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOB(4, _omitFieldNames ? '' : 'dryRun', protoName: 'dryRun')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'parallel', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'monitorEndpoint',
        protoName: 'monitorEndpoint')
    ..aOS(7, _omitFieldNames ? '' : 'type')
    ..aOS(8, _omitFieldNames ? '' : 'name')
    ..aOS(9, _omitFieldNames ? '' : 'parent')
    ..aOM<$12.Struct>(10, _omitFieldNames ? '' : 'inputs',
        subBuilder: $12.Struct.create)
    ..m<$core.String, ConstructRequest_PropertyDependencies>(
        11, _omitFieldNames ? '' : 'inputDependencies',
        protoName: 'inputDependencies',
        entryClassName: 'ConstructRequest.InputDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: ConstructRequest_PropertyDependencies.create,
        valueDefaultOrMaker: ConstructRequest_PropertyDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOB(12, _omitFieldNames ? '' : 'protect')
    ..m<$core.String, $core.String>(13, _omitFieldNames ? '' : 'providers',
        entryClassName: 'ConstructRequest.ProvidersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..pPS(14, _omitFieldNames ? '' : 'aliases')
    ..pPS(15, _omitFieldNames ? '' : 'dependencies')
    ..pPS(16, _omitFieldNames ? '' : 'configSecretKeys',
        protoName: 'configSecretKeys')
    ..aOS(17, _omitFieldNames ? '' : 'organization')
    ..pPS(18, _omitFieldNames ? '' : 'additionalSecretOutputs',
        protoName: 'additionalSecretOutputs')
    ..aOM<ConstructRequest_CustomTimeouts>(
        19, _omitFieldNames ? '' : 'customTimeouts',
        protoName: 'customTimeouts',
        subBuilder: ConstructRequest_CustomTimeouts.create)
    ..aOS(20, _omitFieldNames ? '' : 'deletedWith', protoName: 'deletedWith')
    ..aOB(21, _omitFieldNames ? '' : 'deleteBeforeReplace',
        protoName: 'deleteBeforeReplace')
    ..pPS(22, _omitFieldNames ? '' : 'ignoreChanges',
        protoName: 'ignoreChanges')
    ..pPS(23, _omitFieldNames ? '' : 'replaceOnChanges',
        protoName: 'replaceOnChanges')
    ..aOB(24, _omitFieldNames ? '' : 'retainOnDelete',
        protoName: 'retainOnDelete')
    ..aOB(25, _omitFieldNames ? '' : 'acceptsOutputValues')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConstructRequest clone() => ConstructRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConstructRequest copyWith(void Function(ConstructRequest) updates) =>
      super.copyWith((message) => updates(message as ConstructRequest))
          as ConstructRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstructRequest create() => ConstructRequest._();
  ConstructRequest createEmptyInstance() => create();
  static $pb.PbList<ConstructRequest> createRepeated() =>
      $pb.PbList<ConstructRequest>();
  @$core.pragma('dart2js:noInline')
  static ConstructRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConstructRequest>(create);
  static ConstructRequest? _defaultInstance;

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
  $core.Map<$core.String, $core.String> get config => $_getMap(2);

  @$pb.TagNumber(4)
  $core.bool get dryRun => $_getBF(3);
  @$pb.TagNumber(4)
  set dryRun($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDryRun() => $_has(3);
  @$pb.TagNumber(4)
  void clearDryRun() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get parallel => $_getIZ(4);
  @$pb.TagNumber(5)
  set parallel($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasParallel() => $_has(4);
  @$pb.TagNumber(5)
  void clearParallel() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get monitorEndpoint => $_getSZ(5);
  @$pb.TagNumber(6)
  set monitorEndpoint($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasMonitorEndpoint() => $_has(5);
  @$pb.TagNumber(6)
  void clearMonitorEndpoint() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get type => $_getSZ(6);
  @$pb.TagNumber(7)
  set type($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get name => $_getSZ(7);
  @$pb.TagNumber(8)
  set name($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasName() => $_has(7);
  @$pb.TagNumber(8)
  void clearName() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get parent => $_getSZ(8);
  @$pb.TagNumber(9)
  set parent($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasParent() => $_has(8);
  @$pb.TagNumber(9)
  void clearParent() => clearField(9);

  @$pb.TagNumber(10)
  $12.Struct get inputs => $_getN(9);
  @$pb.TagNumber(10)
  set inputs($12.Struct v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasInputs() => $_has(9);
  @$pb.TagNumber(10)
  void clearInputs() => clearField(10);
  @$pb.TagNumber(10)
  $12.Struct ensureInputs() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.Map<$core.String, ConstructRequest_PropertyDependencies>
      get inputDependencies => $_getMap(10);

  /// Resource options:
  /// Do not change field IDs. Add new fields at the end.
  @$pb.TagNumber(12)
  $core.bool get protect => $_getBF(11);
  @$pb.TagNumber(12)
  set protect($core.bool v) {
    $_setBool(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasProtect() => $_has(11);
  @$pb.TagNumber(12)
  void clearProtect() => clearField(12);

  @$pb.TagNumber(13)
  $core.Map<$core.String, $core.String> get providers => $_getMap(12);

  @$pb.TagNumber(14)
  $core.List<$core.String> get aliases => $_getList(13);

  @$pb.TagNumber(15)
  $core.List<$core.String> get dependencies => $_getList(14);

  @$pb.TagNumber(16)
  $core.List<$core.String> get configSecretKeys => $_getList(15);

  @$pb.TagNumber(17)
  $core.String get organization => $_getSZ(16);
  @$pb.TagNumber(17)
  set organization($core.String v) {
    $_setString(16, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasOrganization() => $_has(16);
  @$pb.TagNumber(17)
  void clearOrganization() => clearField(17);

  @$pb.TagNumber(18)
  $core.List<$core.String> get additionalSecretOutputs => $_getList(17);

  @$pb.TagNumber(19)
  ConstructRequest_CustomTimeouts get customTimeouts => $_getN(18);
  @$pb.TagNumber(19)
  set customTimeouts(ConstructRequest_CustomTimeouts v) {
    setField(19, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasCustomTimeouts() => $_has(18);
  @$pb.TagNumber(19)
  void clearCustomTimeouts() => clearField(19);
  @$pb.TagNumber(19)
  ConstructRequest_CustomTimeouts ensureCustomTimeouts() => $_ensure(18);

  @$pb.TagNumber(20)
  $core.String get deletedWith => $_getSZ(19);
  @$pb.TagNumber(20)
  set deletedWith($core.String v) {
    $_setString(19, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasDeletedWith() => $_has(19);
  @$pb.TagNumber(20)
  void clearDeletedWith() => clearField(20);

  @$pb.TagNumber(21)
  $core.bool get deleteBeforeReplace => $_getBF(20);
  @$pb.TagNumber(21)
  set deleteBeforeReplace($core.bool v) {
    $_setBool(20, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasDeleteBeforeReplace() => $_has(20);
  @$pb.TagNumber(21)
  void clearDeleteBeforeReplace() => clearField(21);

  @$pb.TagNumber(22)
  $core.List<$core.String> get ignoreChanges => $_getList(21);

  @$pb.TagNumber(23)
  $core.List<$core.String> get replaceOnChanges => $_getList(22);

  @$pb.TagNumber(24)
  $core.bool get retainOnDelete => $_getBF(23);
  @$pb.TagNumber(24)
  set retainOnDelete($core.bool v) {
    $_setBool(23, v);
  }

  @$pb.TagNumber(24)
  $core.bool hasRetainOnDelete() => $_has(23);
  @$pb.TagNumber(24)
  void clearRetainOnDelete() => clearField(24);

  @$pb.TagNumber(25)
  $core.bool get acceptsOutputValues => $_getBF(24);
  @$pb.TagNumber(25)
  set acceptsOutputValues($core.bool v) {
    $_setBool(24, v);
  }

  @$pb.TagNumber(25)
  $core.bool hasAcceptsOutputValues() => $_has(24);
  @$pb.TagNumber(25)
  void clearAcceptsOutputValues() => clearField(25);
}

/// PropertyDependencies describes the resources that a particular property depends on.
class ConstructResponse_PropertyDependencies extends $pb.GeneratedMessage {
  factory ConstructResponse_PropertyDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final $result = create();
    if (urns != null) {
      $result.urns.addAll(urns);
    }
    return $result;
  }
  ConstructResponse_PropertyDependencies._() : super();
  factory ConstructResponse_PropertyDependencies.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConstructResponse_PropertyDependencies.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConstructResponse.PropertyDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConstructResponse_PropertyDependencies clone() =>
      ConstructResponse_PropertyDependencies()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConstructResponse_PropertyDependencies copyWith(
          void Function(ConstructResponse_PropertyDependencies) updates) =>
      super.copyWith((message) =>
              updates(message as ConstructResponse_PropertyDependencies))
          as ConstructResponse_PropertyDependencies;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstructResponse_PropertyDependencies create() =>
      ConstructResponse_PropertyDependencies._();
  ConstructResponse_PropertyDependencies createEmptyInstance() => create();
  static $pb.PbList<ConstructResponse_PropertyDependencies> createRepeated() =>
      $pb.PbList<ConstructResponse_PropertyDependencies>();
  @$core.pragma('dart2js:noInline')
  static ConstructResponse_PropertyDependencies getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ConstructResponse_PropertyDependencies>(create);
  static ConstructResponse_PropertyDependencies? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get urns => $_getList(0);
}

class ConstructResponse extends $pb.GeneratedMessage {
  factory ConstructResponse({
    $core.String? urn,
    $12.Struct? state,
    $core.Map<$core.String, ConstructResponse_PropertyDependencies>?
        stateDependencies,
  }) {
    final $result = create();
    if (urn != null) {
      $result.urn = urn;
    }
    if (state != null) {
      $result.state = state;
    }
    if (stateDependencies != null) {
      $result.stateDependencies.addAll(stateDependencies);
    }
    return $result;
  }
  ConstructResponse._() : super();
  factory ConstructResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConstructResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConstructResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'state',
        subBuilder: $12.Struct.create)
    ..m<$core.String, ConstructResponse_PropertyDependencies>(
        3, _omitFieldNames ? '' : 'stateDependencies',
        protoName: 'stateDependencies',
        entryClassName: 'ConstructResponse.StateDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: ConstructResponse_PropertyDependencies.create,
        valueDefaultOrMaker: ConstructResponse_PropertyDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConstructResponse clone() => ConstructResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConstructResponse copyWith(void Function(ConstructResponse) updates) =>
      super.copyWith((message) => updates(message as ConstructResponse))
          as ConstructResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstructResponse create() => ConstructResponse._();
  ConstructResponse createEmptyInstance() => create();
  static $pb.PbList<ConstructResponse> createRepeated() =>
      $pb.PbList<ConstructResponse>();
  @$core.pragma('dart2js:noInline')
  static ConstructResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConstructResponse>(create);
  static ConstructResponse? _defaultInstance;

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

  @$pb.TagNumber(2)
  $12.Struct get state => $_getN(1);
  @$pb.TagNumber(2)
  set state($12.Struct v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);
  @$pb.TagNumber(2)
  $12.Struct ensureState() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, ConstructResponse_PropertyDependencies>
      get stateDependencies => $_getMap(2);
}

/// ErrorResourceInitFailed is sent as a Detail `ResourceProvider.{Create, Update}` fail because a
/// resource was created successfully, but failed to initialize.
class ErrorResourceInitFailed extends $pb.GeneratedMessage {
  factory ErrorResourceInitFailed({
    $core.String? id,
    $12.Struct? properties,
    $core.Iterable<$core.String>? reasons,
    $12.Struct? inputs,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (properties != null) {
      $result.properties = properties;
    }
    if (reasons != null) {
      $result.reasons.addAll(reasons);
    }
    if (inputs != null) {
      $result.inputs = inputs;
    }
    return $result;
  }
  ErrorResourceInitFailed._() : super();
  factory ErrorResourceInitFailed.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ErrorResourceInitFailed.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ErrorResourceInitFailed',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..pPS(3, _omitFieldNames ? '' : 'reasons')
    ..aOM<$12.Struct>(4, _omitFieldNames ? '' : 'inputs',
        subBuilder: $12.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ErrorResourceInitFailed clone() =>
      ErrorResourceInitFailed()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ErrorResourceInitFailed copyWith(
          void Function(ErrorResourceInitFailed) updates) =>
      super.copyWith((message) => updates(message as ErrorResourceInitFailed))
          as ErrorResourceInitFailed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrorResourceInitFailed create() => ErrorResourceInitFailed._();
  ErrorResourceInitFailed createEmptyInstance() => create();
  static $pb.PbList<ErrorResourceInitFailed> createRepeated() =>
      $pb.PbList<ErrorResourceInitFailed>();
  @$core.pragma('dart2js:noInline')
  static ErrorResourceInitFailed getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ErrorResourceInitFailed>(create);
  static ErrorResourceInitFailed? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $12.Struct get properties => $_getN(1);
  @$pb.TagNumber(2)
  set properties($12.Struct v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProperties() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperties() => clearField(2);
  @$pb.TagNumber(2)
  $12.Struct ensureProperties() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get reasons => $_getList(2);

  @$pb.TagNumber(4)
  $12.Struct get inputs => $_getN(3);
  @$pb.TagNumber(4)
  set inputs($12.Struct v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasInputs() => $_has(3);
  @$pb.TagNumber(4)
  void clearInputs() => clearField(4);
  @$pb.TagNumber(4)
  $12.Struct ensureInputs() => $_ensure(3);
}

/// GetMappingRequest allows providers to return ecosystem specific information to allow the provider to be
/// converted from a source markup to Pulumi. It's expected that provider bridges that target a given ecosystem
/// (e.g. Terraform, Kubernetes) would also publish a conversion plugin to convert markup from that ecosystem
/// to Pulumi, using the bridged providers.
class GetMappingRequest extends $pb.GeneratedMessage {
  factory GetMappingRequest({
    $core.String? key,
    $core.String? provider,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (provider != null) {
      $result.provider = provider;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'provider')
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

  /// the conversion key for the mapping being requested.
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

  /// the optional provider key for the mapping being requested, if this is empty the provider should assume this
  /// request is from an old engine from before GetMappings and should return it's "primary" mapping. If this is set
  /// then the `provider` field in GetMappingResponse should be the same.
  @$pb.TagNumber(2)
  $core.String get provider => $_getSZ(1);
  @$pb.TagNumber(2)
  set provider($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProvider() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvider() => clearField(2);
}

/// GetMappingResponse returns convert plugin specific data for this provider. This will normally be human
/// readable JSON, but the engine doesn't mandate any form.
class GetMappingResponse extends $pb.GeneratedMessage {
  factory GetMappingResponse({
    $core.String? provider,
    $core.List<$core.int>? data,
  }) {
    final $result = create();
    if (provider != null) {
      $result.provider = provider;
    }
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'provider')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
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

  /// the provider key this is mapping for. For example the Pulumi provider "terraform-template" would return "template" for this.
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

  /// the conversion plugin specific data.
  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}

/// GetMappingsRequest allows providers to return ecosystem specific information without having to send back large data
/// blobs for provider mappings that the engine doesn't then need.
class GetMappingsRequest extends $pb.GeneratedMessage {
  factory GetMappingsRequest({
    $core.String? key,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  GetMappingsRequest._() : super();
  factory GetMappingsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMappingsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMappingsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMappingsRequest clone() => GetMappingsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMappingsRequest copyWith(void Function(GetMappingsRequest) updates) =>
      super.copyWith((message) => updates(message as GetMappingsRequest))
          as GetMappingsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMappingsRequest create() => GetMappingsRequest._();
  GetMappingsRequest createEmptyInstance() => create();
  static $pb.PbList<GetMappingsRequest> createRepeated() =>
      $pb.PbList<GetMappingsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMappingsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMappingsRequest>(create);
  static GetMappingsRequest? _defaultInstance;

  /// the conversion key for the mapping being requested.
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
}

/// GetMappingsRequest returns a list of providers that this provider can provide mapping information for.
class GetMappingsResponse extends $pb.GeneratedMessage {
  factory GetMappingsResponse({
    $core.Iterable<$core.String>? providers,
  }) {
    final $result = create();
    if (providers != null) {
      $result.providers.addAll(providers);
    }
    return $result;
  }
  GetMappingsResponse._() : super();
  factory GetMappingsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetMappingsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMappingsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'providers')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetMappingsResponse clone() => GetMappingsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetMappingsResponse copyWith(void Function(GetMappingsResponse) updates) =>
      super.copyWith((message) => updates(message as GetMappingsResponse))
          as GetMappingsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMappingsResponse create() => GetMappingsResponse._();
  GetMappingsResponse createEmptyInstance() => create();
  static $pb.PbList<GetMappingsResponse> createRepeated() =>
      $pb.PbList<GetMappingsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMappingsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMappingsResponse>(create);
  static GetMappingsResponse? _defaultInstance;

  /// the provider keys this provider can supply mappings for. For example the Pulumi provider "terraform-template"
  /// would return ["template"] for this.
  @$pb.TagNumber(1)
  $core.List<$core.String> get providers => $_getList(0);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
