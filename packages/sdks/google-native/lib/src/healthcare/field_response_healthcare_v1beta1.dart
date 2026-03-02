// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A (sub) field of a type.
class FieldResponseHealthcareV1beta1 {
  /// The maximum number of times this field can be repeated. 0 or -1 means unbounded.
  final pulumi.Input<int> maxOccurs;
  /// The minimum number of times this field must be present/repeated.
  final pulumi.Input<int> minOccurs;
  /// The name of the field. For example, "PID-1" or just "1".
  final pulumi.Input<String> name;
  /// The HL7v2 table this field refers to. For example, PID-15 (Patient's Primary Language) usually refers to table "0296".
  final pulumi.Input<String> table;
  /// The type of this field. A Type with this name must be defined in an Hl7TypesConfig.
  final pulumi.Input<String> type;

  /// Creates a new [FieldResponseHealthcareV1beta1].
  /// [maxOccurs] The maximum number of times this field can be repeated. 0 or -1 means unbounded.
  /// [minOccurs] The minimum number of times this field must be present/repeated.
  /// [name] The name of the field. For example, "PID-1" or just "1".
  /// [table] The HL7v2 table this field refers to. For example, PID-15 (Patient's Primary Language) usually refers to table "0296".
  /// [type] The type of this field. A Type with this name must be defined in an Hl7TypesConfig.
  FieldResponseHealthcareV1beta1({
    required this.maxOccurs,
    required this.minOccurs,
    required this.name,
    required this.table,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxOccurs': maxOccurs,
      'minOccurs': minOccurs,
      'name': name,
      'table': table,
      'type': type,
    };
  }

  factory FieldResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return FieldResponseHealthcareV1beta1(
      maxOccurs: (map['maxOccurs'] as int).input(),
      minOccurs: (map['minOccurs'] as int).input(),
      name: (map['name'] as String).input(),
      table: (map['table'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

