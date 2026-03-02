// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'justification_justification_type.dart';

/// Justification provides the justification when the state of the assessment if NOT_AFFECTED.
class Justification {
  /// Additional details on why this justification was chosen.
  final pulumi.Input<String>? details;
  /// The justification type for this vulnerability.
  final pulumi.Input<JustificationJustificationType>? justificationType;

  /// Creates a new [Justification].
  /// [details] Additional details on why this justification was chosen.
  /// [justificationType] The justification type for this vulnerability.
  Justification({
    this.details,
    this.justificationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'justificationType': ?pulumi.Input.mapOptionalInputValue<JustificationJustificationType, String>(justificationType, (value) => value.value),
    };
  }

  factory Justification.fromMap(Map<String, dynamic> map) {
    return Justification(
      details: map['details'] == null ? null : (map['details']! as String).input(),
      justificationType: map['justificationType'] == null ? null : (JustificationJustificationType.fromValue(map['justificationType']! as String)).input(),
    );
  }
}

