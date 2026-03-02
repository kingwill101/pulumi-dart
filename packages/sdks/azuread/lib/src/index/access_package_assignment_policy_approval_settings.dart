// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_assignment_policy_approval_settings_approval_stage.dart';

class AccessPackageAssignmentPolicyApprovalSettings {
  /// Whether an approval is required.
  final pulumi.Input<bool>? approvalRequired;
  /// Whether an approval is required to grant extension. Same approval settings used to approve initial access will apply.
  final pulumi.Input<bool>? approvalRequiredForExtension;
  /// An `approval_stage` block specifying the process to obtain an approval, as documented below.
  final pulumi.Input<List<AccessPackageAssignmentPolicyApprovalSettingsApprovalStage>>? approvalStages;
  /// Whether a requestor is required to provide a justification to request an access package. Justification is visible to approvers and the requestor.
  final pulumi.Input<bool>? requestorJustificationRequired;

  /// Creates a new [AccessPackageAssignmentPolicyApprovalSettings].
  /// [approvalRequired] Whether an approval is required.
  /// [approvalRequiredForExtension] Whether an approval is required to grant extension. Same approval settings used to approve initial access will apply.
  /// [approvalStages] An `approval_stage` block specifying the process to obtain an approval, as documented below.
  /// [requestorJustificationRequired] Whether a requestor is required to provide a justification to request an access package. Justification is visible to approvers and the requestor.
  AccessPackageAssignmentPolicyApprovalSettings({
    this.approvalRequired,
    this.approvalRequiredForExtension,
    this.approvalStages,
    this.requestorJustificationRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRequired': ?approvalRequired,
      'approvalRequiredForExtension': ?approvalRequiredForExtension,
      'approvalStages': ?pulumi.Input.mapOptionalInputValue<List<AccessPackageAssignmentPolicyApprovalSettingsApprovalStage>, List<Map<String, dynamic>>>(approvalStages, (value) => pulumi.Input.encodeList<AccessPackageAssignmentPolicyApprovalSettingsApprovalStage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestorJustificationRequired': ?requestorJustificationRequired,
    };
  }

  factory AccessPackageAssignmentPolicyApprovalSettings.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyApprovalSettings(
      approvalRequired: map['approvalRequired'] == null ? null : (map['approvalRequired'] as bool).input(),
      approvalRequiredForExtension: map['approvalRequiredForExtension'] == null ? null : (map['approvalRequiredForExtension'] as bool).input(),
      approvalStages: map['approvalStages'] == null ? null : (pulumi.Input.decodeList<AccessPackageAssignmentPolicyApprovalSettingsApprovalStage>(map['approvalStages'], (value) => AccessPackageAssignmentPolicyApprovalSettingsApprovalStage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestorJustificationRequired: map['requestorJustificationRequired'] == null ? null : (map['requestorJustificationRequired'] as bool).input(),
    );
  }
}

