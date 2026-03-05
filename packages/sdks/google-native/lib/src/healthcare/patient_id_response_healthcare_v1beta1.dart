// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A patient identifier and associated type.
class PatientIdResponseHealthcareV1beta1 {
  /// ID type. For example, MRN or NHS.
  final pulumi.Input<String> type;
  /// The patient's unique identifier.
  final pulumi.Input<String> value;

  /// Creates a new [PatientIdResponseHealthcareV1beta1].
  /// [type] ID type. For example, MRN or NHS.
  /// [value] The patient's unique identifier.
  PatientIdResponseHealthcareV1beta1({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory PatientIdResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return PatientIdResponseHealthcareV1beta1(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

