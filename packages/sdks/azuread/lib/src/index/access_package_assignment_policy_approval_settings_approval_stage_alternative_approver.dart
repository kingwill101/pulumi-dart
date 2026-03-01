// ignore_for_file: unused_element, unnecessary_cast


class AccessPackageAssignmentPolicyApprovalSettingsApprovalStageAlternativeApprover {
  /// For a user in an approval stage, this property indicates whether the user is a backup fallback approver
  final bool? backup;
  /// The object ID of the subject
  final String? objectId;
  /// Type of users
  final String subjectType;

  /// Creates a new [AccessPackageAssignmentPolicyApprovalSettingsApprovalStageAlternativeApprover].
  /// [backup] For a user in an approval stage, this property indicates whether the user is a backup fallback approver
  /// [objectId] The object ID of the subject
  /// [subjectType] Type of users
  AccessPackageAssignmentPolicyApprovalSettingsApprovalStageAlternativeApprover({
    this.backup,
    this.objectId,
    required this.subjectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': ?backup,
      'objectId': ?objectId,
      'subjectType': subjectType,
    };
  }

  factory AccessPackageAssignmentPolicyApprovalSettingsApprovalStageAlternativeApprover.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyApprovalSettingsApprovalStageAlternativeApprover(
      backup: map['backup'] == null ? null : map['backup'] as bool,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      subjectType: map['subjectType'] as String,
    );
  }
}

