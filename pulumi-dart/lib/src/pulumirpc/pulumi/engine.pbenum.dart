// This is a generated file - do not edit.
//
// Generated from pulumi/engine.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

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

  static final $core.List<LogSeverity?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static LogSeverity? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LogSeverity._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
