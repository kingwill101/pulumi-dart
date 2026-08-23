// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_assessment_args_doc}
/// Arguments for getAssessment.
/// {@endtemplate}
/// {@macro pulumi_security_get_assessment_args_doc}
class GetAssessmentArgs {
  /// The Assessment Key - Unique key for the assessment type
  final pulumi.Input<String> assessmentName;
  /// OData expand. Optional.
  final pulumi.Input<String>? expand;
  /// The identifier of the resource.
  final pulumi.Input<String> resourceId;

  /// Creates a new [GetAssessmentArgs].
  /// [assessmentName] The Assessment Key - Unique key for the assessment type
  /// [expand] OData expand. Optional.
  /// [resourceId] The identifier of the resource.
  const GetAssessmentArgs({
    required this.assessmentName,
    this.expand,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': assessmentName,
      'expand': ?expand,
      'resourceId': resourceId,
    };
  }

  factory GetAssessmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAssessmentArgs(
      assessmentName: pulumi.Input.fromValue(map['assessmentName'] as String),
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
