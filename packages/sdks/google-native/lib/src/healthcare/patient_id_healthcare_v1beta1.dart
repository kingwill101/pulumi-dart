// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A patient identifier and associated type.
class PatientIdHealthcareV1beta1 {
  /// ID type. For example, MRN or NHS.
  final pulumi.Input<String>? type;
  /// The patient's unique identifier.
  final pulumi.Input<String>? value;

  /// Creates a new [PatientIdHealthcareV1beta1].
  /// [type] ID type. For example, MRN or NHS.
  /// [value] The patient's unique identifier.
  const PatientIdHealthcareV1beta1({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory PatientIdHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return PatientIdHealthcareV1beta1(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

