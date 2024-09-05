//
//  Generated code. Do not modify.
//  source: pulumi/codegen/hcl.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'hcl.pbenum.dart';

export 'hcl.pbenum.dart';

/// Pos represents a single position in a source file, by addressing the start byte of a unicode character
/// encoded in UTF-8.
class Pos extends $pb.GeneratedMessage {
  factory Pos({
    $fixnum.Int64? line,
    $fixnum.Int64? column,
    $fixnum.Int64? byte,
  }) {
    final $result = create();
    if (line != null) {
      $result.line = line;
    }
    if (column != null) {
      $result.column = column;
    }
    if (byte != null) {
      $result.byte = byte;
    }
    return $result;
  }
  Pos._() : super();
  factory Pos.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Pos.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Pos',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.codegen'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'line')
    ..aInt64(2, _omitFieldNames ? '' : 'column')
    ..aInt64(3, _omitFieldNames ? '' : 'byte')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Pos clone() => Pos()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Pos copyWith(void Function(Pos) updates) =>
      super.copyWith((message) => updates(message as Pos)) as Pos;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pos create() => Pos._();
  Pos createEmptyInstance() => create();
  static $pb.PbList<Pos> createRepeated() => $pb.PbList<Pos>();
  @$core.pragma('dart2js:noInline')
  static Pos getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pos>(create);
  static Pos? _defaultInstance;

  /// Line is the source code line where this position points. Lines are counted starting at 1 and
  /// incremented for each newline character encountered.
  @$pb.TagNumber(1)
  $fixnum.Int64 get line => $_getI64(0);
  @$pb.TagNumber(1)
  set line($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLine() => $_has(0);
  @$pb.TagNumber(1)
  void clearLine() => clearField(1);

  ///  Column is the source code column where this position points, in unicode characters, with counting
  ///  starting at 1.
  ///
  ///  Column counts characters as they appear visually, so for example a latin letter with a combining
  ///  diacritic mark counts as one character. This is intended for rendering visual markers against source
  ///  code in contexts where these diacritics would be rendered in a single character cell. Technically
  ///  speaking, Column is counting grapheme clusters as used in unicode normalization.
  @$pb.TagNumber(2)
  $fixnum.Int64 get column => $_getI64(1);
  @$pb.TagNumber(2)
  set column($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasColumn() => $_has(1);
  @$pb.TagNumber(2)
  void clearColumn() => clearField(2);

  /// Byte is the byte offset into the file where the indicated character begins. This is a zero-based offset
  /// to the first byte of the first UTF-8 codepoint sequence in the character, and thus gives a position
  /// that can be resolved _without_ awareness of Unicode characters.
  @$pb.TagNumber(3)
  $fixnum.Int64 get byte => $_getI64(2);
  @$pb.TagNumber(3)
  set byte($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasByte() => $_has(2);
  @$pb.TagNumber(3)
  void clearByte() => clearField(3);
}

/// Range represents a span of characters between two positions in a source file.
class Range extends $pb.GeneratedMessage {
  factory Range({
    $core.String? filename,
    Pos? start,
    Pos? end,
  }) {
    final $result = create();
    if (filename != null) {
      $result.filename = filename;
    }
    if (start != null) {
      $result.start = start;
    }
    if (end != null) {
      $result.end = end;
    }
    return $result;
  }
  Range._() : super();
  factory Range.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Range.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Range',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.codegen'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'filename')
    ..aOM<Pos>(2, _omitFieldNames ? '' : 'start', subBuilder: Pos.create)
    ..aOM<Pos>(3, _omitFieldNames ? '' : 'end', subBuilder: Pos.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Range clone() => Range()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Range copyWith(void Function(Range) updates) =>
      super.copyWith((message) => updates(message as Range)) as Range;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Range create() => Range._();
  Range createEmptyInstance() => create();
  static $pb.PbList<Range> createRepeated() => $pb.PbList<Range>();
  @$core.pragma('dart2js:noInline')
  static Range getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Range>(create);
  static Range? _defaultInstance;

  /// Filename is the name of the file into which this range's positions point.
  @$pb.TagNumber(1)
  $core.String get filename => $_getSZ(0);
  @$pb.TagNumber(1)
  set filename($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFilename() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilename() => clearField(1);

  /// Start and End represent the bounds of this range. Start is inclusive and End is exclusive.
  @$pb.TagNumber(2)
  Pos get start => $_getN(1);
  @$pb.TagNumber(2)
  set start(Pos v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStart() => $_has(1);
  @$pb.TagNumber(2)
  void clearStart() => clearField(2);
  @$pb.TagNumber(2)
  Pos ensureStart() => $_ensure(1);

  @$pb.TagNumber(3)
  Pos get end => $_getN(2);
  @$pb.TagNumber(3)
  set end(Pos v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEnd() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnd() => clearField(3);
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
    final $result = create();
    if (severity != null) {
      $result.severity = severity;
    }
    if (summary != null) {
      $result.summary = summary;
    }
    if (detail != null) {
      $result.detail = detail;
    }
    if (subject != null) {
      $result.subject = subject;
    }
    if (context != null) {
      $result.context = context;
    }
    return $result;
  }
  Diagnostic._() : super();
  factory Diagnostic.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Diagnostic.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Diagnostic',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'pulumirpc.codegen'),
      createEmptyInstance: create)
    ..e<DiagnosticSeverity>(
        1, _omitFieldNames ? '' : 'severity', $pb.PbFieldType.OE,
        defaultOrMaker: DiagnosticSeverity.DIAG_INVALID,
        valueOf: DiagnosticSeverity.valueOf,
        enumValues: DiagnosticSeverity.values)
    ..aOS(2, _omitFieldNames ? '' : 'summary')
    ..aOS(3, _omitFieldNames ? '' : 'detail')
    ..aOM<Range>(4, _omitFieldNames ? '' : 'subject', subBuilder: Range.create)
    ..aOM<Range>(5, _omitFieldNames ? '' : 'context', subBuilder: Range.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Diagnostic clone() => Diagnostic()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Diagnostic copyWith(void Function(Diagnostic) updates) =>
      super.copyWith((message) => updates(message as Diagnostic)) as Diagnostic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Diagnostic create() => Diagnostic._();
  Diagnostic createEmptyInstance() => create();
  static $pb.PbList<Diagnostic> createRepeated() => $pb.PbList<Diagnostic>();
  @$core.pragma('dart2js:noInline')
  static Diagnostic getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Diagnostic>(create);
  static Diagnostic? _defaultInstance;

  @$pb.TagNumber(1)
  DiagnosticSeverity get severity => $_getN(0);
  @$pb.TagNumber(1)
  set severity(DiagnosticSeverity v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSeverity() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeverity() => clearField(1);

  /// Summary and Detail contain the English-language description of the
  /// problem. Summary is a terse description of the general problem and
  /// detail is a more elaborate, often-multi-sentence description of
  /// the problem and what might be done to solve it.
  @$pb.TagNumber(2)
  $core.String get summary => $_getSZ(1);
  @$pb.TagNumber(2)
  set summary($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummary() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get detail => $_getSZ(2);
  @$pb.TagNumber(3)
  set detail($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDetail() => $_has(2);
  @$pb.TagNumber(3)
  void clearDetail() => clearField(3);

  ///  Subject and Context are both source ranges relating to the diagnostic.
  ///
  ///  Subject is a tight range referring to exactly the construct that
  ///  is problematic, while Context is an optional broader range (which should
  ///  fully contain Subject) that ought to be shown around Subject when
  ///  generating isolated source-code snippets in diagnostic messages.
  ///  If Context is nil, the Subject is also the Context.
  ///
  ///  Some diagnostics have no source ranges at all. If Context is set then
  ///  Subject should always also be set.
  @$pb.TagNumber(4)
  Range get subject => $_getN(3);
  @$pb.TagNumber(4)
  set subject(Range v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSubject() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubject() => clearField(4);
  @$pb.TagNumber(4)
  Range ensureSubject() => $_ensure(3);

  @$pb.TagNumber(5)
  Range get context => $_getN(4);
  @$pb.TagNumber(5)
  set context(Range v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasContext() => $_has(4);
  @$pb.TagNumber(5)
  void clearContext() => clearField(5);
  @$pb.TagNumber(5)
  Range ensureContext() => $_ensure(4);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
