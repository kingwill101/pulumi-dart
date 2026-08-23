// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlement_approval_workflow_manual_approval_step_approver.dart';

class GetEntitlementApprovalWorkflowManualApprovalStep {
  /// How many users from the above list need to approve.
  /// If there are not enough distinct users in the list above then the workflow
  /// will indefinitely block. Should always be greater than 0. Currently 1 is the only
  /// supported value.
  final pulumi.Input<int> approvalsNeeded;
  /// Optional. Additional email addresses to be notified when a grant is pending approval.
  final pulumi.Input<List<String>> approverEmailRecipients;
  /// The potential set of approvers in this step. This list should contain at only one entry.
  final pulumi.Input<List<GetEntitlementApprovalWorkflowManualApprovalStepApprover>> approvers;
  /// Output Only. The ID of the approval step.
  final pulumi.Input<String> id;

  /// Creates a new [GetEntitlementApprovalWorkflowManualApprovalStep].
  /// [approvalsNeeded] How many users from the above list need to approve.
  /// [approverEmailRecipients] Optional. Additional email addresses to be notified when a grant is pending approval.
  /// [approvers] The potential set of approvers in this step. This list should contain at only one entry.
  /// [id] Output Only. The ID of the approval step.
  const GetEntitlementApprovalWorkflowManualApprovalStep({
    required this.approvalsNeeded,
    required this.approverEmailRecipients,
    required this.approvers,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalsNeeded': approvalsNeeded,
      'approverEmailRecipients': approverEmailRecipients,
      'approvers': pulumi.Input.mapInputValue<List<GetEntitlementApprovalWorkflowManualApprovalStepApprover>, List<Map<String, dynamic>>>(approvers, (value) => pulumi.Input.encodeList<GetEntitlementApprovalWorkflowManualApprovalStepApprover, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
    };
  }

  factory GetEntitlementApprovalWorkflowManualApprovalStep.fromMap(Map<String, dynamic> map) {
    return GetEntitlementApprovalWorkflowManualApprovalStep(
      approvalsNeeded: pulumi.Input.fromValue(map['approvalsNeeded'] as int),
      approverEmailRecipients: pulumi.Input.fromValue((map['approverEmailRecipients'] as List).cast<String>()),
      approvers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEntitlementApprovalWorkflowManualApprovalStepApprover>(map['approvers']!, (value) => GetEntitlementApprovalWorkflowManualApprovalStepApprover.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
