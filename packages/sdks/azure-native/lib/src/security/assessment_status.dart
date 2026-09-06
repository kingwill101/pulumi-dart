// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The result of the assessment
class AssessmentStatus {
  /// Programmatic code for the cause of the assessment status
  final pulumi.Input<String?>? cause;
  /// Programmatic code for the status of the assessment
  final pulumi.Input<dynamic> code;
  /// Human readable description of the assessment status
  final pulumi.Input<String?>? description;

  /// Creates a new [AssessmentStatus].
  /// [cause] Programmatic code for the cause of the assessment status
  /// [code] Programmatic code for the status of the assessment
  /// [description] Human readable description of the assessment status
  const AssessmentStatus({
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
      cause: (() { final guardedValue = map['cause']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      code: pulumi.Input.fromValue(map['code']),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
