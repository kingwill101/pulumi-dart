//
//  Generated code. Do not modify.
//  source: pulumi/analyzer.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/struct.pb.dart' as $12;
import 'analyzer.pbenum.dart';

export 'analyzer.pbenum.dart';

class AnalyzeRequest extends $pb.GeneratedMessage {
  factory AnalyzeRequest({
    $core.String? type,
    $12.Struct? properties,
    $core.String? urn,
    $core.String? name,
    AnalyzerResourceOptions? options,
    AnalyzerProviderResource? provider,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (properties != null) {
      $result.properties = properties;
    }
    if (urn != null) {
      $result.urn = urn;
    }
    if (name != null) {
      $result.name = name;
    }
    if (options != null) {
      $result.options = options;
    }
    if (provider != null) {
      $result.provider = provider;
    }
    return $result;
  }
  AnalyzeRequest._() : super();
  factory AnalyzeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AnalyzeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..aOS(3, _omitFieldNames ? '' : 'urn')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOM<AnalyzerResourceOptions>(5, _omitFieldNames ? '' : 'options',
        subBuilder: AnalyzerResourceOptions.create)
    ..aOM<AnalyzerProviderResource>(6, _omitFieldNames ? '' : 'provider',
        subBuilder: AnalyzerProviderResource.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AnalyzeRequest clone() => AnalyzeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AnalyzeRequest copyWith(void Function(AnalyzeRequest) updates) =>
      super.copyWith((message) => updates(message as AnalyzeRequest))
          as AnalyzeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzeRequest create() => AnalyzeRequest._();
  AnalyzeRequest createEmptyInstance() => create();
  static $pb.PbList<AnalyzeRequest> createRepeated() =>
      $pb.PbList<AnalyzeRequest>();
  @$core.pragma('dart2js:noInline')
  static AnalyzeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzeRequest>(create);
  static AnalyzeRequest? _defaultInstance;

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
  $core.String get urn => $_getSZ(2);
  @$pb.TagNumber(3)
  set urn($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUrn() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrn() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  AnalyzerResourceOptions get options => $_getN(4);
  @$pb.TagNumber(5)
  set options(AnalyzerResourceOptions v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOptions() => $_has(4);
  @$pb.TagNumber(5)
  void clearOptions() => clearField(5);
  @$pb.TagNumber(5)
  AnalyzerResourceOptions ensureOptions() => $_ensure(4);

  @$pb.TagNumber(6)
  AnalyzerProviderResource get provider => $_getN(5);
  @$pb.TagNumber(6)
  set provider(AnalyzerProviderResource v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasProvider() => $_has(5);
  @$pb.TagNumber(6)
  void clearProvider() => clearField(6);
  @$pb.TagNumber(6)
  AnalyzerProviderResource ensureProvider() => $_ensure(5);
}

/// AnalyzerResource defines the view of a Pulumi-managed resource as sent to Analyzers. The properties
/// of the resource are specific to the type of analysis being performed. See the Analyzer
/// service definition for more information.
class AnalyzerResource extends $pb.GeneratedMessage {
  factory AnalyzerResource({
    $core.String? type,
    $12.Struct? properties,
    $core.String? urn,
    $core.String? name,
    AnalyzerResourceOptions? options,
    AnalyzerProviderResource? provider,
    $core.String? parent,
    $core.Iterable<$core.String>? dependencies,
    $core.Map<$core.String, AnalyzerPropertyDependencies>? propertyDependencies,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (properties != null) {
      $result.properties = properties;
    }
    if (urn != null) {
      $result.urn = urn;
    }
    if (name != null) {
      $result.name = name;
    }
    if (options != null) {
      $result.options = options;
    }
    if (provider != null) {
      $result.provider = provider;
    }
    if (parent != null) {
      $result.parent = parent;
    }
    if (dependencies != null) {
      $result.dependencies.addAll(dependencies);
    }
    if (propertyDependencies != null) {
      $result.propertyDependencies.addAll(propertyDependencies);
    }
    return $result;
  }
  AnalyzerResource._() : super();
  factory AnalyzerResource.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AnalyzerResource.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerResource',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..aOS(3, _omitFieldNames ? '' : 'urn')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOM<AnalyzerResourceOptions>(5, _omitFieldNames ? '' : 'options',
        subBuilder: AnalyzerResourceOptions.create)
    ..aOM<AnalyzerProviderResource>(6, _omitFieldNames ? '' : 'provider',
        subBuilder: AnalyzerProviderResource.create)
    ..aOS(7, _omitFieldNames ? '' : 'parent')
    ..pPS(8, _omitFieldNames ? '' : 'dependencies')
    ..m<$core.String, AnalyzerPropertyDependencies>(
        9, _omitFieldNames ? '' : 'propertyDependencies',
        protoName: 'propertyDependencies',
        entryClassName: 'AnalyzerResource.PropertyDependenciesEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: AnalyzerPropertyDependencies.create,
        valueDefaultOrMaker: AnalyzerPropertyDependencies.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AnalyzerResource clone() => AnalyzerResource()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AnalyzerResource copyWith(void Function(AnalyzerResource) updates) =>
      super.copyWith((message) => updates(message as AnalyzerResource))
          as AnalyzerResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerResource create() => AnalyzerResource._();
  AnalyzerResource createEmptyInstance() => create();
  static $pb.PbList<AnalyzerResource> createRepeated() =>
      $pb.PbList<AnalyzerResource>();
  @$core.pragma('dart2js:noInline')
  static AnalyzerResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzerResource>(create);
  static AnalyzerResource? _defaultInstance;

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
  $core.String get urn => $_getSZ(2);
  @$pb.TagNumber(3)
  set urn($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUrn() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrn() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  AnalyzerResourceOptions get options => $_getN(4);
  @$pb.TagNumber(5)
  set options(AnalyzerResourceOptions v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOptions() => $_has(4);
  @$pb.TagNumber(5)
  void clearOptions() => clearField(5);
  @$pb.TagNumber(5)
  AnalyzerResourceOptions ensureOptions() => $_ensure(4);

  @$pb.TagNumber(6)
  AnalyzerProviderResource get provider => $_getN(5);
  @$pb.TagNumber(6)
  set provider(AnalyzerProviderResource v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasProvider() => $_has(5);
  @$pb.TagNumber(6)
  void clearProvider() => clearField(6);
  @$pb.TagNumber(6)
  AnalyzerProviderResource ensureProvider() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get parent => $_getSZ(6);
  @$pb.TagNumber(7)
  set parent($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasParent() => $_has(6);
  @$pb.TagNumber(7)
  void clearParent() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.String> get dependencies => $_getList(7);

  @$pb.TagNumber(9)
  $core.Map<$core.String, AnalyzerPropertyDependencies>
      get propertyDependencies => $_getMap(8);
}

/// CustomTimeouts allows a user to be able to create a set of custom timeout parameters.
class AnalyzerResourceOptions_CustomTimeouts extends $pb.GeneratedMessage {
  factory AnalyzerResourceOptions_CustomTimeouts({
    $core.double? create_1,
    $core.double? update,
    $core.double? delete,
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
  AnalyzerResourceOptions_CustomTimeouts._() : super();
  factory AnalyzerResourceOptions_CustomTimeouts.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AnalyzerResourceOptions_CustomTimeouts.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerResourceOptions.CustomTimeouts',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'create', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'update', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'delete', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AnalyzerResourceOptions_CustomTimeouts clone() =>
      AnalyzerResourceOptions_CustomTimeouts()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AnalyzerResourceOptions_CustomTimeouts copyWith(
          void Function(AnalyzerResourceOptions_CustomTimeouts) updates) =>
      super.copyWith((message) =>
              updates(message as AnalyzerResourceOptions_CustomTimeouts))
          as AnalyzerResourceOptions_CustomTimeouts;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerResourceOptions_CustomTimeouts create() =>
      AnalyzerResourceOptions_CustomTimeouts._();
  AnalyzerResourceOptions_CustomTimeouts createEmptyInstance() => create();
  static $pb.PbList<AnalyzerResourceOptions_CustomTimeouts> createRepeated() =>
      $pb.PbList<AnalyzerResourceOptions_CustomTimeouts>();
  @$core.pragma('dart2js:noInline')
  static AnalyzerResourceOptions_CustomTimeouts getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          AnalyzerResourceOptions_CustomTimeouts>(create);
  static AnalyzerResourceOptions_CustomTimeouts? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get create_1 => $_getN(0);
  @$pb.TagNumber(1)
  set create_1($core.double v) {
    $_setDouble(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCreate_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreate_1() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get update => $_getN(1);
  @$pb.TagNumber(2)
  set update($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdate() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get delete => $_getN(2);
  @$pb.TagNumber(3)
  set delete($core.double v) {
    $_setDouble(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDelete() => $_has(2);
  @$pb.TagNumber(3)
  void clearDelete() => clearField(3);
}

/// AnalyzerResourceOptions defines the options associated with a resource.
class AnalyzerResourceOptions extends $pb.GeneratedMessage {
  factory AnalyzerResourceOptions({
    $core.bool? protect,
    $core.Iterable<$core.String>? ignoreChanges,
    $core.bool? deleteBeforeReplace,
    $core.bool? deleteBeforeReplaceDefined,
    $core.Iterable<$core.String>? additionalSecretOutputs,
    $core.Iterable<$core.String>? aliases,
    AnalyzerResourceOptions_CustomTimeouts? customTimeouts,
  }) {
    final $result = create();
    if (protect != null) {
      $result.protect = protect;
    }
    if (ignoreChanges != null) {
      $result.ignoreChanges.addAll(ignoreChanges);
    }
    if (deleteBeforeReplace != null) {
      $result.deleteBeforeReplace = deleteBeforeReplace;
    }
    if (deleteBeforeReplaceDefined != null) {
      $result.deleteBeforeReplaceDefined = deleteBeforeReplaceDefined;
    }
    if (additionalSecretOutputs != null) {
      $result.additionalSecretOutputs.addAll(additionalSecretOutputs);
    }
    if (aliases != null) {
      $result.aliases.addAll(aliases);
    }
    if (customTimeouts != null) {
      $result.customTimeouts = customTimeouts;
    }
    return $result;
  }
  AnalyzerResourceOptions._() : super();
  factory AnalyzerResourceOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AnalyzerResourceOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerResourceOptions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'protect')
    ..pPS(2, _omitFieldNames ? '' : 'ignoreChanges', protoName: 'ignoreChanges')
    ..aOB(3, _omitFieldNames ? '' : 'deleteBeforeReplace',
        protoName: 'deleteBeforeReplace')
    ..aOB(4, _omitFieldNames ? '' : 'deleteBeforeReplaceDefined',
        protoName: 'deleteBeforeReplaceDefined')
    ..pPS(5, _omitFieldNames ? '' : 'additionalSecretOutputs',
        protoName: 'additionalSecretOutputs')
    ..pPS(6, _omitFieldNames ? '' : 'aliases')
    ..aOM<AnalyzerResourceOptions_CustomTimeouts>(
        7, _omitFieldNames ? '' : 'customTimeouts',
        protoName: 'customTimeouts',
        subBuilder: AnalyzerResourceOptions_CustomTimeouts.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AnalyzerResourceOptions clone() =>
      AnalyzerResourceOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AnalyzerResourceOptions copyWith(
          void Function(AnalyzerResourceOptions) updates) =>
      super.copyWith((message) => updates(message as AnalyzerResourceOptions))
          as AnalyzerResourceOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerResourceOptions create() => AnalyzerResourceOptions._();
  AnalyzerResourceOptions createEmptyInstance() => create();
  static $pb.PbList<AnalyzerResourceOptions> createRepeated() =>
      $pb.PbList<AnalyzerResourceOptions>();
  @$core.pragma('dart2js:noInline')
  static AnalyzerResourceOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzerResourceOptions>(create);
  static AnalyzerResourceOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get protect => $_getBF(0);
  @$pb.TagNumber(1)
  set protect($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProtect() => $_has(0);
  @$pb.TagNumber(1)
  void clearProtect() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get ignoreChanges => $_getList(1);

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
  $core.bool get deleteBeforeReplaceDefined => $_getBF(3);
  @$pb.TagNumber(4)
  set deleteBeforeReplaceDefined($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDeleteBeforeReplaceDefined() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeleteBeforeReplaceDefined() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get additionalSecretOutputs => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get aliases => $_getList(5);

  @$pb.TagNumber(7)
  AnalyzerResourceOptions_CustomTimeouts get customTimeouts => $_getN(6);
  @$pb.TagNumber(7)
  set customTimeouts(AnalyzerResourceOptions_CustomTimeouts v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCustomTimeouts() => $_has(6);
  @$pb.TagNumber(7)
  void clearCustomTimeouts() => clearField(7);
  @$pb.TagNumber(7)
  AnalyzerResourceOptions_CustomTimeouts ensureCustomTimeouts() => $_ensure(6);
}

/// AnalyzerProviderResource provides information about a resource's provider.
class AnalyzerProviderResource extends $pb.GeneratedMessage {
  factory AnalyzerProviderResource({
    $core.String? type,
    $12.Struct? properties,
    $core.String? urn,
    $core.String? name,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (properties != null) {
      $result.properties = properties;
    }
    if (urn != null) {
      $result.urn = urn;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  AnalyzerProviderResource._() : super();
  factory AnalyzerProviderResource.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AnalyzerProviderResource.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerProviderResource',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..aOS(3, _omitFieldNames ? '' : 'urn')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AnalyzerProviderResource clone() =>
      AnalyzerProviderResource()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AnalyzerProviderResource copyWith(
          void Function(AnalyzerProviderResource) updates) =>
      super.copyWith((message) => updates(message as AnalyzerProviderResource))
          as AnalyzerProviderResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerProviderResource create() => AnalyzerProviderResource._();
  AnalyzerProviderResource createEmptyInstance() => create();
  static $pb.PbList<AnalyzerProviderResource> createRepeated() =>
      $pb.PbList<AnalyzerProviderResource>();
  @$core.pragma('dart2js:noInline')
  static AnalyzerProviderResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzerProviderResource>(create);
  static AnalyzerProviderResource? _defaultInstance;

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
  $core.String get urn => $_getSZ(2);
  @$pb.TagNumber(3)
  set urn($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUrn() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrn() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);
}

/// AnalyzerPropertyDependencies describes the resources that a particular property depends on.
class AnalyzerPropertyDependencies extends $pb.GeneratedMessage {
  factory AnalyzerPropertyDependencies({
    $core.Iterable<$core.String>? urns,
  }) {
    final $result = create();
    if (urns != null) {
      $result.urns.addAll(urns);
    }
    return $result;
  }
  AnalyzerPropertyDependencies._() : super();
  factory AnalyzerPropertyDependencies.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AnalyzerPropertyDependencies.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerPropertyDependencies',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'urns')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AnalyzerPropertyDependencies clone() =>
      AnalyzerPropertyDependencies()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AnalyzerPropertyDependencies copyWith(
          void Function(AnalyzerPropertyDependencies) updates) =>
      super.copyWith(
              (message) => updates(message as AnalyzerPropertyDependencies))
          as AnalyzerPropertyDependencies;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerPropertyDependencies create() =>
      AnalyzerPropertyDependencies._();
  AnalyzerPropertyDependencies createEmptyInstance() => create();
  static $pb.PbList<AnalyzerPropertyDependencies> createRepeated() =>
      $pb.PbList<AnalyzerPropertyDependencies>();
  @$core.pragma('dart2js:noInline')
  static AnalyzerPropertyDependencies getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzerPropertyDependencies>(create);
  static AnalyzerPropertyDependencies? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get urns => $_getList(0);
}

class AnalyzeStackRequest extends $pb.GeneratedMessage {
  factory AnalyzeStackRequest({
    $core.Iterable<AnalyzerResource>? resources,
  }) {
    final $result = create();
    if (resources != null) {
      $result.resources.addAll(resources);
    }
    return $result;
  }
  AnalyzeStackRequest._() : super();
  factory AnalyzeStackRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AnalyzeStackRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzeStackRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pc<AnalyzerResource>(
        1, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM,
        subBuilder: AnalyzerResource.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AnalyzeStackRequest clone() => AnalyzeStackRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AnalyzeStackRequest copyWith(void Function(AnalyzeStackRequest) updates) =>
      super.copyWith((message) => updates(message as AnalyzeStackRequest))
          as AnalyzeStackRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzeStackRequest create() => AnalyzeStackRequest._();
  AnalyzeStackRequest createEmptyInstance() => create();
  static $pb.PbList<AnalyzeStackRequest> createRepeated() =>
      $pb.PbList<AnalyzeStackRequest>();
  @$core.pragma('dart2js:noInline')
  static AnalyzeStackRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzeStackRequest>(create);
  static AnalyzeStackRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AnalyzerResource> get resources => $_getList(0);
}

class AnalyzeResponse extends $pb.GeneratedMessage {
  factory AnalyzeResponse({
    $core.Iterable<AnalyzeDiagnostic>? diagnostics,
  }) {
    final $result = create();
    if (diagnostics != null) {
      $result.diagnostics.addAll(diagnostics);
    }
    return $result;
  }
  AnalyzeResponse._() : super();
  factory AnalyzeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AnalyzeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pc<AnalyzeDiagnostic>(
        2, _omitFieldNames ? '' : 'diagnostics', $pb.PbFieldType.PM,
        subBuilder: AnalyzeDiagnostic.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AnalyzeResponse clone() => AnalyzeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AnalyzeResponse copyWith(void Function(AnalyzeResponse) updates) =>
      super.copyWith((message) => updates(message as AnalyzeResponse))
          as AnalyzeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzeResponse create() => AnalyzeResponse._();
  AnalyzeResponse createEmptyInstance() => create();
  static $pb.PbList<AnalyzeResponse> createRepeated() =>
      $pb.PbList<AnalyzeResponse>();
  @$core.pragma('dart2js:noInline')
  static AnalyzeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzeResponse>(create);
  static AnalyzeResponse? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<AnalyzeDiagnostic> get diagnostics => $_getList(0);
}

class AnalyzeDiagnostic extends $pb.GeneratedMessage {
  factory AnalyzeDiagnostic({
    $core.String? policyName,
    $core.String? policyPackName,
    $core.String? policyPackVersion,
    $core.String? description,
    $core.String? message,
    $core.Iterable<$core.String>? tags,
    EnforcementLevel? enforcementLevel,
    $core.String? urn,
  }) {
    final $result = create();
    if (policyName != null) {
      $result.policyName = policyName;
    }
    if (policyPackName != null) {
      $result.policyPackName = policyPackName;
    }
    if (policyPackVersion != null) {
      $result.policyPackVersion = policyPackVersion;
    }
    if (description != null) {
      $result.description = description;
    }
    if (message != null) {
      $result.message = message;
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (enforcementLevel != null) {
      $result.enforcementLevel = enforcementLevel;
    }
    if (urn != null) {
      $result.urn = urn;
    }
    return $result;
  }
  AnalyzeDiagnostic._() : super();
  factory AnalyzeDiagnostic.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AnalyzeDiagnostic.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzeDiagnostic',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'policyName', protoName: 'policyName')
    ..aOS(2, _omitFieldNames ? '' : 'policyPackName',
        protoName: 'policyPackName')
    ..aOS(3, _omitFieldNames ? '' : 'policyPackVersion',
        protoName: 'policyPackVersion')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOS(5, _omitFieldNames ? '' : 'message')
    ..pPS(6, _omitFieldNames ? '' : 'tags')
    ..e<EnforcementLevel>(
        7, _omitFieldNames ? '' : 'enforcementLevel', $pb.PbFieldType.OE,
        protoName: 'enforcementLevel',
        defaultOrMaker: EnforcementLevel.ADVISORY,
        valueOf: EnforcementLevel.valueOf,
        enumValues: EnforcementLevel.values)
    ..aOS(8, _omitFieldNames ? '' : 'urn')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AnalyzeDiagnostic clone() => AnalyzeDiagnostic()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AnalyzeDiagnostic copyWith(void Function(AnalyzeDiagnostic) updates) =>
      super.copyWith((message) => updates(message as AnalyzeDiagnostic))
          as AnalyzeDiagnostic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzeDiagnostic create() => AnalyzeDiagnostic._();
  AnalyzeDiagnostic createEmptyInstance() => create();
  static $pb.PbList<AnalyzeDiagnostic> createRepeated() =>
      $pb.PbList<AnalyzeDiagnostic>();
  @$core.pragma('dart2js:noInline')
  static AnalyzeDiagnostic getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzeDiagnostic>(create);
  static AnalyzeDiagnostic? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get policyName => $_getSZ(0);
  @$pb.TagNumber(1)
  set policyName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPolicyName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPolicyName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get policyPackName => $_getSZ(1);
  @$pb.TagNumber(2)
  set policyPackName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPolicyPackName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPolicyPackName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get policyPackVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set policyPackVersion($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPolicyPackVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearPolicyPackVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get tags => $_getList(5);

  @$pb.TagNumber(7)
  EnforcementLevel get enforcementLevel => $_getN(6);
  @$pb.TagNumber(7)
  set enforcementLevel(EnforcementLevel v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasEnforcementLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearEnforcementLevel() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get urn => $_getSZ(7);
  @$pb.TagNumber(8)
  set urn($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasUrn() => $_has(7);
  @$pb.TagNumber(8)
  void clearUrn() => clearField(8);
}

/// Remediation is a single resource remediation result.
class Remediation extends $pb.GeneratedMessage {
  factory Remediation({
    $core.String? policyName,
    $core.String? policyPackName,
    $core.String? policyPackVersion,
    $core.String? description,
    $12.Struct? properties,
    $core.String? diagnostic,
  }) {
    final $result = create();
    if (policyName != null) {
      $result.policyName = policyName;
    }
    if (policyPackName != null) {
      $result.policyPackName = policyPackName;
    }
    if (policyPackVersion != null) {
      $result.policyPackVersion = policyPackVersion;
    }
    if (description != null) {
      $result.description = description;
    }
    if (properties != null) {
      $result.properties = properties;
    }
    if (diagnostic != null) {
      $result.diagnostic = diagnostic;
    }
    return $result;
  }
  Remediation._() : super();
  factory Remediation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Remediation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Remediation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'policyName', protoName: 'policyName')
    ..aOS(2, _omitFieldNames ? '' : 'policyPackName',
        protoName: 'policyPackName')
    ..aOS(3, _omitFieldNames ? '' : 'policyPackVersion',
        protoName: 'policyPackVersion')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOM<$12.Struct>(5, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..aOS(6, _omitFieldNames ? '' : 'diagnostic')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Remediation clone() => Remediation()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Remediation copyWith(void Function(Remediation) updates) =>
      super.copyWith((message) => updates(message as Remediation))
          as Remediation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Remediation create() => Remediation._();
  Remediation createEmptyInstance() => create();
  static $pb.PbList<Remediation> createRepeated() => $pb.PbList<Remediation>();
  @$core.pragma('dart2js:noInline')
  static Remediation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Remediation>(create);
  static Remediation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get policyName => $_getSZ(0);
  @$pb.TagNumber(1)
  set policyName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPolicyName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPolicyName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get policyPackName => $_getSZ(1);
  @$pb.TagNumber(2)
  set policyPackName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPolicyPackName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPolicyPackName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get policyPackVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set policyPackVersion($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPolicyPackVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearPolicyPackVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

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
  $core.String get diagnostic => $_getSZ(5);
  @$pb.TagNumber(6)
  set diagnostic($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDiagnostic() => $_has(5);
  @$pb.TagNumber(6)
  void clearDiagnostic() => clearField(6);
}

/// RemediateResponse contains a sequence of remediations applied, in order.
class RemediateResponse extends $pb.GeneratedMessage {
  factory RemediateResponse({
    $core.Iterable<Remediation>? remediations,
  }) {
    final $result = create();
    if (remediations != null) {
      $result.remediations.addAll(remediations);
    }
    return $result;
  }
  RemediateResponse._() : super();
  factory RemediateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RemediateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemediateResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pc<Remediation>(
        1, _omitFieldNames ? '' : 'remediations', $pb.PbFieldType.PM,
        subBuilder: Remediation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RemediateResponse clone() => RemediateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RemediateResponse copyWith(void Function(RemediateResponse) updates) =>
      super.copyWith((message) => updates(message as RemediateResponse))
          as RemediateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemediateResponse create() => RemediateResponse._();
  RemediateResponse createEmptyInstance() => create();
  static $pb.PbList<RemediateResponse> createRepeated() =>
      $pb.PbList<RemediateResponse>();
  @$core.pragma('dart2js:noInline')
  static RemediateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemediateResponse>(create);
  static RemediateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Remediation> get remediations => $_getList(0);
}

/// AnalyzerInfo provides metadata about a PolicyPack inside an analyzer.
class AnalyzerInfo extends $pb.GeneratedMessage {
  factory AnalyzerInfo({
    $core.String? name,
    $core.String? displayName,
    $core.Iterable<PolicyInfo>? policies,
    $core.String? version,
    $core.bool? supportsConfig,
    $core.Map<$core.String, PolicyConfig>? initialConfig,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (displayName != null) {
      $result.displayName = displayName;
    }
    if (policies != null) {
      $result.policies.addAll(policies);
    }
    if (version != null) {
      $result.version = version;
    }
    if (supportsConfig != null) {
      $result.supportsConfig = supportsConfig;
    }
    if (initialConfig != null) {
      $result.initialConfig.addAll(initialConfig);
    }
    return $result;
  }
  AnalyzerInfo._() : super();
  factory AnalyzerInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AnalyzerInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnalyzerInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'displayName', protoName: 'displayName')
    ..pc<PolicyInfo>(3, _omitFieldNames ? '' : 'policies', $pb.PbFieldType.PM,
        subBuilder: PolicyInfo.create)
    ..aOS(4, _omitFieldNames ? '' : 'version')
    ..aOB(5, _omitFieldNames ? '' : 'supportsConfig',
        protoName: 'supportsConfig')
    ..m<$core.String, PolicyConfig>(6, _omitFieldNames ? '' : 'initialConfig',
        protoName: 'initialConfig',
        entryClassName: 'AnalyzerInfo.InitialConfigEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: PolicyConfig.create,
        valueDefaultOrMaker: PolicyConfig.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AnalyzerInfo clone() => AnalyzerInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AnalyzerInfo copyWith(void Function(AnalyzerInfo) updates) =>
      super.copyWith((message) => updates(message as AnalyzerInfo))
          as AnalyzerInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalyzerInfo create() => AnalyzerInfo._();
  AnalyzerInfo createEmptyInstance() => create();
  static $pb.PbList<AnalyzerInfo> createRepeated() =>
      $pb.PbList<AnalyzerInfo>();
  @$core.pragma('dart2js:noInline')
  static AnalyzerInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnalyzerInfo>(create);
  static AnalyzerInfo? _defaultInstance;

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
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<PolicyInfo> get policies => $_getList(2);

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
  $core.bool get supportsConfig => $_getBF(4);
  @$pb.TagNumber(5)
  set supportsConfig($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSupportsConfig() => $_has(4);
  @$pb.TagNumber(5)
  void clearSupportsConfig() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.String, PolicyConfig> get initialConfig => $_getMap(5);
}

/// PolicyInfo provides metadata about a policy within a Policy Pack.
class PolicyInfo extends $pb.GeneratedMessage {
  factory PolicyInfo({
    $core.String? name,
    $core.String? displayName,
    $core.String? description,
    $core.String? message,
    EnforcementLevel? enforcementLevel,
    PolicyConfigSchema? configSchema,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (displayName != null) {
      $result.displayName = displayName;
    }
    if (description != null) {
      $result.description = description;
    }
    if (message != null) {
      $result.message = message;
    }
    if (enforcementLevel != null) {
      $result.enforcementLevel = enforcementLevel;
    }
    if (configSchema != null) {
      $result.configSchema = configSchema;
    }
    return $result;
  }
  PolicyInfo._() : super();
  factory PolicyInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PolicyInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PolicyInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'displayName', protoName: 'displayName')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'message')
    ..e<EnforcementLevel>(
        5, _omitFieldNames ? '' : 'enforcementLevel', $pb.PbFieldType.OE,
        protoName: 'enforcementLevel',
        defaultOrMaker: EnforcementLevel.ADVISORY,
        valueOf: EnforcementLevel.valueOf,
        enumValues: EnforcementLevel.values)
    ..aOM<PolicyConfigSchema>(6, _omitFieldNames ? '' : 'configSchema',
        protoName: 'configSchema', subBuilder: PolicyConfigSchema.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PolicyInfo clone() => PolicyInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PolicyInfo copyWith(void Function(PolicyInfo) updates) =>
      super.copyWith((message) => updates(message as PolicyInfo)) as PolicyInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolicyInfo create() => PolicyInfo._();
  PolicyInfo createEmptyInstance() => create();
  static $pb.PbList<PolicyInfo> createRepeated() => $pb.PbList<PolicyInfo>();
  @$core.pragma('dart2js:noInline')
  static PolicyInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PolicyInfo>(create);
  static PolicyInfo? _defaultInstance;

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
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => clearField(4);

  @$pb.TagNumber(5)
  EnforcementLevel get enforcementLevel => $_getN(4);
  @$pb.TagNumber(5)
  set enforcementLevel(EnforcementLevel v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasEnforcementLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnforcementLevel() => clearField(5);

  @$pb.TagNumber(6)
  PolicyConfigSchema get configSchema => $_getN(5);
  @$pb.TagNumber(6)
  set configSchema(PolicyConfigSchema v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasConfigSchema() => $_has(5);
  @$pb.TagNumber(6)
  void clearConfigSchema() => clearField(6);
  @$pb.TagNumber(6)
  PolicyConfigSchema ensureConfigSchema() => $_ensure(5);
}

/// PolicyConfigSchema provides the schema for a policy's configuration.
class PolicyConfigSchema extends $pb.GeneratedMessage {
  factory PolicyConfigSchema({
    $12.Struct? properties,
    $core.Iterable<$core.String>? required,
  }) {
    final $result = create();
    if (properties != null) {
      $result.properties = properties;
    }
    if (required != null) {
      $result.required.addAll(required);
    }
    return $result;
  }
  PolicyConfigSchema._() : super();
  factory PolicyConfigSchema.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PolicyConfigSchema.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PolicyConfigSchema',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<$12.Struct>(1, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..pPS(2, _omitFieldNames ? '' : 'required')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PolicyConfigSchema clone() => PolicyConfigSchema()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PolicyConfigSchema copyWith(void Function(PolicyConfigSchema) updates) =>
      super.copyWith((message) => updates(message as PolicyConfigSchema))
          as PolicyConfigSchema;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolicyConfigSchema create() => PolicyConfigSchema._();
  PolicyConfigSchema createEmptyInstance() => create();
  static $pb.PbList<PolicyConfigSchema> createRepeated() =>
      $pb.PbList<PolicyConfigSchema>();
  @$core.pragma('dart2js:noInline')
  static PolicyConfigSchema getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PolicyConfigSchema>(create);
  static PolicyConfigSchema? _defaultInstance;

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
  $core.List<$core.String> get required => $_getList(1);
}

/// PolicyConfig provides configuration for a policy.
class PolicyConfig extends $pb.GeneratedMessage {
  factory PolicyConfig({
    EnforcementLevel? enforcementLevel,
    $12.Struct? properties,
  }) {
    final $result = create();
    if (enforcementLevel != null) {
      $result.enforcementLevel = enforcementLevel;
    }
    if (properties != null) {
      $result.properties = properties;
    }
    return $result;
  }
  PolicyConfig._() : super();
  factory PolicyConfig.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PolicyConfig.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PolicyConfig',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..e<EnforcementLevel>(
        1, _omitFieldNames ? '' : 'enforcementLevel', $pb.PbFieldType.OE,
        protoName: 'enforcementLevel',
        defaultOrMaker: EnforcementLevel.ADVISORY,
        valueOf: EnforcementLevel.valueOf,
        enumValues: EnforcementLevel.values)
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: $12.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PolicyConfig clone() => PolicyConfig()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PolicyConfig copyWith(void Function(PolicyConfig) updates) =>
      super.copyWith((message) => updates(message as PolicyConfig))
          as PolicyConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolicyConfig create() => PolicyConfig._();
  PolicyConfig createEmptyInstance() => create();
  static $pb.PbList<PolicyConfig> createRepeated() =>
      $pb.PbList<PolicyConfig>();
  @$core.pragma('dart2js:noInline')
  static PolicyConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PolicyConfig>(create);
  static PolicyConfig? _defaultInstance;

  @$pb.TagNumber(1)
  EnforcementLevel get enforcementLevel => $_getN(0);
  @$pb.TagNumber(1)
  set enforcementLevel(EnforcementLevel v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEnforcementLevel() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnforcementLevel() => clearField(1);

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

/// ConfigureAnalyzerRequest provides configuration information to the analyzer.
class ConfigureAnalyzerRequest extends $pb.GeneratedMessage {
  factory ConfigureAnalyzerRequest({
    $core.Map<$core.String, PolicyConfig>? policyConfig,
  }) {
    final $result = create();
    if (policyConfig != null) {
      $result.policyConfig.addAll(policyConfig);
    }
    return $result;
  }
  ConfigureAnalyzerRequest._() : super();
  factory ConfigureAnalyzerRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConfigureAnalyzerRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfigureAnalyzerRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..m<$core.String, PolicyConfig>(1, _omitFieldNames ? '' : 'policyConfig',
        protoName: 'policyConfig',
        entryClassName: 'ConfigureAnalyzerRequest.PolicyConfigEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: PolicyConfig.create,
        valueDefaultOrMaker: PolicyConfig.getDefault,
        packageName: const $pb.PackageName('pulumirpc'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConfigureAnalyzerRequest clone() =>
      ConfigureAnalyzerRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConfigureAnalyzerRequest copyWith(
          void Function(ConfigureAnalyzerRequest) updates) =>
      super.copyWith((message) => updates(message as ConfigureAnalyzerRequest))
          as ConfigureAnalyzerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigureAnalyzerRequest create() => ConfigureAnalyzerRequest._();
  ConfigureAnalyzerRequest createEmptyInstance() => create();
  static $pb.PbList<ConfigureAnalyzerRequest> createRepeated() =>
      $pb.PbList<ConfigureAnalyzerRequest>();
  @$core.pragma('dart2js:noInline')
  static ConfigureAnalyzerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfigureAnalyzerRequest>(create);
  static ConfigureAnalyzerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, PolicyConfig> get policyConfig => $_getMap(0);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
