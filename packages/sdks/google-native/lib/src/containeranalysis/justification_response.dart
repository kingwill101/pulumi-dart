// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
class JustificationResponse {
  /// Additional details on why this justification was chosen.
  final pulumi.Input<String> details;
  /// The justification type for this vulnerability.
  final pulumi.Input<String> justificationType;

  /// Creates a new [JustificationResponse].
  /// [details] Additional details on why this justification was chosen.
  /// [justificationType] The justification type for this vulnerability.
  const JustificationResponse({
    required this.details,
    required this.justificationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'justificationType': justificationType,
    };
  }

  factory JustificationResponse.fromMap(Map<String, dynamic> map) {
    return JustificationResponse(
      details: pulumi.Input.fromValue(map['details'] as String),
      justificationType: pulumi.Input.fromValue(map['justificationType'] as String),
    );
  }
}

