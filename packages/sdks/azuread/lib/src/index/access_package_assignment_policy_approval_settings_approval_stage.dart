// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_assignment_policy_approval_settings_approval_stage_alternative_approver.dart';
import 'access_package_assignment_policy_approval_settings_approval_stage_primary_approver.dart';

class AccessPackageAssignmentPolicyApprovalSettingsApprovalStage {
  /// If no action taken, forward to alternate approvers?
  final pulumi.Input<bool>? alternativeApprovalEnabled;
  /// If escalation is enabled and the primary approvers do not respond before the escalation time, the escalationApprovers are the users who will be asked to approve requests. This can be a collection of singleUser, groupMembers, requestorManager, internalSponsors and externalSponsors. When creating or updating a policy, if there are no escalation approvers, or escalation approvers are not required for the stage, the value of this property should be an empty collection
  final pulumi.Input<List<AccessPackageAssignmentPolicyApprovalSettingsApprovalStageAlternativeApprover>>? alternativeApprovers;
  /// Decision must be made in how many days? If a request is not approved within this time period after it is made, it will be automatically rejected
  final pulumi.Input<int> approvalTimeoutInDays;
  /// Whether an approver must provide a justification for their decision. Justification is visible to other approvers and the requestor
  final pulumi.Input<bool>? approverJustificationRequired;
  /// Forward to alternate approver(s) after how many days?
  final pulumi.Input<int>? enableAlternativeApprovalInDays;
  /// The users who will be asked to approve requests. A collection of singleUser, groupMembers, requestorManager, internalSponsors and externalSponsors. When creating or updating a policy, include at least one userSet in this collection
  final pulumi.Input<List<AccessPackageAssignmentPolicyApprovalSettingsApprovalStagePrimaryApprover>>? primaryApprovers;

  /// Creates a new [AccessPackageAssignmentPolicyApprovalSettingsApprovalStage].
  /// [alternativeApprovalEnabled] If no action taken, forward to alternate approvers?
  /// [alternativeApprovers] If escalation is enabled and the primary approvers do not respond before the escalation time, the escalationApprovers are the users who will be asked to approve requests. This can be a collection of singleUser, groupMembers, requestorManager, internalSponsors and externalSponsors. When creating or updating a policy, if there are no escalation approvers, or escalation approvers are not required for the stage, the value of this property should be an empty collection
  /// [approvalTimeoutInDays] Decision must be made in how many days? If a request is not approved within this time period after it is made, it will be automatically rejected
  /// [approverJustificationRequired] Whether an approver must provide a justification for their decision. Justification is visible to other approvers and the requestor
  /// [enableAlternativeApprovalInDays] Forward to alternate approver(s) after how many days?
  /// [primaryApprovers] The users who will be asked to approve requests. A collection of singleUser, groupMembers, requestorManager, internalSponsors and externalSponsors. When creating or updating a policy, include at least one userSet in this collection
  AccessPackageAssignmentPolicyApprovalSettingsApprovalStage({
    this.alternativeApprovalEnabled,
    this.alternativeApprovers,
    required this.approvalTimeoutInDays,
    this.approverJustificationRequired,
    this.enableAlternativeApprovalInDays,
    this.primaryApprovers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternativeApprovalEnabled': ?alternativeApprovalEnabled,
      'alternativeApprovers': ?pulumi.Input.mapOptionalInputValue<List<AccessPackageAssignmentPolicyApprovalSettingsApprovalStageAlternativeApprover>, List<Map<String, dynamic>>>(alternativeApprovers, (value) => pulumi.Input.encodeList<AccessPackageAssignmentPolicyApprovalSettingsApprovalStageAlternativeApprover, Map<String, dynamic>>(value, (value) => value.toMap())),
      'approvalTimeoutInDays': approvalTimeoutInDays,
      'approverJustificationRequired': ?approverJustificationRequired,
      'enableAlternativeApprovalInDays': ?enableAlternativeApprovalInDays,
      'primaryApprovers': ?pulumi.Input.mapOptionalInputValue<List<AccessPackageAssignmentPolicyApprovalSettingsApprovalStagePrimaryApprover>, List<Map<String, dynamic>>>(primaryApprovers, (value) => pulumi.Input.encodeList<AccessPackageAssignmentPolicyApprovalSettingsApprovalStagePrimaryApprover, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessPackageAssignmentPolicyApprovalSettingsApprovalStage.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyApprovalSettingsApprovalStage(
      alternativeApprovalEnabled: map['alternativeApprovalEnabled'] == null ? null : (map['alternativeApprovalEnabled'] as bool).input(),
      alternativeApprovers: map['alternativeApprovers'] == null ? null : (pulumi.Input.decodeList<AccessPackageAssignmentPolicyApprovalSettingsApprovalStageAlternativeApprover>(map['alternativeApprovers'], (value) => AccessPackageAssignmentPolicyApprovalSettingsApprovalStageAlternativeApprover.fromMap((value as Map).cast<String, dynamic>()))).input(),
      approvalTimeoutInDays: (map['approvalTimeoutInDays'] as int).input(),
      approverJustificationRequired: map['approverJustificationRequired'] == null ? null : (map['approverJustificationRequired'] as bool).input(),
      enableAlternativeApprovalInDays: map['enableAlternativeApprovalInDays'] == null ? null : (map['enableAlternativeApprovalInDays'] as int).input(),
      primaryApprovers: map['primaryApprovers'] == null ? null : (pulumi.Input.decodeList<AccessPackageAssignmentPolicyApprovalSettingsApprovalStagePrimaryApprover>(map['primaryApprovers'], (value) => AccessPackageAssignmentPolicyApprovalSettingsApprovalStagePrimaryApprover.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

