// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The result of the assessment
class AssessmentStatusResponseResponse {
  /// Programmatic code for the cause of the assessment status
  final pulumi.Input<String>? cause;

  /// Programmatic code for the status of the assessment
  final pulumi.Input<String> code;

  /// Human readable description of the assessment status
  final pulumi.Input<String>? description;

  /// The time that the assessment was created and first evaluated. Returned as UTC time in ISO 8601 format
  final pulumi.Input<String> firstEvaluationDate;

  /// The time that the status of the assessment last changed. Returned as UTC time in ISO 8601 format
  final pulumi.Input<String> statusChangeDate;

  /// Creates a new [AssessmentStatusResponseResponse].
  /// [cause] Programmatic code for the cause of the assessment status
  /// [code] Programmatic code for the status of the assessment
  /// [description] Human readable description of the assessment status
  /// [firstEvaluationDate] The time that the assessment was created and first evaluated. Returned as UTC time in ISO 8601 format
  /// [statusChangeDate] The time that the status of the assessment last changed. Returned as UTC time in ISO 8601 format
  AssessmentStatusResponseResponse({
    this.cause,
    required this.code,
    this.description,
    required this.firstEvaluationDate,
    required this.statusChangeDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cause': ?cause,
      'code': code,
      'description': ?description,
      'firstEvaluationDate': firstEvaluationDate,
      'statusChangeDate': statusChangeDate,
    };
  }

  factory AssessmentStatusResponseResponse.fromMap(Map<String, dynamic> map) {
    return AssessmentStatusResponseResponse(
      cause: (() {
        final guardedValue = map['cause'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      code: pulumi.Input.fromValue(map['code'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firstEvaluationDate: pulumi.Input.fromValue(
        map['firstEvaluationDate'] as String,
      ),
      statusChangeDate: pulumi.Input.fromValue(
        map['statusChangeDate'] as String,
      ),
    );
  }
}
