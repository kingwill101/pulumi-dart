// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes properties of an assessment as related to the standard
class PartialAssessmentProperties {
  /// The assessment key
  final pulumi.Input<String>? assessmentKey;

  /// Creates a new [PartialAssessmentProperties].
  /// [assessmentKey] The assessment key
  const PartialAssessmentProperties({
    this.assessmentKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentKey': ?assessmentKey,
    };
  }

  factory PartialAssessmentProperties.fromMap(Map<String, dynamic> map) {
    return PartialAssessmentProperties(
      assessmentKey: (() { final guardedValue = map['assessmentKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
