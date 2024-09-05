//
//  Generated code. Do not modify.
//  source: pulumi/alias.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

enum Alias_Spec_Parent { parentUrn, noParent, notSet }

class Alias_Spec extends $pb.GeneratedMessage {
  factory Alias_Spec({
    $core.String? name,
    $core.String? type,
    $core.String? stack,
    $core.String? project,
    $core.String? parentUrn,
    $core.bool? noParent,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (type != null) {
      $result.type = type;
    }
    if (stack != null) {
      $result.stack = stack;
    }
    if (project != null) {
      $result.project = project;
    }
    if (parentUrn != null) {
      $result.parentUrn = parentUrn;
    }
    if (noParent != null) {
      $result.noParent = noParent;
    }
    return $result;
  }
  Alias_Spec._() : super();
  factory Alias_Spec.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Alias_Spec.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Alias_Spec_Parent> _Alias_Spec_ParentByTag =
      {
    5: Alias_Spec_Parent.parentUrn,
    6: Alias_Spec_Parent.noParent,
    0: Alias_Spec_Parent.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Alias.Spec',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..oo(0, [5, 6])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..aOS(3, _omitFieldNames ? '' : 'stack')
    ..aOS(4, _omitFieldNames ? '' : 'project')
    ..aOS(5, _omitFieldNames ? '' : 'parentUrn', protoName: 'parentUrn')
    ..aOB(6, _omitFieldNames ? '' : 'noParent', protoName: 'noParent')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Alias_Spec clone() => Alias_Spec()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Alias_Spec copyWith(void Function(Alias_Spec) updates) =>
      super.copyWith((message) => updates(message as Alias_Spec)) as Alias_Spec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Alias_Spec create() => Alias_Spec._();
  Alias_Spec createEmptyInstance() => create();
  static $pb.PbList<Alias_Spec> createRepeated() => $pb.PbList<Alias_Spec>();
  @$core.pragma('dart2js:noInline')
  static Alias_Spec getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Alias_Spec>(create);
  static Alias_Spec? _defaultInstance;

  Alias_Spec_Parent whichParent() => _Alias_Spec_ParentByTag[$_whichOneof(0)]!;
  void clearParent() => clearField($_whichOneof(0));

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
  $core.String get stack => $_getSZ(2);
  @$pb.TagNumber(3)
  set stack($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStack() => $_has(2);
  @$pb.TagNumber(3)
  void clearStack() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get project => $_getSZ(3);
  @$pb.TagNumber(4)
  set project($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasProject() => $_has(3);
  @$pb.TagNumber(4)
  void clearProject() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get parentUrn => $_getSZ(4);
  @$pb.TagNumber(5)
  set parentUrn($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasParentUrn() => $_has(4);
  @$pb.TagNumber(5)
  void clearParentUrn() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get noParent => $_getBF(5);
  @$pb.TagNumber(6)
  set noParent($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasNoParent() => $_has(5);
  @$pb.TagNumber(6)
  void clearNoParent() => clearField(6);
}

enum Alias_Alias { urn, spec, notSet }

class Alias extends $pb.GeneratedMessage {
  factory Alias({
    $core.String? urn,
    Alias_Spec? spec,
  }) {
    final $result = create();
    if (urn != null) {
      $result.urn = urn;
    }
    if (spec != null) {
      $result.spec = spec;
    }
    return $result;
  }
  Alias._() : super();
  factory Alias.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Alias.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Alias_Alias> _Alias_AliasByTag = {
    1: Alias_Alias.urn,
    2: Alias_Alias.spec,
    0: Alias_Alias.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Alias',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOS(1, _omitFieldNames ? '' : 'urn')
    ..aOM<Alias_Spec>(2, _omitFieldNames ? '' : 'spec',
        subBuilder: Alias_Spec.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Alias clone() => Alias()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Alias copyWith(void Function(Alias) updates) =>
      super.copyWith((message) => updates(message as Alias)) as Alias;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Alias create() => Alias._();
  Alias createEmptyInstance() => create();
  static $pb.PbList<Alias> createRepeated() => $pb.PbList<Alias>();
  @$core.pragma('dart2js:noInline')
  static Alias getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Alias>(create);
  static Alias? _defaultInstance;

  Alias_Alias whichAlias() => _Alias_AliasByTag[$_whichOneof(0)]!;
  void clearAlias() => clearField($_whichOneof(0));

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
  Alias_Spec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(Alias_Spec v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  Alias_Spec ensureSpec() => $_ensure(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
