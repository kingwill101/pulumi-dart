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
  const Diagnostic({
    this.field,
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'level': ?pulumi.Input.mapOptionalInputValue<DiagnosticLevel, String>(level, (value) => value.wireValue),
    };
  }

  factory Diagnostic.fromMap(Map<String, dynamic> map) {
    return Diagnostic(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiagnosticLevel.fromValue(guardedValue as String)); })(),
    );
  }
}

