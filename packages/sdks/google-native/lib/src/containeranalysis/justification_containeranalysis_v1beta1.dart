// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'justification_justification_type_containeranalysis_v1beta1.dart';

/// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
class JustificationContaineranalysisV1beta1 {
  /// Additional details on why this justification was chosen.
  final pulumi.Input<String>? details;
  /// The justification type for this vulnerability.
  final pulumi.Input<JustificationJustificationTypeContaineranalysisV1beta1>? justificationType;

  /// Creates a new [JustificationContaineranalysisV1beta1].
  /// [details] Additional details on why this justification was chosen.
  /// [justificationType] The justification type for this vulnerability.
  const JustificationContaineranalysisV1beta1({
    this.details,
    this.justificationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'justificationType': ?pulumi.Input.mapOptionalInputValue<JustificationJustificationTypeContaineranalysisV1beta1, String>(justificationType, (value) => value.wireValue),
    };
  }

  factory JustificationContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return JustificationContaineranalysisV1beta1(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      justificationType: (() { final guardedValue = map['justificationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JustificationJustificationTypeContaineranalysisV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}

