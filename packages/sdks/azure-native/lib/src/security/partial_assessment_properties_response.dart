// ignore_for_file: unused_element, unnecessary_cast


/// Describes properties of an assessment as related to the standard
class PartialAssessmentPropertiesResponse {
  /// The assessment key
  final String? assessmentKey;

  /// Creates a new [PartialAssessmentPropertiesResponse].
  /// [assessmentKey] The assessment key
  PartialAssessmentPropertiesResponse({
    this.assessmentKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentKey': ?assessmentKey,
    };
  }

  factory PartialAssessmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PartialAssessmentPropertiesResponse(
      assessmentKey: map['assessmentKey'] == null ? null : map['assessmentKey'] as String,
    );
  }
}

