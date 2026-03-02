// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssessmentStatus {
  /// Specifies the cause of the assessment status.
  final pulumi.Input<String>? cause;
  /// Specifies the programmatic code of the assessment status. Possible values are `Healthy`, `Unhealthy` and `NotApplicable`.
  final pulumi.Input<String> code;
  /// Specifies the human readable description of the assessment status.
  final pulumi.Input<String>? description;

  /// Creates a new [AssessmentStatus].
  /// [cause] Specifies the cause of the assessment status.
  /// [code] Specifies the programmatic code of the assessment status. Possible values are `Healthy`, `Unhealthy` and `NotApplicable`.
  /// [description] Specifies the human readable description of the assessment status.
  AssessmentStatus({
    this.cause,
    required this.code,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cause': ?cause,
      'code': code,
      'description': ?description,
    };
  }

  factory AssessmentStatus.fromMap(Map<String, dynamic> map) {
    return AssessmentStatus(
      cause: map['cause'] == null ? null : (map['cause'] as String).input(),
      code: (map['code'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
    );
  }
}

