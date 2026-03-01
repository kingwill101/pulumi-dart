// ignore_for_file: unused_element, unnecessary_cast


/// Describe the properties of a security assessment object reference (by key)
class AssignedAssessmentItem {
  /// Unique key to a security assessment object
  final String? assessmentKey;

  /// Creates a new [AssignedAssessmentItem].
  /// [assessmentKey] Unique key to a security assessment object
  AssignedAssessmentItem({
    this.assessmentKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentKey': ?assessmentKey,
    };
  }

  factory AssignedAssessmentItem.fromMap(Map<String, dynamic> map) {
    return AssignedAssessmentItem(
      assessmentKey: map['assessmentKey'] == null ? null : map['assessmentKey'] as String,
    );
  }
}

