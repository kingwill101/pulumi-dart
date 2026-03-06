// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'justification_justification_type_containeranalysis_v1alpha1.dart';

/// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
class JustificationContaineranalysisV1alpha1 {
  /// Additional details on why this justification was chosen.
  final pulumi.Input<String>? details;
  /// The justification type for this vulnerability.
  final pulumi.Input<JustificationJustificationTypeContaineranalysisV1alpha1>? justificationType;

  /// Creates a new [JustificationContaineranalysisV1alpha1].
  /// [details] Additional details on why this justification was chosen.
  /// [justificationType] The justification type for this vulnerability.
  const JustificationContaineranalysisV1alpha1({
    this.details,
    this.justificationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'justificationType': ?pulumi.Input.mapOptionalInputValue<JustificationJustificationTypeContaineranalysisV1alpha1, String>(justificationType, (value) => value.wireValue),
    };
  }

  factory JustificationContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return JustificationContaineranalysisV1alpha1(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      justificationType: (() { final guardedValue = map['justificationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JustificationJustificationTypeContaineranalysisV1alpha1.fromValue(guardedValue as String)); })(),
    );
  }
}

