// This is a generated file - do not edit.
//
// Generated from pulumi/alias.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

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
    final result = create();
    if (name != null) result.name = name;
    if (type != null) result.type = type;
    if (stack != null) result.stack = stack;
    if (project != null) result.project = project;
    if (parentUrn != null) result.parentUrn = parentUrn;
    if (noParent != null) result.noParent = noParent;
    return result;
  }

  Alias_Spec._();

  factory Alias_Spec.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Alias_Spec.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

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

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Alias_Spec clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Alias_Spec copyWith(void Function(Alias_Spec) updates) =>
      super.copyWith((message) => updates(message as Alias_Spec)) as Alias_Spec;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Alias_Spec create() => Alias_Spec._();
  @$core.override
  Alias_Spec createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Alias_Spec getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Alias_Spec>(create);
  static Alias_Spec? _defaultInstance;

  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  Alias_Spec_Parent whichParent() => _Alias_Spec_ParentByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearParent() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get stack => $_getSZ(2);
  @$pb.TagNumber(3)
  set stack($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStack() => $_has(2);
  @$pb.TagNumber(3)
  void clearStack() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get project => $_getSZ(3);
  @$pb.TagNumber(4)
  set project($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasProject() => $_has(3);
  @$pb.TagNumber(4)
  void clearProject() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get parentUrn => $_getSZ(4);
  @$pb.TagNumber(5)
  set parentUrn($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasParentUrn() => $_has(4);
  @$pb.TagNumber(5)
  void clearParentUrn() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get noParent => $_getBF(5);
  @$pb.TagNumber(6)
  set noParent($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasNoParent() => $_has(5);
  @$pb.TagNumber(6)
  void clearNoParent() => $_clearField(6);
}

enum Alias_Alias { urn, spec, notSet }

class Alias extends $pb.GeneratedMessage {
  factory Alias({
    $core.String? urn,
    Alias_Spec? spec,
  }) {
    final result = create();
    if (urn != null) result.urn = urn;
    if (spec != null) result.spec = spec;
    return result;
  }

  Alias._();

  factory Alias.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Alias.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

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

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Alias clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Alias copyWith(void Function(Alias) updates) =>
      super.copyWith((message) => updates(message as Alias)) as Alias;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Alias create() => Alias._();
  @$core.override
  Alias createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Alias getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Alias>(create);
  static Alias? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  Alias_Alias whichAlias() => _Alias_AliasByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearAlias() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get urn => $_getSZ(0);
  @$pb.TagNumber(1)
  set urn($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrn() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrn() => $_clearField(1);

  @$pb.TagNumber(2)
  Alias_Spec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(Alias_Spec value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => $_clearField(2);
  @$pb.TagNumber(2)
  Alias_Spec ensureSpec() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
