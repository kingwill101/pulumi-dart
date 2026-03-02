// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlement_approval_workflow_manual_approval.dart';

class GetEntitlementApprovalWorkflow {
  /// A manual approval workflow where users who are designated as approvers need to call the ApproveGrant/DenyGrant APIs for an Grant.
  /// The workflow can consist of multiple serial steps where each step defines who can act as Approver in that step and how many of those users should approve before the workflow moves to the next step.
  /// This can be used to create approval workflows such as
  /// * Require an approval from any user in a group G.
  /// * Require an approval from any k number of users from a Group G.
  /// * Require an approval from any user in a group G and then from a user U. etc.
  /// A single user might be part of 'approvers' ACL for multiple steps in this workflow but they can only approve once and that approval will only be considered to satisfy the approval step at which it was granted.
  final pulumi.Input<List<GetEntitlementApprovalWorkflowManualApproval>> manualApprovals;

  /// Creates a new [GetEntitlementApprovalWorkflow].
  /// [manualApprovals] A manual approval workflow where users who are designated as approvers need to call the ApproveGrant/DenyGrant APIs for an Grant.
  GetEntitlementApprovalWorkflow({
    required this.manualApprovals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manualApprovals': pulumi.Input.mapInputValue<List<GetEntitlementApprovalWorkflowManualApproval>, List<Map<String, dynamic>>>(manualApprovals, (value) => pulumi.Input.encodeList<GetEntitlementApprovalWorkflowManualApproval, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetEntitlementApprovalWorkflow.fromMap(Map<String, dynamic> map) {
    return GetEntitlementApprovalWorkflow(
      manualApprovals: (pulumi.Input.decodeList<GetEntitlementApprovalWorkflowManualApproval>(map['manualApprovals'], (value) => GetEntitlementApprovalWorkflowManualApproval.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

