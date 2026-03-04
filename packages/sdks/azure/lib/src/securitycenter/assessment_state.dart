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
      'status':
          ?pulumi.Input.mapOptionalInputValue<
            AssessmentStatus,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
      'targetResourceId': ?targetResourceId,
    };
  }

  factory AssessmentState.fromMap(Map<String, dynamic> map) {
    return AssessmentState(
      additionalData: (() {
        final guardedValue = map['additionalData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      assessmentPolicyId: (() {
        final guardedValue = map['assessmentPolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AssessmentStatus.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      targetResourceId: (() {
        final guardedValue = map['targetResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
