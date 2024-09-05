//
//  Generated code. Do not modify.
//  source: pulumi/engine.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// LogSeverity is the severity level of a log message.  Errors are fatal; all others are informational.
class LogSeverity extends $pb.ProtobufEnum {
  static const LogSeverity DEBUG =
      LogSeverity._(0, _omitEnumNames ? '' : 'DEBUG');
  static const LogSeverity INFO =
      LogSeverity._(1, _omitEnumNames ? '' : 'INFO');
  static const LogSeverity WARNING =
      LogSeverity._(2, _omitEnumNames ? '' : 'WARNING');
  static const LogSeverity ERROR =
      LogSeverity._(3, _omitEnumNames ? '' : 'ERROR');

  static const $core.List<LogSeverity> values = <LogSeverity>[
    DEBUG,
    INFO,
    WARNING,
    ERROR,
  ];

  static final $core.Map<$core.int, LogSeverity> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static LogSeverity? valueOf($core.int value) => _byValue[value];

  const LogSeverity._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
