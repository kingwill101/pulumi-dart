//
//  Generated code. Do not modify.
//  source: pulumi/resource.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/struct.pb.dart' as $12;
import 'alias.pb.dart' as $15;
import 'callback.pb.dart' as $3;
import 'resource.pbenum.dart';
import 'source.pb.dart' as $14;

export 'resource.pbenum.dart';

/// SupportsFeatureRequest allows a client to test if the resource monitor supports a certain feature, which it may use
/// to control the format or types of messages it sends.
class SupportsFeatureRequest extends $pb.GeneratedMessage {
  factory SupportsFeatureRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  SupportsFeatureRequest._() : super();
  factory SupportsFeatureRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SupportsFeatureRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SupportsFeatureRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SupportsFeatureRequest clone() =>
      SupportsFeatureRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SupportsFeatureRequest copyWith(
          void Function(SupportsFeatureRequest) updates) =>
      super.copyWith((message) => updates(message as SupportsFeatureRequest))
          as SupportsFeatureRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupportsFeatureRequest create() => SupportsFeatureRequest._();
  SupportsFeatureRequest createEmptyInstance() => create();
  static $pb.PbList<SupportsFeatureRequest> createRepeated() =>
      $pb.PbList<SupportsFeatureRequest>();
  @$core.pragma('dart2js:noInline')
  static SupportsFeatureRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SupportsFeatureRequest>(create);
  static SupportsFeatureRequest? _defaultInstance;

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
}

class SupportsFeatureResponse extends $pb.GeneratedMessage {
  factory SupportsFeatureResponse({
    $core.bool? hasSupport,
  }) {
    final $result = create();
    if (hasSupport != null) {
      $result.hasSupport = hasSupport;
    }
    return $result;
  }
  SupportsFeatureResponse._() : super();
  factory SupportsFeatureResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SupportsFeatureResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SupportsFeatureResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'hasSupport', protoName: 'hasSupport')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SupportsFeatureResponse clone() =>
      SupportsFeatureResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SupportsFeatureResponse copyWith(
          void Function(SupportsFeatureResponse) updates) =>
      super.copyWith((message) => updates(message as SupportsFeatureResponse))
          as SupportsFeatureResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupportsFeatureResponse create() => SupportsFeatureResponse._();
  SupportsFeatureResponse createEmptyInstance() => create();
  static $pb.PbList<SupportsFeatureResponse> createRepeated() =>
      $pb.PbList<SupportsFeatureResponse>();
  @$core.pragma('dart2js:noInline')
  static SupportsFeatureResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SupportsFeatureResponse>(create);
  static SupportsFeatureResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get hasSupport => $_getBF(0);
  @$pb.TagNumber(1)
  set hasSupport($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHasSupport() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasSupport() => clearField(1);
}

/// ReadResourceRequest contains enough information to uniquely qualify and read a resource's state.
class ReadResourceRequest extends $pb.GeneratedMessage {
  factory ReadResourceRequest({
    $core.String? id,
    $core.String? type,
    $core.String? name,
    $core.String? parent,
    $12.Struct? properties,
    $core.Iterable<$core.String>? dependencies,
    $core.String? provider,
    $core.String? version,
    $core.bool? acceptSecrets,
    $core.Iterable<$core.String>? additionalSecretOutputs,
    $core.bool? acceptResources,
    $core.String? pluginDownloadURL,
    $14.SourcePosition? sourcePosition,
    $core.Map<$core.String, $core.List<$core.int>>? pluginChecksums,
    $core.String? packageRef,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
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
    if (properties != null) {
      $result.properties = properties;
    }
    if (dependencies != null) {
      $result.dependencies.addAll(dependencies);
    }
    if (provider != null) {
      $result.provider = provider;
    }
    if (version != null) {
      $result.version = version;
    }
    if (acceptSecrets != null) {
      $result.acceptSecrets = acceptSecrets;
    }
    if (additionalSecretOutputs != null) {
      $result.additionalSecretOutputs.addAll(additionalSecretOutputs);
    }
    if (acceptResources != null) {
      $result.acceptResources = acceptResources;
    }
    if (pluginDownloadURL != null) {
      $result.pluginDownloadURL = pluginDownloadURL;
    }
    if (sourcePosition != null) {
      $result.sourcePosition = sourcePosition;
    }
    if (pluginChecksums != null) {
      $result.pluginChecksums.addAll(pluginChecksums);
    }
    if (packageRef != null) {
      $result.packageRef = packageRef;
    }
    return $result;
  }
  ReadResourceRequest._() : super();
  factory ReadResourceRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadResourceRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadResourceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'parent')
    ..aOM<$12.Struct>(5, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..pPS(6, _omitFieldNames ? '' : 'dependencies')
    ..aOS(7, _omitFieldNames ? '' : 'provider')
    ..aOS(8, _omitFieldNames ? '' : 'version')
    ..aOB(9, _omitFieldNames ? '' : 'acceptSecrets', protoName: 'acceptSecrets')
    ..pPS(10, _omitFieldNames ? '' : 'additionalSecretOutputs',
        protoName: 'additionalSecretOutputs')
    ..aOB(12, _omitFieldNames ? '' : 'acceptResources',
        protoName: 'acceptResources')
    ..aOS(13, _omitFieldNames ? '' : 'pluginDownloadURL',
        protoName: 'pluginDownloadURL')
    ..aOM<$14.SourcePosition>(14, _omitFieldNames ? '' : 'sourcePosition',
        protoName: 'sourcePosition', subBuilder: $14.SourcePosition.create)
    ..m<$core.String, $core.List<$core.int>>(
        15, _omitFieldNames ? '' : 'pluginChecksums',
        protoName: 'pluginChecksums',
        entryClassName: 'ReadResourceRequest.PluginChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(16, _omitFieldNames ? '' : 'packageRef', protoName: 'packageRef')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReadResourceRequest clone() => ReadResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReadResourceRequest copyWith(void Function(ReadResourceRequest) updates) =>
      super.copyWith((message) => updates(message as ReadResourceRequest))
          as ReadResourceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadResourceRequest create() => ReadResourceRequest._();
  ReadResourceRequest createEmptyInstance() => create();
  static $pb.PbList<ReadResourceRequest> createRepeated() =>
      $pb.PbList<ReadResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadResourceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadResourceRequest>(create);
  static ReadResourceRequest? _defaultInstance;

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
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get parent => $_getSZ(3);
  @$pb.TagNumber(4)
  set parent($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasParent() => $_has(3);
  @$pb.TagNumber(4)
  void clearParent() => clearField(4);

  @$pb.TagNumber(5)
  $12.Struct get properties => $_getN(4);
  @$pb.TagNumber(5)
  set properties($12.Struct v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasProperties() => $_has(4);
  @$pb.TagNumber(5)
  void clearProperties() => clearField(5);
  @$pb.TagNumber(5)
  $12.Struct ensureProperties() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get dependencies => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get provider => $_getSZ(6);
  @$pb.TagNumber(7)
  set provider($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasProvider() => $_has(6);
  @$pb.TagNumber(7)
  void clearProvider() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get version => $_getSZ(7);
  @$pb.TagNumber(8)
  set version($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasVersion() => $_has(7);
  @$pb.TagNumber(8)
  void clearVersion() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get acceptSecrets => $_getBF(8);
  @$pb.TagNumber(9)
  set acceptSecrets($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasAcceptSecrets() => $_has(8);
  @$pb.TagNumber(9)
  void clearAcceptSecrets() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.String> get additionalSecretOutputs => $_getList(9);

  @$pb.TagNumber(12)
  $core.bool get acceptResources => $_getBF(10);
  @$pb.TagNumber(12)
  set acceptResources($core.bool v) {
    $_setBool(10, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasAcceptResources() => $_has(10);
  @$pb.TagNumber(12)
  void clearAcceptResources() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get pluginDownloadURL => $_getSZ(11);
  @$pb.TagNumber(13)
  set pluginDownloadURL($core.String v) {
    $_setString(11, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasPluginDownloadURL() => $_has(11);
  @$pb.TagNumber(13)
  void clearPluginDownloadURL() => clearField(13);

  @$pb.TagNumber(14)
  $14.SourcePosition get sourcePosition => $_getN(12);
  @$pb.TagNumber(14)
  set sourcePosition($14.SourcePosition v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasSourcePosition() => $_has(12);
  @$pb.TagNumber(14)
  void clearSourcePosition() => clearField(14);
  @$pb.TagNumber(14)
  $14.SourcePosition ensureSourcePosition() => $_ensure(12);

  @$pb.TagNumber(15)
  $core.Map<$core.String, $core.List<$core.int>> get pluginChecksums =>
      $_getMap(13);

  @$pb.TagNumber(16)
  $core.String get packageRef => $_getSZ(14);
  @$pb.TagNumber(16)
  set packageRef($core.String v) {
    $_setString(14, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasPackageRef() => $_has(14);
  @$pb.TagNumber(16)
  void clearPackageRef() => clearField(16);
}

/// ReadResourceResponse contains the result of reading a resource's state.
class ReadResourceResponse extends $pb.GeneratedMessage {
  factory ReadResourceResponse({
    $core.String? urn,
    $12.Struct? properties,
  }) {
    final $result = create();
    if (urn != null) {
      $result.urn = urn;
    }
    if (properties != null) {
      $result.properties = properties;
    }
    return $result;
  }
  ReadResourceResponse._() : super();
  factory ReadResourceResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReadResourceResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadResourceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReadResourceResponse clone() =>
      ReadResourceResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReadResourceResponse copyWith(void Function(ReadResourceResponse) updates) =>
      super.copyWith((message) => updates(message as ReadResourceResponse))
          as ReadResourceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadResourceResponse create() => ReadResourceResponse._();
  ReadResourceResponse createEmptyInstance() => create();
  static $pb.PbList<ReadResourceResponse> createRepeated() =>
      $pb.PbList<ReadResourceResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadResourceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadResourceResponse>(create);
  static ReadResourceResponse? _defaultInstance;

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
}

/// PropertyDependencies describes the resources that a particular property depends on.
class RegisterResourceRequest_PropertyDependencies
    extends $pb.GeneratedMessage {
  factory RegisterResourceRequest_PropertyDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final $result = create();
    if (urns != null) {
      $result.urns.addAll(urns);
    }
    return $result;
  }
  RegisterResourceRequest_PropertyDependencies._() : super();
  factory RegisterResourceRequest_PropertyDependencies.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisterResourceRequest_PropertyDependencies.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResourceRequest.PropertyDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisterResourceRequest_PropertyDependencies clone() =>
      RegisterResourceRequest_PropertyDependencies()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisterResourceRequest_PropertyDependencies copyWith(
          void Function(RegisterResourceRequest_PropertyDependencies)
              updates) =>
      super.copyWith((message) =>
              updates(message as RegisterResourceRequest_PropertyDependencies))
          as RegisterResourceRequest_PropertyDependencies;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResourceRequest_PropertyDependencies create() =>
      RegisterResourceRequest_PropertyDependencies._();
  RegisterResourceRequest_PropertyDependencies createEmptyInstance() =>
      create();
  static $pb.PbList<RegisterResourceRequest_PropertyDependencies>
      createRepeated() =>
          $pb.PbList<RegisterResourceRequest_PropertyDependencies>();
  @$core.pragma('dart2js:noInline')
  static RegisterResourceRequest_PropertyDependencies getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RegisterResourceRequest_PropertyDependencies>(create);
  static RegisterResourceRequest_PropertyDependencies? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get urns => $_getList(0);
}

/// CustomTimeouts allows a user to be able to create a set of custom timeout parameters.
class RegisterResourceRequest_CustomTimeouts extends $pb.GeneratedMessage {
  factory RegisterResourceRequest_CustomTimeouts({
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
  RegisterResourceRequest_CustomTimeouts._() : super();
  factory RegisterResourceRequest_CustomTimeouts.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisterResourceRequest_CustomTimeouts.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResourceRequest.CustomTimeouts',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'create')
    ..aOS(2, _omitFieldNames ? '' : 'update')
    ..aOS(3, _omitFieldNames ? '' : 'delete')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisterResourceRequest_CustomTimeouts clone() =>
      RegisterResourceRequest_CustomTimeouts()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisterResourceRequest_CustomTimeouts copyWith(
          void Function(RegisterResourceRequest_CustomTimeouts) updates) =>
      super.copyWith((message) =>
              updates(message as RegisterResourceRequest_CustomTimeouts))
          as RegisterResourceRequest_CustomTimeouts;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResourceRequest_CustomTimeouts create() =>
      RegisterResourceRequest_CustomTimeouts._();
  RegisterResourceRequest_CustomTimeouts createEmptyInstance() => create();
  static $pb.PbList<RegisterResourceRequest_CustomTimeouts> createRepeated() =>
      $pb.PbList<RegisterResourceRequest_CustomTimeouts>();
  @$core.pragma('dart2js:noInline')
  static RegisterResourceRequest_CustomTimeouts getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RegisterResourceRequest_CustomTimeouts>(create);
  static RegisterResourceRequest_CustomTimeouts? _defaultInstance;

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

/// RegisterResourceRequest contains information about a resource object that was newly allocated.
class RegisterResourceRequest extends $pb.GeneratedMessage {
  factory RegisterResourceRequest({
    $core.String? type,
    $core.String? name,
    $core.String? parent,
    $core.bool? custom,
    $12.Struct? object,
    $core.bool? protect,
    $core.Iterable<$core.String>? dependencies,
    $core.String? provider,
    $core.Map<$core.String, RegisterResourceRequest_PropertyDependencies>?
        propertyDependencies,
    $core.bool? deleteBeforeReplace,
    $core.String? version,
    $core.Iterable<$core.String>? ignoreChanges,
    $core.bool? acceptSecrets,
    $core.Iterable<$core.String>? additionalSecretOutputs,
    $core.Iterable<$core.String>? aliasURNs,
    $core.String? importId,
    RegisterResourceRequest_CustomTimeouts? customTimeouts,
    $core.bool? deleteBeforeReplaceDefined,
    $core.bool? supportsPartialValues,
    $core.bool? remote,
    $core.bool? acceptResources,
    $core.Map<$core.String, $core.String>? providers,
    $core.Iterable<$core.String>? replaceOnChanges,
    $core.String? pluginDownloadURL,
    $core.bool? retainOnDelete,
    $core.Iterable<$15.Alias>? aliases,
    $core.String? deletedWith,
    $core.bool? aliasSpecs,
    $14.SourcePosition? sourcePosition,
    $core.Map<$core.String, $core.List<$core.int>>? pluginChecksums,
    $core.Iterable<$3.Callback>? transforms,
    $core.bool? supportsResultReporting,
    $core.String? packageRef,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (name != null) {
      $result.name = name;
    }
    if (parent != null) {
      $result.parent = parent;
    }
    if (custom != null) {
      $result.custom = custom;
    }
    if (object != null) {
      $result.object = object;
    }
    if (protect != null) {
      $result.protect = protect;
    }
    if (dependencies != null) {
      $result.dependencies.addAll(dependencies);
    }
    if (provider != null) {
      $result.provider = provider;
    }
    if (propertyDependencies != null) {
      $result.propertyDependencies.addAll(propertyDependencies);
    }
    if (deleteBeforeReplace != null) {
      $result.deleteBeforeReplace = deleteBeforeReplace;
    }
    if (version != null) {
      $result.version = version;
    }
    if (ignoreChanges != null) {
      $result.ignoreChanges.addAll(ignoreChanges);
    }
    if (acceptSecrets != null) {
      $result.acceptSecrets = acceptSecrets;
    }
    if (additionalSecretOutputs != null) {
      $result.additionalSecretOutputs.addAll(additionalSecretOutputs);
    }
    if (aliasURNs != null) {
      $result.aliasURNs.addAll(aliasURNs);
    }
    if (importId != null) {
      $result.importId = importId;
    }
    if (customTimeouts != null) {
      $result.customTimeouts = customTimeouts;
    }
    if (deleteBeforeReplaceDefined != null) {
      $result.deleteBeforeReplaceDefined = deleteBeforeReplaceDefined;
    }
    if (supportsPartialValues != null) {
      $result.supportsPartialValues = supportsPartialValues;
    }
    if (remote != null) {
      $result.remote = remote;
    }
    if (acceptResources != null) {
      $result.acceptResources = acceptResources;
    }
    if (providers != null) {
      $result.providers.addAll(providers);
    }
    if (replaceOnChanges != null) {
      $result.replaceOnChanges.addAll(replaceOnChanges);
    }
    if (pluginDownloadURL != null) {
      $result.pluginDownloadURL = pluginDownloadURL;
    }
    if (retainOnDelete != null) {
      $result.retainOnDelete = retainOnDelete;
    }
    if (aliases != null) {
      $result.aliases.addAll(aliases);
    }
    if (deletedWith != null) {
      $result.deletedWith = deletedWith;
    }
    if (aliasSpecs != null) {
      $result.aliasSpecs = aliasSpecs;
    }
    if (sourcePosition != null) {
      $result.sourcePosition = sourcePosition;
    }
    if (pluginChecksums != null) {
      $result.pluginChecksums.addAll(pluginChecksums);
    }
    if (transforms != null) {
      $result.transforms.addAll(transforms);
    }
    if (supportsResultReporting != null) {
      $result.supportsResultReporting = supportsResultReporting;
    }
    if (packageRef != null) {
      $result.packageRef = packageRef;
    }
    return $result;
  }
  RegisterResourceRequest._() : super();
  factory RegisterResourceRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisterResourceRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResourceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'parent')
    ..aOB(4, _omitFieldNames ? '' : 'custom')
    ..aOM<$12.Struct>(5, _omitFieldNames ? '' : 'object',
        subBuilder: $12.Struct.create)
    ..aOB(6, _omitFieldNames ? '' : 'protect')
    ..pPS(7, _omitFieldNames ? '' : 'dependencies')
    ..aOS(8, _omitFieldNames ? '' : 'provider')
    ..m<$core.String, RegisterResourceRequest_PropertyDependencies>(
        9, _omitFieldNames ? '' : 'propertyDependencies',
        protoName: 'propertyDependencies',
        entryClassName: 'RegisterResourceRequest.PropertyDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: RegisterResourceRequest_PropertyDependencies.create,
        valueDefaultOrMaker:
            RegisterResourceRequest_PropertyDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOB(10, _omitFieldNames ? '' : 'deleteBeforeReplace',
        protoName: 'deleteBeforeReplace')
    ..aOS(11, _omitFieldNames ? '' : 'version')
    ..pPS(12, _omitFieldNames ? '' : 'ignoreChanges',
        protoName: 'ignoreChanges')
    ..aOB(13, _omitFieldNames ? '' : 'acceptSecrets',
        protoName: 'acceptSecrets')
    ..pPS(14, _omitFieldNames ? '' : 'additionalSecretOutputs',
        protoName: 'additionalSecretOutputs')
    ..pPS(15, _omitFieldNames ? '' : 'aliasURNs', protoName: 'aliasURNs')
    ..aOS(16, _omitFieldNames ? '' : 'importId', protoName: 'importId')
    ..aOM<RegisterResourceRequest_CustomTimeouts>(
        17, _omitFieldNames ? '' : 'customTimeouts',
        protoName: 'customTimeouts',
        subBuilder: RegisterResourceRequest_CustomTimeouts.create)
    ..aOB(18, _omitFieldNames ? '' : 'deleteBeforeReplaceDefined',
        protoName: 'deleteBeforeReplaceDefined')
    ..aOB(19, _omitFieldNames ? '' : 'supportsPartialValues',
        protoName: 'supportsPartialValues')
    ..aOB(20, _omitFieldNames ? '' : 'remote')
    ..aOB(21, _omitFieldNames ? '' : 'acceptResources',
        protoName: 'acceptResources')
    ..m<$core.String, $core.String>(22, _omitFieldNames ? '' : 'providers',
        entryClassName: 'RegisterResourceRequest.ProvidersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..pPS(23, _omitFieldNames ? '' : 'replaceOnChanges',
        protoName: 'replaceOnChanges')
    ..aOS(24, _omitFieldNames ? '' : 'pluginDownloadURL',
        protoName: 'pluginDownloadURL')
    ..aOB(25, _omitFieldNames ? '' : 'retainOnDelete',
        protoName: 'retainOnDelete')
    ..pc<$15.Alias>(26, _omitFieldNames ? '' : 'aliases', $pb.PbFieldType.PM,
        subBuilder: $15.Alias.create)
    ..aOS(27, _omitFieldNames ? '' : 'deletedWith', protoName: 'deletedWith')
    ..aOB(28, _omitFieldNames ? '' : 'aliasSpecs', protoName: 'aliasSpecs')
    ..aOM<$14.SourcePosition>(29, _omitFieldNames ? '' : 'sourcePosition',
        protoName: 'sourcePosition', subBuilder: $14.SourcePosition.create)
    ..m<$core.String, $core.List<$core.int>>(
        30, _omitFieldNames ? '' : 'pluginChecksums',
        protoName: 'pluginChecksums',
        entryClassName: 'RegisterResourceRequest.PluginChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..pc<$3.Callback>(
        31, _omitFieldNames ? '' : 'transforms', $pb.PbFieldType.PM,
        subBuilder: $3.Callback.create)
    ..aOB(32, _omitFieldNames ? '' : 'supportsResultReporting',
        protoName: 'supportsResultReporting')
    ..aOS(33, _omitFieldNames ? '' : 'packageRef', protoName: 'packageRef')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisterResourceRequest clone() =>
      RegisterResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisterResourceRequest copyWith(
          void Function(RegisterResourceRequest) updates) =>
      super.copyWith((message) => updates(message as RegisterResourceRequest))
          as RegisterResourceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResourceRequest create() => RegisterResourceRequest._();
  RegisterResourceRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterResourceRequest> createRepeated() =>
      $pb.PbList<RegisterResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterResourceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterResourceRequest>(create);
  static RegisterResourceRequest? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.String get parent => $_getSZ(2);
  @$pb.TagNumber(3)
  set parent($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasParent() => $_has(2);
  @$pb.TagNumber(3)
  void clearParent() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get custom => $_getBF(3);
  @$pb.TagNumber(4)
  set custom($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCustom() => $_has(3);
  @$pb.TagNumber(4)
  void clearCustom() => clearField(4);

  @$pb.TagNumber(5)
  $12.Struct get object => $_getN(4);
  @$pb.TagNumber(5)
  set object($12.Struct v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasObject() => $_has(4);
  @$pb.TagNumber(5)
  void clearObject() => clearField(5);
  @$pb.TagNumber(5)
  $12.Struct ensureObject() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get protect => $_getBF(5);
  @$pb.TagNumber(6)
  set protect($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasProtect() => $_has(5);
  @$pb.TagNumber(6)
  void clearProtect() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get dependencies => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get provider => $_getSZ(7);
  @$pb.TagNumber(8)
  set provider($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasProvider() => $_has(7);
  @$pb.TagNumber(8)
  void clearProvider() => clearField(8);

  @$pb.TagNumber(9)
  $core.Map<$core.String, RegisterResourceRequest_PropertyDependencies>
      get propertyDependencies => $_getMap(8);

  @$pb.TagNumber(10)
  $core.bool get deleteBeforeReplace => $_getBF(9);
  @$pb.TagNumber(10)
  set deleteBeforeReplace($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasDeleteBeforeReplace() => $_has(9);
  @$pb.TagNumber(10)
  void clearDeleteBeforeReplace() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get version => $_getSZ(10);
  @$pb.TagNumber(11)
  set version($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasVersion() => $_has(10);
  @$pb.TagNumber(11)
  void clearVersion() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.String> get ignoreChanges => $_getList(11);

  @$pb.TagNumber(13)
  $core.bool get acceptSecrets => $_getBF(12);
  @$pb.TagNumber(13)
  set acceptSecrets($core.bool v) {
    $_setBool(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasAcceptSecrets() => $_has(12);
  @$pb.TagNumber(13)
  void clearAcceptSecrets() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.String> get additionalSecretOutputs => $_getList(13);

  @$pb.TagNumber(15)
  $core.List<$core.String> get aliasURNs => $_getList(14);

  @$pb.TagNumber(16)
  $core.String get importId => $_getSZ(15);
  @$pb.TagNumber(16)
  set importId($core.String v) {
    $_setString(15, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasImportId() => $_has(15);
  @$pb.TagNumber(16)
  void clearImportId() => clearField(16);

  @$pb.TagNumber(17)
  RegisterResourceRequest_CustomTimeouts get customTimeouts => $_getN(16);
  @$pb.TagNumber(17)
  set customTimeouts(RegisterResourceRequest_CustomTimeouts v) {
    setField(17, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasCustomTimeouts() => $_has(16);
  @$pb.TagNumber(17)
  void clearCustomTimeouts() => clearField(17);
  @$pb.TagNumber(17)
  RegisterResourceRequest_CustomTimeouts ensureCustomTimeouts() => $_ensure(16);

  @$pb.TagNumber(18)
  $core.bool get deleteBeforeReplaceDefined => $_getBF(17);
  @$pb.TagNumber(18)
  set deleteBeforeReplaceDefined($core.bool v) {
    $_setBool(17, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasDeleteBeforeReplaceDefined() => $_has(17);
  @$pb.TagNumber(18)
  void clearDeleteBeforeReplaceDefined() => clearField(18);

  @$pb.TagNumber(19)
  $core.bool get supportsPartialValues => $_getBF(18);
  @$pb.TagNumber(19)
  set supportsPartialValues($core.bool v) {
    $_setBool(18, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasSupportsPartialValues() => $_has(18);
  @$pb.TagNumber(19)
  void clearSupportsPartialValues() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get remote => $_getBF(19);
  @$pb.TagNumber(20)
  set remote($core.bool v) {
    $_setBool(19, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasRemote() => $_has(19);
  @$pb.TagNumber(20)
  void clearRemote() => clearField(20);

  @$pb.TagNumber(21)
  $core.bool get acceptResources => $_getBF(20);
  @$pb.TagNumber(21)
  set acceptResources($core.bool v) {
    $_setBool(20, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasAcceptResources() => $_has(20);
  @$pb.TagNumber(21)
  void clearAcceptResources() => clearField(21);

  @$pb.TagNumber(22)
  $core.Map<$core.String, $core.String> get providers => $_getMap(21);

  @$pb.TagNumber(23)
  $core.List<$core.String> get replaceOnChanges => $_getList(22);

  @$pb.TagNumber(24)
  $core.String get pluginDownloadURL => $_getSZ(23);
  @$pb.TagNumber(24)
  set pluginDownloadURL($core.String v) {
    $_setString(23, v);
  }

  @$pb.TagNumber(24)
  $core.bool hasPluginDownloadURL() => $_has(23);
  @$pb.TagNumber(24)
  void clearPluginDownloadURL() => clearField(24);

  @$pb.TagNumber(25)
  $core.bool get retainOnDelete => $_getBF(24);
  @$pb.TagNumber(25)
  set retainOnDelete($core.bool v) {
    $_setBool(24, v);
  }

  @$pb.TagNumber(25)
  $core.bool hasRetainOnDelete() => $_has(24);
  @$pb.TagNumber(25)
  void clearRetainOnDelete() => clearField(25);

  @$pb.TagNumber(26)
  $core.List<$15.Alias> get aliases => $_getList(25);

  @$pb.TagNumber(27)
  $core.String get deletedWith => $_getSZ(26);
  @$pb.TagNumber(27)
  set deletedWith($core.String v) {
    $_setString(26, v);
  }

  @$pb.TagNumber(27)
  $core.bool hasDeletedWith() => $_has(26);
  @$pb.TagNumber(27)
  void clearDeletedWith() => clearField(27);

  /// Indicates that alias specs are specified correctly according to the spec.
  /// Older versions of the Node.js SDK did not send alias specs correctly.
  /// If this is not set to true and the engine detects the request is from the
  /// Node.js runtime, the engine will transform incorrect alias specs into
  /// correct ones.
  /// Other SDKs that are correctly specifying alias specs could set this to
  /// true, but it's not necessary.
  @$pb.TagNumber(28)
  $core.bool get aliasSpecs => $_getBF(27);
  @$pb.TagNumber(28)
  set aliasSpecs($core.bool v) {
    $_setBool(27, v);
  }

  @$pb.TagNumber(28)
  $core.bool hasAliasSpecs() => $_has(27);
  @$pb.TagNumber(28)
  void clearAliasSpecs() => clearField(28);

  @$pb.TagNumber(29)
  $14.SourcePosition get sourcePosition => $_getN(28);
  @$pb.TagNumber(29)
  set sourcePosition($14.SourcePosition v) {
    setField(29, v);
  }

  @$pb.TagNumber(29)
  $core.bool hasSourcePosition() => $_has(28);
  @$pb.TagNumber(29)
  void clearSourcePosition() => clearField(29);
  @$pb.TagNumber(29)
  $14.SourcePosition ensureSourcePosition() => $_ensure(28);

  @$pb.TagNumber(30)
  $core.Map<$core.String, $core.List<$core.int>> get pluginChecksums =>
      $_getMap(29);

  @$pb.TagNumber(31)
  $core.List<$3.Callback> get transforms => $_getList(30);

  @$pb.TagNumber(32)
  $core.bool get supportsResultReporting => $_getBF(31);
  @$pb.TagNumber(32)
  set supportsResultReporting($core.bool v) {
    $_setBool(31, v);
  }

  @$pb.TagNumber(32)
  $core.bool hasSupportsResultReporting() => $_has(31);
  @$pb.TagNumber(32)
  void clearSupportsResultReporting() => clearField(32);

  @$pb.TagNumber(33)
  $core.String get packageRef => $_getSZ(32);
  @$pb.TagNumber(33)
  set packageRef($core.String v) {
    $_setString(32, v);
  }

  @$pb.TagNumber(33)
  $core.bool hasPackageRef() => $_has(32);
  @$pb.TagNumber(33)
  void clearPackageRef() => clearField(33);
}

/// PropertyDependencies describes the resources that a particular property depends on.
class RegisterResourceResponse_PropertyDependencies
    extends $pb.GeneratedMessage {
  factory RegisterResourceResponse_PropertyDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final $result = create();
    if (urns != null) {
      $result.urns.addAll(urns);
    }
    return $result;
  }
  RegisterResourceResponse_PropertyDependencies._() : super();
  factory RegisterResourceResponse_PropertyDependencies.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisterResourceResponse_PropertyDependencies.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResourceResponse.PropertyDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisterResourceResponse_PropertyDependencies clone() =>
      RegisterResourceResponse_PropertyDependencies()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisterResourceResponse_PropertyDependencies copyWith(
          void Function(RegisterResourceResponse_PropertyDependencies)
              updates) =>
      super.copyWith((message) =>
              updates(message as RegisterResourceResponse_PropertyDependencies))
          as RegisterResourceResponse_PropertyDependencies;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResourceResponse_PropertyDependencies create() =>
      RegisterResourceResponse_PropertyDependencies._();
  RegisterResourceResponse_PropertyDependencies createEmptyInstance() =>
      create();
  static $pb.PbList<RegisterResourceResponse_PropertyDependencies>
      createRepeated() =>
          $pb.PbList<RegisterResourceResponse_PropertyDependencies>();
  @$core.pragma('dart2js:noInline')
  static RegisterResourceResponse_PropertyDependencies getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          RegisterResourceResponse_PropertyDependencies>(create);
  static RegisterResourceResponse_PropertyDependencies? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get urns => $_getList(0);
}

/// RegisterResourceResponse is returned by the engine after a resource has finished being initialized.  It includes the
/// auto-assigned URN, the provider-assigned ID, and any other properties initialized by the engine.
class RegisterResourceResponse extends $pb.GeneratedMessage {
  factory RegisterResourceResponse({
    $core.String? urn,
    $core.String? id,
    $12.Struct? object,
    $core.bool? stable,
    $core.Iterable<$core.String>? stables,
    $core.Map<$core.String, RegisterResourceResponse_PropertyDependencies>?
        propertyDependencies,
    Result? result,
  }) {
    final $result = create();
    if (urn != null) {
      $result.urn = urn;
    }
    if (id != null) {
      $result.id = id;
    }
    if (object != null) {
      $result.object = object;
    }
    if (stable != null) {
      $result.stable = stable;
    }
    if (stables != null) {
      $result.stables.addAll(stables);
    }
    if (propertyDependencies != null) {
      $result.propertyDependencies.addAll(propertyDependencies);
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  RegisterResourceResponse._() : super();
  factory RegisterResourceResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisterResourceResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResourceResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..aOM<$12.Struct>(3, _omitFieldNames ? '' : 'object',
        subBuilder: $12.Struct.create)
    ..aOB(4, _omitFieldNames ? '' : 'stable')
    ..pPS(5, _omitFieldNames ? '' : 'stables')
    ..m<$core.String, RegisterResourceResponse_PropertyDependencies>(
        6, _omitFieldNames ? '' : 'propertyDependencies',
        protoName: 'propertyDependencies',
        entryClassName: 'RegisterResourceResponse.PropertyDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: RegisterResourceResponse_PropertyDependencies.create,
        valueDefaultOrMaker:
            RegisterResourceResponse_PropertyDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..e<Result>(7, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE,
        defaultOrMaker: Result.SUCCESS,
        valueOf: Result.valueOf,
        enumValues: Result.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisterResourceResponse clone() =>
      RegisterResourceResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisterResourceResponse copyWith(
          void Function(RegisterResourceResponse) updates) =>
      super.copyWith((message) => updates(message as RegisterResourceResponse))
          as RegisterResourceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResourceResponse create() => RegisterResourceResponse._();
  RegisterResourceResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterResourceResponse> createRepeated() =>
      $pb.PbList<RegisterResourceResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterResourceResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterResourceResponse>(create);
  static RegisterResourceResponse? _defaultInstance;

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
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $12.Struct get object => $_getN(2);
  @$pb.TagNumber(3)
  set object($12.Struct v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasObject() => $_has(2);
  @$pb.TagNumber(3)
  void clearObject() => clearField(3);
  @$pb.TagNumber(3)
  $12.Struct ensureObject() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get stable => $_getBF(3);
  @$pb.TagNumber(4)
  set stable($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasStable() => $_has(3);
  @$pb.TagNumber(4)
  void clearStable() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get stables => $_getList(4);

  @$pb.TagNumber(6)
  $core.Map<$core.String, RegisterResourceResponse_PropertyDependencies>
      get propertyDependencies => $_getMap(5);

  @$pb.TagNumber(7)
  Result get result => $_getN(6);
  @$pb.TagNumber(7)
  set result(Result v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasResult() => $_has(6);
  @$pb.TagNumber(7)
  void clearResult() => clearField(7);
}

/// RegisterResourceOutputsRequest adds extra resource outputs created by the program after registration has occurred.
class RegisterResourceOutputsRequest extends $pb.GeneratedMessage {
  factory RegisterResourceOutputsRequest({
    $core.String? urn,
    $12.Struct? outputs,
  }) {
    final $result = create();
    if (urn != null) {
      $result.urn = urn;
    }
    if (outputs != null) {
      $result.outputs = outputs;
    }
    return $result;
  }
  RegisterResourceOutputsRequest._() : super();
  factory RegisterResourceOutputsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisterResourceOutputsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResourceOutputsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'outputs',
        subBuilder: $12.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisterResourceOutputsRequest clone() =>
      RegisterResourceOutputsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisterResourceOutputsRequest copyWith(
          void Function(RegisterResourceOutputsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as RegisterResourceOutputsRequest))
          as RegisterResourceOutputsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResourceOutputsRequest create() =>
      RegisterResourceOutputsRequest._();
  RegisterResourceOutputsRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterResourceOutputsRequest> createRepeated() =>
      $pb.PbList<RegisterResourceOutputsRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterResourceOutputsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterResourceOutputsRequest>(create);
  static RegisterResourceOutputsRequest? _defaultInstance;

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
  $12.Struct get outputs => $_getN(1);
  @$pb.TagNumber(2)
  set outputs($12.Struct v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOutputs() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutputs() => clearField(2);
  @$pb.TagNumber(2)
  $12.Struct ensureOutputs() => $_ensure(1);
}

class ResourceInvokeRequest extends $pb.GeneratedMessage {
  factory ResourceInvokeRequest({
    $core.String? tok,
    $12.Struct? args,
    $core.String? provider,
    $core.String? version,
    $core.bool? acceptResources,
    $core.String? pluginDownloadURL,
    $14.SourcePosition? sourcePosition,
    $core.Map<$core.String, $core.List<$core.int>>? pluginChecksums,
    $core.String? packageRef,
  }) {
    final $result = create();
    if (tok != null) {
      $result.tok = tok;
    }
    if (args != null) {
      $result.args = args;
    }
    if (provider != null) {
      $result.provider = provider;
    }
    if (version != null) {
      $result.version = version;
    }
    if (acceptResources != null) {
      $result.acceptResources = acceptResources;
    }
    if (pluginDownloadURL != null) {
      $result.pluginDownloadURL = pluginDownloadURL;
    }
    if (sourcePosition != null) {
      $result.sourcePosition = sourcePosition;
    }
    if (pluginChecksums != null) {
      $result.pluginChecksums.addAll(pluginChecksums);
    }
    if (packageRef != null) {
      $result.packageRef = packageRef;
    }
    return $result;
  }
  ResourceInvokeRequest._() : super();
  factory ResourceInvokeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResourceInvokeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceInvokeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tok')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'args',
        subBuilder: $12.Struct.create)
    ..aOS(3, _omitFieldNames ? '' : 'provider')
    ..aOS(4, _omitFieldNames ? '' : 'version')
    ..aOB(5, _omitFieldNames ? '' : 'acceptResources',
        protoName: 'acceptResources')
    ..aOS(6, _omitFieldNames ? '' : 'pluginDownloadURL',
        protoName: 'pluginDownloadURL')
    ..aOM<$14.SourcePosition>(7, _omitFieldNames ? '' : 'sourcePosition',
        protoName: 'sourcePosition', subBuilder: $14.SourcePosition.create)
    ..m<$core.String, $core.List<$core.int>>(
        8, _omitFieldNames ? '' : 'pluginChecksums',
        protoName: 'pluginChecksums',
        entryClassName: 'ResourceInvokeRequest.PluginChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(9, _omitFieldNames ? '' : 'packageRef', protoName: 'packageRef')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResourceInvokeRequest clone() =>
      ResourceInvokeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResourceInvokeRequest copyWith(
          void Function(ResourceInvokeRequest) updates) =>
      super.copyWith((message) => updates(message as ResourceInvokeRequest))
          as ResourceInvokeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceInvokeRequest create() => ResourceInvokeRequest._();
  ResourceInvokeRequest createEmptyInstance() => create();
  static $pb.PbList<ResourceInvokeRequest> createRepeated() =>
      $pb.PbList<ResourceInvokeRequest>();
  @$core.pragma('dart2js:noInline')
  static ResourceInvokeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceInvokeRequest>(create);
  static ResourceInvokeRequest? _defaultInstance;

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
  $core.String get provider => $_getSZ(2);
  @$pb.TagNumber(3)
  set provider($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasProvider() => $_has(2);
  @$pb.TagNumber(3)
  void clearProvider() => clearField(3);

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

  @$pb.TagNumber(5)
  $core.bool get acceptResources => $_getBF(4);
  @$pb.TagNumber(5)
  set acceptResources($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAcceptResources() => $_has(4);
  @$pb.TagNumber(5)
  void clearAcceptResources() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get pluginDownloadURL => $_getSZ(5);
  @$pb.TagNumber(6)
  set pluginDownloadURL($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasPluginDownloadURL() => $_has(5);
  @$pb.TagNumber(6)
  void clearPluginDownloadURL() => clearField(6);

  @$pb.TagNumber(7)
  $14.SourcePosition get sourcePosition => $_getN(6);
  @$pb.TagNumber(7)
  set sourcePosition($14.SourcePosition v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasSourcePosition() => $_has(6);
  @$pb.TagNumber(7)
  void clearSourcePosition() => clearField(7);
  @$pb.TagNumber(7)
  $14.SourcePosition ensureSourcePosition() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.Map<$core.String, $core.List<$core.int>> get pluginChecksums =>
      $_getMap(7);

  @$pb.TagNumber(9)
  $core.String get packageRef => $_getSZ(8);
  @$pb.TagNumber(9)
  set packageRef($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasPackageRef() => $_has(8);
  @$pb.TagNumber(9)
  void clearPackageRef() => clearField(9);
}

/// ArgumentDependencies describes the resources that a particular argument depends on.
class ResourceCallRequest_ArgumentDependencies extends $pb.GeneratedMessage {
  factory ResourceCallRequest_ArgumentDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final $result = create();
    if (urns != null) {
      $result.urns.addAll(urns);
    }
    return $result;
  }
  ResourceCallRequest_ArgumentDependencies._() : super();
  factory ResourceCallRequest_ArgumentDependencies.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResourceCallRequest_ArgumentDependencies.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceCallRequest.ArgumentDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResourceCallRequest_ArgumentDependencies clone() =>
      ResourceCallRequest_ArgumentDependencies()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResourceCallRequest_ArgumentDependencies copyWith(
          void Function(ResourceCallRequest_ArgumentDependencies) updates) =>
      super.copyWith((message) =>
              updates(message as ResourceCallRequest_ArgumentDependencies))
          as ResourceCallRequest_ArgumentDependencies;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceCallRequest_ArgumentDependencies create() =>
      ResourceCallRequest_ArgumentDependencies._();
  ResourceCallRequest_ArgumentDependencies createEmptyInstance() => create();
  static $pb.PbList<ResourceCallRequest_ArgumentDependencies>
      createRepeated() =>
          $pb.PbList<ResourceCallRequest_ArgumentDependencies>();
  @$core.pragma('dart2js:noInline')
  static ResourceCallRequest_ArgumentDependencies getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          ResourceCallRequest_ArgumentDependencies>(create);
  static ResourceCallRequest_ArgumentDependencies? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get urns => $_getList(0);
}

class ResourceCallRequest extends $pb.GeneratedMessage {
  factory ResourceCallRequest({
    $core.String? tok,
    $12.Struct? args,
    $core.Map<$core.String, ResourceCallRequest_ArgumentDependencies>?
        argDependencies,
    $core.String? provider,
    $core.String? version,
    $core.String? pluginDownloadURL,
    $14.SourcePosition? sourcePosition,
    $core.Map<$core.String, $core.List<$core.int>>? pluginChecksums,
    $core.String? packageRef,
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
    if (provider != null) {
      $result.provider = provider;
    }
    if (version != null) {
      $result.version = version;
    }
    if (pluginDownloadURL != null) {
      $result.pluginDownloadURL = pluginDownloadURL;
    }
    if (sourcePosition != null) {
      $result.sourcePosition = sourcePosition;
    }
    if (pluginChecksums != null) {
      $result.pluginChecksums.addAll(pluginChecksums);
    }
    if (packageRef != null) {
      $result.packageRef = packageRef;
    }
    return $result;
  }
  ResourceCallRequest._() : super();
  factory ResourceCallRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResourceCallRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceCallRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tok')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'args',
        subBuilder: $12.Struct.create)
    ..m<$core.String, ResourceCallRequest_ArgumentDependencies>(
        3, _omitFieldNames ? '' : 'argDependencies',
        protoName: 'argDependencies',
        entryClassName: 'ResourceCallRequest.ArgDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: ResourceCallRequest_ArgumentDependencies.create,
        valueDefaultOrMaker:
            ResourceCallRequest_ArgumentDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(4, _omitFieldNames ? '' : 'provider')
    ..aOS(5, _omitFieldNames ? '' : 'version')
    ..aOS(13, _omitFieldNames ? '' : 'pluginDownloadURL',
        protoName: 'pluginDownloadURL')
    ..aOM<$14.SourcePosition>(15, _omitFieldNames ? '' : 'sourcePosition',
        protoName: 'sourcePosition', subBuilder: $14.SourcePosition.create)
    ..m<$core.String, $core.List<$core.int>>(
        16, _omitFieldNames ? '' : 'pluginChecksums',
        protoName: 'pluginChecksums',
        entryClassName: 'ResourceCallRequest.PluginChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOS(17, _omitFieldNames ? '' : 'packageRef', protoName: 'packageRef')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResourceCallRequest clone() => ResourceCallRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResourceCallRequest copyWith(void Function(ResourceCallRequest) updates) =>
      super.copyWith((message) => updates(message as ResourceCallRequest))
          as ResourceCallRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceCallRequest create() => ResourceCallRequest._();
  ResourceCallRequest createEmptyInstance() => create();
  static $pb.PbList<ResourceCallRequest> createRepeated() =>
      $pb.PbList<ResourceCallRequest>();
  @$core.pragma('dart2js:noInline')
  static ResourceCallRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceCallRequest>(create);
  static ResourceCallRequest? _defaultInstance;

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
  $core.Map<$core.String, ResourceCallRequest_ArgumentDependencies>
      get argDependencies => $_getMap(2);

  @$pb.TagNumber(4)
  $core.String get provider => $_getSZ(3);
  @$pb.TagNumber(4)
  set provider($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasProvider() => $_has(3);
  @$pb.TagNumber(4)
  void clearProvider() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get version => $_getSZ(4);
  @$pb.TagNumber(5)
  set version($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearVersion() => clearField(5);

  @$pb.TagNumber(13)
  $core.String get pluginDownloadURL => $_getSZ(5);
  @$pb.TagNumber(13)
  set pluginDownloadURL($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasPluginDownloadURL() => $_has(5);
  @$pb.TagNumber(13)
  void clearPluginDownloadURL() => clearField(13);

  @$pb.TagNumber(15)
  $14.SourcePosition get sourcePosition => $_getN(6);
  @$pb.TagNumber(15)
  set sourcePosition($14.SourcePosition v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasSourcePosition() => $_has(6);
  @$pb.TagNumber(15)
  void clearSourcePosition() => clearField(15);
  @$pb.TagNumber(15)
  $14.SourcePosition ensureSourcePosition() => $_ensure(6);

  @$pb.TagNumber(16)
  $core.Map<$core.String, $core.List<$core.int>> get pluginChecksums =>
      $_getMap(7);

  @$pb.TagNumber(17)
  $core.String get packageRef => $_getSZ(8);
  @$pb.TagNumber(17)
  set packageRef($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasPackageRef() => $_has(8);
  @$pb.TagNumber(17)
  void clearPackageRef() => clearField(17);
}

/// TransformResourceOptions is a subset of all resource options that are relevant to transforms.
class TransformResourceOptions extends $pb.GeneratedMessage {
  factory TransformResourceOptions({
    $core.Iterable<$core.String>? dependsOn,
    $core.bool? protect,
    $core.Iterable<$core.String>? ignoreChanges,
    $core.Iterable<$core.String>? replaceOnChanges,
    $core.String? version,
    $core.Iterable<$15.Alias>? aliases,
    $core.String? provider,
    RegisterResourceRequest_CustomTimeouts? customTimeouts,
    $core.String? pluginDownloadUrl,
    $core.bool? retainOnDelete,
    $core.String? deletedWith,
    $core.bool? deleteBeforeReplace,
    $core.Iterable<$core.String>? additionalSecretOutputs,
    $core.Map<$core.String, $core.String>? providers,
    $core.Map<$core.String, $core.List<$core.int>>? pluginChecksums,
  }) {
    final $result = create();
    if (dependsOn != null) {
      $result.dependsOn.addAll(dependsOn);
    }
    if (protect != null) {
      $result.protect = protect;
    }
    if (ignoreChanges != null) {
      $result.ignoreChanges.addAll(ignoreChanges);
    }
    if (replaceOnChanges != null) {
      $result.replaceOnChanges.addAll(replaceOnChanges);
    }
    if (version != null) {
      $result.version = version;
    }
    if (aliases != null) {
      $result.aliases.addAll(aliases);
    }
    if (provider != null) {
      $result.provider = provider;
    }
    if (customTimeouts != null) {
      $result.customTimeouts = customTimeouts;
    }
    if (pluginDownloadUrl != null) {
      $result.pluginDownloadUrl = pluginDownloadUrl;
    }
    if (retainOnDelete != null) {
      $result.retainOnDelete = retainOnDelete;
    }
    if (deletedWith != null) {
      $result.deletedWith = deletedWith;
    }
    if (deleteBeforeReplace != null) {
      $result.deleteBeforeReplace = deleteBeforeReplace;
    }
    if (additionalSecretOutputs != null) {
      $result.additionalSecretOutputs.addAll(additionalSecretOutputs);
    }
    if (providers != null) {
      $result.providers.addAll(providers);
    }
    if (pluginChecksums != null) {
      $result.pluginChecksums.addAll(pluginChecksums);
    }
    return $result;
  }
  TransformResourceOptions._() : super();
  factory TransformResourceOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransformResourceOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransformResourceOptions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'dependsOn')
    ..aOB(2, _omitFieldNames ? '' : 'protect')
    ..pPS(3, _omitFieldNames ? '' : 'ignoreChanges')
    ..pPS(4, _omitFieldNames ? '' : 'replaceOnChanges')
    ..aOS(5, _omitFieldNames ? '' : 'version')
    ..pc<$15.Alias>(6, _omitFieldNames ? '' : 'aliases', $pb.PbFieldType.PM,
        subBuilder: $15.Alias.create)
    ..aOS(7, _omitFieldNames ? '' : 'provider')
    ..aOM<RegisterResourceRequest_CustomTimeouts>(
        8, _omitFieldNames ? '' : 'customTimeouts',
        subBuilder: RegisterResourceRequest_CustomTimeouts.create)
    ..aOS(9, _omitFieldNames ? '' : 'pluginDownloadUrl')
    ..aOB(10, _omitFieldNames ? '' : 'retainOnDelete')
    ..aOS(11, _omitFieldNames ? '' : 'deletedWith')
    ..aOB(12, _omitFieldNames ? '' : 'deleteBeforeReplace')
    ..pPS(13, _omitFieldNames ? '' : 'additionalSecretOutputs')
    ..m<$core.String, $core.String>(14, _omitFieldNames ? '' : 'providers',
        entryClassName: 'TransformResourceOptions.ProvidersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('pulumirpc'))
    ..m<$core.String, $core.List<$core.int>>(
        15, _omitFieldNames ? '' : 'pluginChecksums',
        entryClassName: 'TransformResourceOptions.PluginChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransformResourceOptions clone() =>
      TransformResourceOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransformResourceOptions copyWith(
          void Function(TransformResourceOptions) updates) =>
      super.copyWith((message) => updates(message as TransformResourceOptions))
          as TransformResourceOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransformResourceOptions create() => TransformResourceOptions._();
  TransformResourceOptions createEmptyInstance() => create();
  static $pb.PbList<TransformResourceOptions> createRepeated() =>
      $pb.PbList<TransformResourceOptions>();
  @$core.pragma('dart2js:noInline')
  static TransformResourceOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransformResourceOptions>(create);
  static TransformResourceOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get dependsOn => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get protect => $_getBF(1);
  @$pb.TagNumber(2)
  set protect($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProtect() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtect() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get ignoreChanges => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get replaceOnChanges => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get version => $_getSZ(4);
  @$pb.TagNumber(5)
  set version($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearVersion() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$15.Alias> get aliases => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get provider => $_getSZ(6);
  @$pb.TagNumber(7)
  set provider($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasProvider() => $_has(6);
  @$pb.TagNumber(7)
  void clearProvider() => clearField(7);

  @$pb.TagNumber(8)
  RegisterResourceRequest_CustomTimeouts get customTimeouts => $_getN(7);
  @$pb.TagNumber(8)
  set customTimeouts(RegisterResourceRequest_CustomTimeouts v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasCustomTimeouts() => $_has(7);
  @$pb.TagNumber(8)
  void clearCustomTimeouts() => clearField(8);
  @$pb.TagNumber(8)
  RegisterResourceRequest_CustomTimeouts ensureCustomTimeouts() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.String get pluginDownloadUrl => $_getSZ(8);
  @$pb.TagNumber(9)
  set pluginDownloadUrl($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasPluginDownloadUrl() => $_has(8);
  @$pb.TagNumber(9)
  void clearPluginDownloadUrl() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get retainOnDelete => $_getBF(9);
  @$pb.TagNumber(10)
  set retainOnDelete($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasRetainOnDelete() => $_has(9);
  @$pb.TagNumber(10)
  void clearRetainOnDelete() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get deletedWith => $_getSZ(10);
  @$pb.TagNumber(11)
  set deletedWith($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDeletedWith() => $_has(10);
  @$pb.TagNumber(11)
  void clearDeletedWith() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get deleteBeforeReplace => $_getBF(11);
  @$pb.TagNumber(12)
  set deleteBeforeReplace($core.bool v) {
    $_setBool(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasDeleteBeforeReplace() => $_has(11);
  @$pb.TagNumber(12)
  void clearDeleteBeforeReplace() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.String> get additionalSecretOutputs => $_getList(12);

  @$pb.TagNumber(14)
  $core.Map<$core.String, $core.String> get providers => $_getMap(13);

  @$pb.TagNumber(15)
  $core.Map<$core.String, $core.List<$core.int>> get pluginChecksums =>
      $_getMap(14);
}

class TransformRequest extends $pb.GeneratedMessage {
  factory TransformRequest({
    $core.String? type,
    $core.String? name,
    $core.bool? custom,
    $core.String? parent,
    $12.Struct? properties,
    TransformResourceOptions? options,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (name != null) {
      $result.name = name;
    }
    if (custom != null) {
      $result.custom = custom;
    }
    if (parent != null) {
      $result.parent = parent;
    }
    if (properties != null) {
      $result.properties = properties;
    }
    if (options != null) {
      $result.options = options;
    }
    return $result;
  }
  TransformRequest._() : super();
  factory TransformRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransformRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransformRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'custom')
    ..aOS(4, _omitFieldNames ? '' : 'parent')
    ..aOM<$12.Struct>(5, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..aOM<TransformResourceOptions>(6, _omitFieldNames ? '' : 'options',
        subBuilder: TransformResourceOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransformRequest clone() => TransformRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransformRequest copyWith(void Function(TransformRequest) updates) =>
      super.copyWith((message) => updates(message as TransformRequest))
          as TransformRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransformRequest create() => TransformRequest._();
  TransformRequest createEmptyInstance() => create();
  static $pb.PbList<TransformRequest> createRepeated() =>
      $pb.PbList<TransformRequest>();
  @$core.pragma('dart2js:noInline')
  static TransformRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransformRequest>(create);
  static TransformRequest? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.bool get custom => $_getBF(2);
  @$pb.TagNumber(3)
  set custom($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCustom() => $_has(2);
  @$pb.TagNumber(3)
  void clearCustom() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get parent => $_getSZ(3);
  @$pb.TagNumber(4)
  set parent($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasParent() => $_has(3);
  @$pb.TagNumber(4)
  void clearParent() => clearField(4);

  @$pb.TagNumber(5)
  $12.Struct get properties => $_getN(4);
  @$pb.TagNumber(5)
  set properties($12.Struct v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasProperties() => $_has(4);
  @$pb.TagNumber(5)
  void clearProperties() => clearField(5);
  @$pb.TagNumber(5)
  $12.Struct ensureProperties() => $_ensure(4);

  @$pb.TagNumber(6)
  TransformResourceOptions get options => $_getN(5);
  @$pb.TagNumber(6)
  set options(TransformResourceOptions v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasOptions() => $_has(5);
  @$pb.TagNumber(6)
  void clearOptions() => clearField(6);
  @$pb.TagNumber(6)
  TransformResourceOptions ensureOptions() => $_ensure(5);
}

class TransformResponse extends $pb.GeneratedMessage {
  factory TransformResponse({
    $12.Struct? properties,
    TransformResourceOptions? options,
  }) {
    final $result = create();
    if (properties != null) {
      $result.properties = properties;
    }
    if (options != null) {
      $result.options = options;
    }
    return $result;
  }
  TransformResponse._() : super();
  factory TransformResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransformResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransformResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$12.Struct>(1, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..aOM<TransformResourceOptions>(2, _omitFieldNames ? '' : 'options',
        subBuilder: TransformResourceOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransformResponse clone() => TransformResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransformResponse copyWith(void Function(TransformResponse) updates) =>
      super.copyWith((message) => updates(message as TransformResponse))
          as TransformResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransformResponse create() => TransformResponse._();
  TransformResponse createEmptyInstance() => create();
  static $pb.PbList<TransformResponse> createRepeated() =>
      $pb.PbList<TransformResponse>();
  @$core.pragma('dart2js:noInline')
  static TransformResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransformResponse>(create);
  static TransformResponse? _defaultInstance;

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

  @$pb.TagNumber(2)
  TransformResourceOptions get options => $_getN(1);
  @$pb.TagNumber(2)
  set options(TransformResourceOptions v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOptions() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptions() => clearField(2);
  @$pb.TagNumber(2)
  TransformResourceOptions ensureOptions() => $_ensure(1);
}

/// TransformInvokeRequest is the request object for the TransformInvoke RPC.
class TransformInvokeRequest extends $pb.GeneratedMessage {
  factory TransformInvokeRequest({
    $core.String? token,
    $12.Struct? args,
    TransformInvokeOptions? options,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    if (args != null) {
      $result.args = args;
    }
    if (options != null) {
      $result.options = options;
    }
    return $result;
  }
  TransformInvokeRequest._() : super();
  factory TransformInvokeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransformInvokeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransformInvokeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'args',
        subBuilder: $12.Struct.create)
    ..aOM<TransformInvokeOptions>(3, _omitFieldNames ? '' : 'options',
        subBuilder: TransformInvokeOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransformInvokeRequest clone() =>
      TransformInvokeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransformInvokeRequest copyWith(
          void Function(TransformInvokeRequest) updates) =>
      super.copyWith((message) => updates(message as TransformInvokeRequest))
          as TransformInvokeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransformInvokeRequest create() => TransformInvokeRequest._();
  TransformInvokeRequest createEmptyInstance() => create();
  static $pb.PbList<TransformInvokeRequest> createRepeated() =>
      $pb.PbList<TransformInvokeRequest>();
  @$core.pragma('dart2js:noInline')
  static TransformInvokeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransformInvokeRequest>(create);
  static TransformInvokeRequest? _defaultInstance;

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
  TransformInvokeOptions get options => $_getN(2);
  @$pb.TagNumber(3)
  set options(TransformInvokeOptions v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOptions() => $_has(2);
  @$pb.TagNumber(3)
  void clearOptions() => clearField(3);
  @$pb.TagNumber(3)
  TransformInvokeOptions ensureOptions() => $_ensure(2);
}

/// TransformInvokeResponse is the response object for the TransformInvoke RPC.
class TransformInvokeResponse extends $pb.GeneratedMessage {
  factory TransformInvokeResponse({
    $12.Struct? args,
    TransformInvokeOptions? options,
  }) {
    final $result = create();
    if (args != null) {
      $result.args = args;
    }
    if (options != null) {
      $result.options = options;
    }
    return $result;
  }
  TransformInvokeResponse._() : super();
  factory TransformInvokeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransformInvokeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransformInvokeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$12.Struct>(1, _omitFieldNames ? '' : 'args',
        subBuilder: $12.Struct.create)
    ..aOM<TransformInvokeOptions>(2, _omitFieldNames ? '' : 'options',
        subBuilder: TransformInvokeOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransformInvokeResponse clone() =>
      TransformInvokeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransformInvokeResponse copyWith(
          void Function(TransformInvokeResponse) updates) =>
      super.copyWith((message) => updates(message as TransformInvokeResponse))
          as TransformInvokeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransformInvokeResponse create() => TransformInvokeResponse._();
  TransformInvokeResponse createEmptyInstance() => create();
  static $pb.PbList<TransformInvokeResponse> createRepeated() =>
      $pb.PbList<TransformInvokeResponse>();
  @$core.pragma('dart2js:noInline')
  static TransformInvokeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransformInvokeResponse>(create);
  static TransformInvokeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $12.Struct get args => $_getN(0);
  @$pb.TagNumber(1)
  set args($12.Struct v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasArgs() => $_has(0);
  @$pb.TagNumber(1)
  void clearArgs() => clearField(1);
  @$pb.TagNumber(1)
  $12.Struct ensureArgs() => $_ensure(0);

  @$pb.TagNumber(2)
  TransformInvokeOptions get options => $_getN(1);
  @$pb.TagNumber(2)
  set options(TransformInvokeOptions v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOptions() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptions() => clearField(2);
  @$pb.TagNumber(2)
  TransformInvokeOptions ensureOptions() => $_ensure(1);
}

/// TransformInvokeOptions is a subset of all invoke options that are relevant to transforms.
class TransformInvokeOptions extends $pb.GeneratedMessage {
  factory TransformInvokeOptions({
    $core.String? provider,
    $core.String? pluginDownloadUrl,
    $core.String? version,
    $core.Map<$core.String, $core.List<$core.int>>? pluginChecksums,
  }) {
    final $result = create();
    if (provider != null) {
      $result.provider = provider;
    }
    if (pluginDownloadUrl != null) {
      $result.pluginDownloadUrl = pluginDownloadUrl;
    }
    if (version != null) {
      $result.version = version;
    }
    if (pluginChecksums != null) {
      $result.pluginChecksums.addAll(pluginChecksums);
    }
    return $result;
  }
  TransformInvokeOptions._() : super();
  factory TransformInvokeOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransformInvokeOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransformInvokeOptions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'provider')
    ..aOS(2, _omitFieldNames ? '' : 'pluginDownloadUrl')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..m<$core.String, $core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'pluginChecksums',
        entryClassName: 'TransformInvokeOptions.PluginChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransformInvokeOptions clone() =>
      TransformInvokeOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransformInvokeOptions copyWith(
          void Function(TransformInvokeOptions) updates) =>
      super.copyWith((message) => updates(message as TransformInvokeOptions))
          as TransformInvokeOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransformInvokeOptions create() => TransformInvokeOptions._();
  TransformInvokeOptions createEmptyInstance() => create();
  static $pb.PbList<TransformInvokeOptions> createRepeated() =>
      $pb.PbList<TransformInvokeOptions>();
  @$core.pragma('dart2js:noInline')
  static TransformInvokeOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransformInvokeOptions>(create);
  static TransformInvokeOptions? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.String get pluginDownloadUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set pluginDownloadUrl($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPluginDownloadUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearPluginDownloadUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.List<$core.int>> get pluginChecksums =>
      $_getMap(3);
}

class RegisterPackageRequest extends $pb.GeneratedMessage {
  factory RegisterPackageRequest({
    $core.String? name,
    $core.String? version,
    $core.String? downloadUrl,
    $core.Map<$core.String, $core.List<$core.int>>? checksums,
    Parameterization? parameterization,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (version != null) {
      $result.version = version;
    }
    if (downloadUrl != null) {
      $result.downloadUrl = downloadUrl;
    }
    if (checksums != null) {
      $result.checksums.addAll(checksums);
    }
    if (parameterization != null) {
      $result.parameterization = parameterization;
    }
    return $result;
  }
  RegisterPackageRequest._() : super();
  factory RegisterPackageRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisterPackageRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterPackageRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..aOS(3, _omitFieldNames ? '' : 'downloadUrl')
    ..m<$core.String, $core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'checksums',
        entryClassName: 'RegisterPackageRequest.ChecksumsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('pulumirpc'))
    ..aOM<Parameterization>(5, _omitFieldNames ? '' : 'parameterization',
        subBuilder: Parameterization.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisterPackageRequest clone() =>
      RegisterPackageRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisterPackageRequest copyWith(
          void Function(RegisterPackageRequest) updates) =>
      super.copyWith((message) => updates(message as RegisterPackageRequest))
          as RegisterPackageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterPackageRequest create() => RegisterPackageRequest._();
  RegisterPackageRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterPackageRequest> createRepeated() =>
      $pb.PbList<RegisterPackageRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterPackageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterPackageRequest>(create);
  static RegisterPackageRequest? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.String get downloadUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set downloadUrl($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDownloadUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearDownloadUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.List<$core.int>> get checksums => $_getMap(3);

  @$pb.TagNumber(5)
  Parameterization get parameterization => $_getN(4);
  @$pb.TagNumber(5)
  set parameterization(Parameterization v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasParameterization() => $_has(4);
  @$pb.TagNumber(5)
  void clearParameterization() => clearField(5);
  @$pb.TagNumber(5)
  Parameterization ensureParameterization() => $_ensure(4);
}

class RegisterPackageResponse extends $pb.GeneratedMessage {
  factory RegisterPackageResponse({
    $core.String? ref,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    return $result;
  }
  RegisterPackageResponse._() : super();
  factory RegisterPackageResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegisterPackageResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterPackageResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ref')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegisterPackageResponse clone() =>
      RegisterPackageResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegisterPackageResponse copyWith(
          void Function(RegisterPackageResponse) updates) =>
      super.copyWith((message) => updates(message as RegisterPackageResponse))
          as RegisterPackageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterPackageResponse create() => RegisterPackageResponse._();
  RegisterPackageResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterPackageResponse> createRepeated() =>
      $pb.PbList<RegisterPackageResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterPackageResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterPackageResponse>(create);
  static RegisterPackageResponse? _defaultInstance;

  /// The UUID package reference for this registered package.
  @$pb.TagNumber(1)
  $core.String get ref => $_getSZ(0);
  @$pb.TagNumber(1)
  set ref($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);
}

class Parameterization extends $pb.GeneratedMessage {
  factory Parameterization({
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
  Parameterization._() : super();
  factory Parameterization.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Parameterization.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Parameterization',
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
  Parameterization clone() => Parameterization()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Parameterization copyWith(void Function(Parameterization) updates) =>
      super.copyWith((message) => updates(message as Parameterization))
          as Parameterization;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Parameterization create() => Parameterization._();
  Parameterization createEmptyInstance() => create();
  static $pb.PbList<Parameterization> createRepeated() =>
      $pb.PbList<Parameterization>();
  @$core.pragma('dart2js:noInline')
  static Parameterization getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Parameterization>(create);
  static Parameterization? _defaultInstance;

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

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
