// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_status.dart';

/// Input properties used for looking up and filtering Assessment resources.
class AssessmentState {
  /// A map of additional data to associate with the assessment.
  final pulumi.Input<Map<String, String>>? additionalData;
  /// The ID of the security Assessment policy to apply to this resource. Changing this forces a new security Assessment to be created.
  final pulumi.Input<String>? assessmentPolicyId;
  /// A `status` block as defined below.
  final pulumi.Input<AssessmentStatus>? status;
  /// The ID of the target resource. Changing this forces a new security Assessment to be created.
  final pulumi.Input<String>? targetResourceId;

  /// Creates a new [AssessmentState].
  /// [additionalData] A map of additional data to associate with the assessment.
  /// [assessmentPolicyId] The ID of the security Assessment policy to apply to this resource. Changing this forces a new security Assessment to be created.
  /// [status] A `status` block as defined below.
  /// [targetResourceId] The ID of the target resource. Changing this forces a new security Assessment to be created.
  AssessmentState({
    this.additionalData,
    this.assessmentPolicyId,
    this.status,
    this.targetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalData': ?additionalData,
      'assessmentPolicyId': ?assessmentPolicyId,
      'status': ?pulumi.Input.mapOptionalInputValue<AssessmentStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'targetResourceId': ?targetResourceId,
    };
  }

  factory AssessmentState.fromMap(Map<String, dynamic> map) {
    return AssessmentState(
      additionalData: map['additionalData'] == null ? null : ((map['additionalData']! as Map).cast<String, String>()).input(),
      assessmentPolicyId: map['assessmentPolicyId'] == null ? null : (map['assessmentPolicyId']! as String).input(),
      status: map['status'] == null ? null : (AssessmentStatus.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
      targetResourceId: map['targetResourceId'] == null ? null : (map['targetResourceId']! as String).input(),
    );
  }
}

