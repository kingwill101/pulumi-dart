// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes properties of an assessment as related to the standard
class PartialAssessmentPropertiesResponse {
  /// The assessment key
  final pulumi.Input<String?>? assessmentKey;

  /// Creates a new [PartialAssessmentPropertiesResponse].
  /// [assessmentKey] The assessment key
  const PartialAssessmentPropertiesResponse({
    this.assessmentKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentKey': ?assessmentKey,
    };
  }

  factory PartialAssessmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PartialAssessmentPropertiesResponse(
      assessmentKey: (() { final guardedValue = map['assessmentKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
