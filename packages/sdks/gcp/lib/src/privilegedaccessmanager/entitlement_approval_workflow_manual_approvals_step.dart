// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_approval_workflow_manual_approvals_step_approvers.dart';

class EntitlementApprovalWorkflowManualApprovalsStep {
  /// How many users from the above list need to approve.
  /// If there are not enough distinct users in the list above then the workflow
  /// will indefinitely block. Should always be greater than 0. Currently 1 is the only
  /// supported value.
  final pulumi.Input<int>? approvalsNeeded;
  /// Optional. Additional email addresses to be notified when a grant is pending approval.
  final pulumi.Input<List<String>>? approverEmailRecipients;
  /// The potential set of approvers in this step. This list should contain at only one entry.
  /// Structure is documented below.
  final pulumi.Input<EntitlementApprovalWorkflowManualApprovalsStepApprovers> approvers;
  /// (Output, Beta)
  /// Output Only. The ID of the approval step.
  final pulumi.Input<String>? id;

  /// Creates a new [EntitlementApprovalWorkflowManualApprovalsStep].
  /// [approvalsNeeded] How many users from the above list need to approve.
  /// [approverEmailRecipients] Optional. Additional email addresses to be notified when a grant is pending approval.
  /// [approvers] The potential set of approvers in this step. This list should contain at only one entry.
  /// [id] (Output, Beta)
  const EntitlementApprovalWorkflowManualApprovalsStep({
    this.approvalsNeeded,
    this.approverEmailRecipients,
    required this.approvers,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalsNeeded': ?approvalsNeeded,
      'approverEmailRecipients': ?approverEmailRecipients,
      'approvers': pulumi.Input.mapInputValue<EntitlementApprovalWorkflowManualApprovalsStepApprovers, Map<String, dynamic>>(approvers, (value) => value.toMap()),
      'id': ?id,
    };
  }

  factory EntitlementApprovalWorkflowManualApprovalsStep.fromMap(Map<String, dynamic> map) {
    return EntitlementApprovalWorkflowManualApprovalsStep(
      approvalsNeeded: (() { final guardedValue = map['approvalsNeeded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      approverEmailRecipients: (() { final guardedValue = map['approverEmailRecipients']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      approvers: pulumi.Input.fromValue(EntitlementApprovalWorkflowManualApprovalsStepApprovers.fromMap((map['approvers']! as Map).cast<String, dynamic>())),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

