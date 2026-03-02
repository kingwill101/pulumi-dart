// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_level.dart';

class Diagnostic {
  /// JsonPath expression on the resource that if non empty, indicates that this field needs to be extracted as a diagnostic.
  final pulumi.Input<String>? field;
  /// Level to record this diagnostic.
  final pulumi.Input<DiagnosticLevel>? level;

  /// Creates a new [Diagnostic].
  /// [field] JsonPath expression on the resource that if non empty, indicates that this field needs to be extracted as a diagnostic.
  /// [level] Level to record this diagnostic.
  Diagnostic({
    this.field,
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'level': ?pulumi.Input.mapOptionalInputValue<DiagnosticLevel, String>(level, (value) => value.value),
    };
  }

  factory Diagnostic.fromMap(Map<String, dynamic> map) {
    return Diagnostic(
      field: map['field'] == null ? null : (map['field'] as String).input(),
      level: map['level'] == null ? null : (DiagnosticLevel.fromValue(map['level'] as String)).input(),
    );
  }
}

