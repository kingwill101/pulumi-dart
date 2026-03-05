// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlement_approval_workflow_manual_approval_step.dart';

class GetEntitlementApprovalWorkflowManualApproval {
  /// Optional. Do the approvers need to provide a justification for their actions?
  final pulumi.Input<bool> requireApproverJustification;
  /// List of approval steps in this workflow. These steps would be followed in the specified order sequentially.
  final pulumi.Input<List<GetEntitlementApprovalWorkflowManualApprovalStep>> steps;

  /// Creates a new [GetEntitlementApprovalWorkflowManualApproval].
  /// [requireApproverJustification] Optional. Do the approvers need to provide a justification for their actions?
  /// [steps] List of approval steps in this workflow. These steps would be followed in the specified order sequentially.
  GetEntitlementApprovalWorkflowManualApproval({
    required this.requireApproverJustification,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requireApproverJustification': requireApproverJustification,
      'steps': pulumi.Input.mapInputValue<List<GetEntitlementApprovalWorkflowManualApprovalStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<GetEntitlementApprovalWorkflowManualApprovalStep, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetEntitlementApprovalWorkflowManualApproval.fromMap(Map<String, dynamic> map) {
    return GetEntitlementApprovalWorkflowManualApproval(
      requireApproverJustification: pulumi.Input.fromValue(map['requireApproverJustification'] as bool),
      steps: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEntitlementApprovalWorkflowManualApprovalStep>(map['steps']!, (value) => GetEntitlementApprovalWorkflowManualApprovalStep.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

