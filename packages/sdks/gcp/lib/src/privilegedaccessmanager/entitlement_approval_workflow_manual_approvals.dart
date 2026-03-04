// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_approval_workflow_manual_approvals_step.dart';

class EntitlementApprovalWorkflowManualApprovals {
  /// Optional. Do the approvers need to provide a justification for their actions?
  final pulumi.Input<bool>? requireApproverJustification;

  /// List of approval steps in this workflow. These steps would be followed in the specified order sequentially.
  /// Structure is documented below.
  final pulumi.Input<List<EntitlementApprovalWorkflowManualApprovalsStep>>
  steps;

  /// Creates a new [EntitlementApprovalWorkflowManualApprovals].
  /// [requireApproverJustification] Optional. Do the approvers need to provide a justification for their actions?
  /// [steps] List of approval steps in this workflow. These steps would be followed in the specified order sequentially.
  EntitlementApprovalWorkflowManualApprovals({
    this.requireApproverJustification,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requireApproverJustification': ?requireApproverJustification,
      'steps':
          pulumi.Input.mapInputValue<
            List<EntitlementApprovalWorkflowManualApprovalsStep>,
            List<Map<String, dynamic>>
          >(
            steps,
            (value) =>
                pulumi.Input.encodeList<
                  EntitlementApprovalWorkflowManualApprovalsStep,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EntitlementApprovalWorkflowManualApprovals.fromMap(
    Map<String, dynamic> map,
  ) {
    return EntitlementApprovalWorkflowManualApprovals(
      requireApproverJustification: (() {
        final guardedValue = map['requireApproverJustification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      steps: pulumi.Input.fromValue(
        pulumi.Input.decodeList<EntitlementApprovalWorkflowManualApprovalsStep>(
          map['steps']!,
          (value) => EntitlementApprovalWorkflowManualApprovalsStep.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
