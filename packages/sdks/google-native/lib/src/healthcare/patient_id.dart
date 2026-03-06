// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A patient identifier and associated type.
class PatientId {
  /// ID type. For example, MRN or NHS.
  final pulumi.Input<String>? type;
  /// The patient's unique identifier.
  final pulumi.Input<String>? value;

  /// Creates a new [PatientId].
  /// [type] ID type. For example, MRN or NHS.
  /// [value] The patient's unique identifier.
  const PatientId({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory PatientId.fromMap(Map<String, dynamic> map) {
    return PatientId(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

