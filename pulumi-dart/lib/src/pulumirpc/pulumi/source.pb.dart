// This is a generated file - do not edit.
//
// Generated from pulumi/source.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// A SourcePosition represents a position in a source file.
class SourcePosition extends $pb.GeneratedMessage {
  factory SourcePosition({
    $core.String? uri,
    $core.int? line,
    $core.int? column,
  }) {
    final result = create();
    if (uri != null) result.uri = uri;
    if (line != null) result.line = line;
    if (column != null) result.column = column;
    return result;
  }

  SourcePosition._();

  factory SourcePosition.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SourcePosition.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SourcePosition',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uri')
    ..aI(2, _omitFieldNames ? '' : 'line')
    ..aI(3, _omitFieldNames ? '' : 'column')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SourcePosition clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SourcePosition copyWith(void Function(SourcePosition) updates) =>
      super.copyWith((message) => updates(message as SourcePosition))
          as SourcePosition;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SourcePosition create() => SourcePosition._();
  @$core.override
  SourcePosition createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SourcePosition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SourcePosition>(create);
  static SourcePosition? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uri => $_getSZ(0);
  @$pb.TagNumber(1)
  set uri($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearUri() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get line => $_getIZ(1);
  @$pb.TagNumber(2)
  set line($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLine() => $_has(1);
  @$pb.TagNumber(2)
  void clearLine() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get column => $_getIZ(2);
  @$pb.TagNumber(3)
  set column($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasColumn() => $_has(2);
  @$pb.TagNumber(3)
  void clearColumn() => $_clearField(3);
}

/// A StackFrame represents a single stack frame.
class StackFrame extends $pb.GeneratedMessage {
  factory StackFrame({
    SourcePosition? pc,
  }) {
    final result = create();
    if (pc != null) result.pc = pc;
    return result;
  }

  StackFrame._();

  factory StackFrame.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StackFrame.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StackFrame',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..aOM<SourcePosition>(1, _omitFieldNames ? '' : 'pc',
        subBuilder: SourcePosition.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StackFrame clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StackFrame copyWith(void Function(StackFrame) updates) =>
      super.copyWith((message) => updates(message as StackFrame)) as StackFrame;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StackFrame create() => StackFrame._();
  @$core.override
  StackFrame createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StackFrame getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StackFrame>(create);
  static StackFrame? _defaultInstance;

  @$pb.TagNumber(1)
  SourcePosition get pc => $_getN(0);
  @$pb.TagNumber(1)
  set pc(SourcePosition value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPc() => $_has(0);
  @$pb.TagNumber(1)
  void clearPc() => $_clearField(1);
  @$pb.TagNumber(1)
  SourcePosition ensurePc() => $_ensure(0);
}

/// A StackTrace represents the frames on the stack at the point of an RPC call.
class StackTrace extends $pb.GeneratedMessage {
  factory StackTrace({
    $core.Iterable<StackFrame>? frames,
  }) {
    final result = create();
    if (frames != null) result.frames.addAll(frames);
    return result;
  }

  StackTrace._();

  factory StackTrace.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StackTrace.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StackTrace',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc'),
      createEmptyInstance: create)
    ..pPM<StackFrame>(1, _omitFieldNames ? '' : 'frames',
        subBuilder: StackFrame.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StackTrace clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StackTrace copyWith(void Function(StackTrace) updates) =>
      super.copyWith((message) => updates(message as StackTrace)) as StackTrace;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StackTrace create() => StackTrace._();
  @$core.override
  StackTrace createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StackTrace getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StackTrace>(create);
  static StackTrace? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<StackFrame> get frames => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
