// This is a generated file - do not edit.
//
// Generated from pulumi/codegen/hcl.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'hcl.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'hcl.pbenum.dart';

/// Pos represents a single position in a source file, by addressing the start byte of a unicode character
/// encoded in UTF-8.
class Pos extends $pb.GeneratedMessage {
  factory Pos({
    $fixnum.Int64? line,
    $fixnum.Int64? column,
    $fixnum.Int64? byte,
  }) {
    final result = create();
    if (line != null) result.line = line;
    if (column != null) result.column = column;
    if (byte != null) result.byte = byte;
    return result;
  }

  Pos._();

  factory Pos.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Pos.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Pos',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.codegen'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'line')
    ..aInt64(2, _omitFieldNames ? '' : 'column')
    ..aInt64(3, _omitFieldNames ? '' : 'byte')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pos clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pos copyWith(void Function(Pos) updates) =>
      super.copyWith((message) => updates(message as Pos)) as Pos;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pos create() => Pos._();
  @$core.override
  Pos createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Pos getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pos>(create);
  static Pos? _defaultInstance;

  /// Line is the source code line where this position points. Lines are counted starting at 1 and
  /// incremented for each newline character encountered.
  @$pb.TagNumber(1)
  $fixnum.Int64 get line => $_getI64(0);
  @$pb.TagNumber(1)
  set line($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLine() => $_has(0);
  @$pb.TagNumber(1)
  void clearLine() => $_clearField(1);

  /// Column is the source code column where this position points, in unicode characters, with counting
  /// starting at 1.
  ///
  /// Column counts characters as they appear visually, so for example a latin letter with a combining
  /// diacritic mark counts as one character. This is intended for rendering visual markers against source
  /// code in contexts where these diacritics would be rendered in a single character cell. Technically
  /// speaking, Column is counting grapheme clusters as used in unicode normalization.
  @$pb.TagNumber(2)
  $fixnum.Int64 get column => $_getI64(1);
  @$pb.TagNumber(2)
  set column($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasColumn() => $_has(1);
  @$pb.TagNumber(2)
  void clearColumn() => $_clearField(2);

  /// Byte is the byte offset into the file where the indicated character begins. This is a zero-based offset
  /// to the first byte of the first UTF-8 codepoint sequence in the character, and thus gives a position
  /// that can be resolved _without_ awareness of Unicode characters.
  @$pb.TagNumber(3)
  $fixnum.Int64 get byte => $_getI64(2);
  @$pb.TagNumber(3)
  set byte($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasByte() => $_has(2);
  @$pb.TagNumber(3)
  void clearByte() => $_clearField(3);
}

/// Range represents a span of characters between two positions in a source file.
class Range extends $pb.GeneratedMessage {
  factory Range({
    $core.String? filename,
    Pos? start,
    Pos? end,
  }) {
    final result = create();
    if (filename != null) result.filename = filename;
    if (start != null) result.start = start;
    if (end != null) result.end = end;
    return result;
  }

  Range._();

  factory Range.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Range.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Range',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.codegen'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'filename')
    ..aOM<Pos>(2, _omitFieldNames ? '' : 'start', subBuilder: Pos.create)
    ..aOM<Pos>(3, _omitFieldNames ? '' : 'end', subBuilder: Pos.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Range clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Range copyWith(void Function(Range) updates) =>
      super.copyWith((message) => updates(message as Range)) as Range;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Range create() => Range._();
  @$core.override
  Range createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Range getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Range>(create);
  static Range? _defaultInstance;

  /// Filename is the name of the file into which this range's positions point.
  @$pb.TagNumber(1)
  $core.String get filename => $_getSZ(0);
  @$pb.TagNumber(1)
  set filename($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFilename() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilename() => $_clearField(1);

  /// Start and End represent the bounds of this range. Start is inclusive and End is exclusive.
  @$pb.TagNumber(2)
  Pos get start => $_getN(1);
  @$pb.TagNumber(2)
  set start(Pos value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStart() => $_has(1);
  @$pb.TagNumber(2)
  void clearStart() => $_clearField(2);
  @$pb.TagNumber(2)
  Pos ensureStart() => $_ensure(1);

  @$pb.TagNumber(3)
  Pos get end => $_getN(2);
  @$pb.TagNumber(3)
  set end(Pos value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasEnd() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnd() => $_clearField(3);
  @$pb.TagNumber(3)
  Pos ensureEnd() => $_ensure(2);
}

/// Diagnostic represents information to be presented to a user about an error or anomaly in parsing or evaluating configuration.
class Diagnostic extends $pb.GeneratedMessage {
  factory Diagnostic({
    DiagnosticSeverity? severity,
    $core.String? summary,
    $core.String? detail,
    Range? subject,
    Range? context,
  }) {
    final result = create();
    if (severity != null) result.severity = severity;
    if (summary != null) result.summary = summary;
    if (detail != null) result.detail = detail;
    if (subject != null) result.subject = subject;
    if (context != null) result.context = context;
    return result;
  }

  Diagnostic._();

  factory Diagnostic.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Diagnostic.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Diagnostic',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.codegen'),
      createEmptyInstance: create)
    ..aE<DiagnosticSeverity>(1, _omitFieldNames ? '' : 'severity',
        enumValues: DiagnosticSeverity.values)
    ..aOS(2, _omitFieldNames ? '' : 'summary')
    ..aOS(3, _omitFieldNames ? '' : 'detail')
    ..aOM<Range>(4, _omitFieldNames ? '' : 'subject', subBuilder: Range.create)
    ..aOM<Range>(5, _omitFieldNames ? '' : 'context', subBuilder: Range.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Diagnostic clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Diagnostic copyWith(void Function(Diagnostic) updates) =>
      super.copyWith((message) => updates(message as Diagnostic)) as Diagnostic;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Diagnostic create() => Diagnostic._();
  @$core.override
  Diagnostic createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Diagnostic getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Diagnostic>(create);
  static Diagnostic? _defaultInstance;

  @$pb.TagNumber(1)
  DiagnosticSeverity get severity => $_getN(0);
  @$pb.TagNumber(1)
  set severity(DiagnosticSeverity value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSeverity() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeverity() => $_clearField(1);

  /// Summary and Detail contain the English-language description of the
  /// problem. Summary is a terse description of the general problem and
  /// detail is a more elaborate, often-multi-sentence description of
  /// the problem and what might be done to solve it.
  @$pb.TagNumber(2)
  $core.String get summary => $_getSZ(1);
  @$pb.TagNumber(2)
  set summary($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummary() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get detail => $_getSZ(2);
  @$pb.TagNumber(3)
  set detail($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDetail() => $_has(2);
  @$pb.TagNumber(3)
  void clearDetail() => $_clearField(3);

  /// Subject and Context are both source ranges relating to the diagnostic.
  ///
  /// Subject is a tight range referring to exactly the construct that
  /// is problematic, while Context is an optional broader range (which should
  /// fully contain Subject) that ought to be shown around Subject when
  /// generating isolated source-code snippets in diagnostic messages.
  /// If Context is nil, the Subject is also the Context.
  ///
  /// Some diagnostics have no source ranges at all. If Context is set then
  /// Subject should always also be set.
  @$pb.TagNumber(4)
  Range get subject => $_getN(3);
  @$pb.TagNumber(4)
  set subject(Range value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSubject() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubject() => $_clearField(4);
  @$pb.TagNumber(4)
  Range ensureSubject() => $_ensure(3);

  @$pb.TagNumber(5)
  Range get context => $_getN(4);
  @$pb.TagNumber(5)
  set context(Range value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasContext() => $_has(4);
  @$pb.TagNumber(5)
  void clearContext() => $_clearField(5);
  @$pb.TagNumber(5)
  Range ensureContext() => $_ensure(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
