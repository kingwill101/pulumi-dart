// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
class JustificationResponseContaineranalysisV1alpha1 {
  /// Additional details on why this justification was chosen.
  final pulumi.Input<String> details;
  /// The justification type for this vulnerability.
  final pulumi.Input<String> justificationType;

  /// Creates a new [JustificationResponseContaineranalysisV1alpha1].
  /// [details] Additional details on why this justification was chosen.
  /// [justificationType] The justification type for this vulnerability.
  JustificationResponseContaineranalysisV1alpha1({
    required this.details,
    required this.justificationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'justificationType': justificationType,
    };
  }

  factory JustificationResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return JustificationResponseContaineranalysisV1alpha1(
      details: (map['details'] as String).input(),
      justificationType: (map['justificationType'] as String).input(),
    );
  }
}

