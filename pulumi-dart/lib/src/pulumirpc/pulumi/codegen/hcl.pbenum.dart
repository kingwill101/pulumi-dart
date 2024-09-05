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

import 'package:protobuf/protobuf.dart' as $pb;

/// DiagnosticSeverity is the severity level of a diagnostic message.
class DiagnosticSeverity extends $pb.ProtobufEnum {
  static const DiagnosticSeverity DIAG_INVALID =
      DiagnosticSeverity._(0, _omitEnumNames ? '' : 'DIAG_INVALID');
  static const DiagnosticSeverity DIAG_ERROR =
      DiagnosticSeverity._(1, _omitEnumNames ? '' : 'DIAG_ERROR');
  static const DiagnosticSeverity DIAG_WARNING =
      DiagnosticSeverity._(2, _omitEnumNames ? '' : 'DIAG_WARNING');

  static const $core.List<DiagnosticSeverity> values = <DiagnosticSeverity>[
    DIAG_INVALID,
    DIAG_ERROR,
    DIAG_WARNING,
  ];

  static final $core.Map<$core.int, DiagnosticSeverity> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static DiagnosticSeverity? valueOf($core.int value) => _byValue[value];

  const DiagnosticSeverity._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
