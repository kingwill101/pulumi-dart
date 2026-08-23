// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A (sub) field of a type.
class Field {
  /// The maximum number of times this field can be repeated. 0 or -1 means unbounded.
  final pulumi.Input<int>? maxOccurs;
  /// The minimum number of times this field must be present/repeated.
  final pulumi.Input<int>? minOccurs;
  /// The name of the field. For example, "PID-1" or just "1".
  final pulumi.Input<String>? name;
  /// The HL7v2 table this field refers to. For example, PID-15 (Patient's Primary Language) usually refers to table "0296".
  final pulumi.Input<String>? table;
  /// The type of this field. A Type with this name must be defined in an Hl7TypesConfig.
  final pulumi.Input<String>? type;

  /// Creates a new [Field].
  /// [maxOccurs] The maximum number of times this field can be repeated. 0 or -1 means unbounded.
  /// [minOccurs] The minimum number of times this field must be present/repeated.
  /// [name] The name of the field. For example, "PID-1" or just "1".
  /// [table] The HL7v2 table this field refers to. For example, PID-15 (Patient's Primary Language) usually refers to table "0296".
  /// [type] The type of this field. A Type with this name must be defined in an Hl7TypesConfig.
  const Field({
    this.maxOccurs,
    this.minOccurs,
    this.name,
    this.table,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxOccurs': ?maxOccurs,
      'minOccurs': ?minOccurs,
      'name': ?name,
      'table': ?table,
      'type': ?type,
    };
  }

  factory Field.fromMap(Map<String, dynamic> map) {
    return Field(
      maxOccurs: (() { final guardedValue = map['maxOccurs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minOccurs: (() { final guardedValue = map['minOccurs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
