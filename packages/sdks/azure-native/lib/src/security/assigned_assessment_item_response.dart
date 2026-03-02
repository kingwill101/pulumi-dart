// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe the properties of a security assessment object reference (by key)
class AssignedAssessmentItemResponse {
  /// Unique key to a security assessment object
  final pulumi.Input<String>? assessmentKey;

  /// Creates a new [AssignedAssessmentItemResponse].
  /// [assessmentKey] Unique key to a security assessment object
  AssignedAssessmentItemResponse({
    this.assessmentKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentKey': ?assessmentKey,
    };
  }

  factory AssignedAssessmentItemResponse.fromMap(Map<String, dynamic> map) {
    return AssignedAssessmentItemResponse(
      assessmentKey: map['assessmentKey'] == null ? null : (map['assessmentKey'] as String).input(),
    );
  }
}

