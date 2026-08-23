// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_status.dart';

/// {@template pulumi_securitycenter_assessment_assessment_args_doc}
/// The set of arguments for Assessment.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_assessment_assessment_args_doc}
class AssessmentArgs {
  /// A map of additional data to associate with the assessment.
  final pulumi.Input<Map<String, String>>? additionalData;
  /// The ID of the security Assessment policy to apply to this resource. Changing this forces a new security Assessment to be created.
  final pulumi.Input<String> assessmentPolicyId;
  /// A `status` block as defined below.
  final pulumi.Input<AssessmentStatus> status;
  /// The ID of the target resource. Changing this forces a new security Assessment to be created.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [AssessmentArgs].
  /// [additionalData] A map of additional data to associate with the assessment.
  /// [assessmentPolicyId] The ID of the security Assessment policy to apply to this resource. Changing this forces a new security Assessment to be created.
  /// [status] A `status` block as defined below.
  /// [targetResourceId] The ID of the target resource. Changing this forces a new security Assessment to be created.
  const AssessmentArgs({
    this.additionalData,
    required this.assessmentPolicyId,
    required this.status,
    required this.targetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalData': ?additionalData,
      'assessmentPolicyId': assessmentPolicyId,
      'status': pulumi.Input.mapInputValue<AssessmentStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'targetResourceId': targetResourceId,
    };
  }

  factory AssessmentArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentArgs(
      additionalData: (() { final guardedValue = map['additionalData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      assessmentPolicyId: pulumi.Input.fromValue(map['assessmentPolicyId'] as String),
      status: pulumi.Input.fromValue(AssessmentStatus.fromMap((map['status']! as Map).cast<String, dynamic>())),
      targetResourceId: pulumi.Input.fromValue(map['targetResourceId'] as String),
    );
  }
}
