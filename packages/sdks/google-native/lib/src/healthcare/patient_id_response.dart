// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A patient identifier and associated type.
class PatientIdResponse {
  /// ID type. For example, MRN or NHS.
  final pulumi.Input<String> type;
  /// The patient's unique identifier.
  final pulumi.Input<String> value;

  /// Creates a new [PatientIdResponse].
  /// [type] ID type. For example, MRN or NHS.
  /// [value] The patient's unique identifier.
  const PatientIdResponse({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory PatientIdResponse.fromMap(Map<String, dynamic> map) {
    return PatientIdResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

