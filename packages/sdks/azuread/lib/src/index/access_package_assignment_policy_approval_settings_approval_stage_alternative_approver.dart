// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPackageAssignmentPolicyApprovalSettingsApprovalStageAlternativeApprover {
  /// For a user in an approval stage, this property indicates whether the user is a backup fallback approver
  final pulumi.Input<bool>? backup;
  /// The object ID of the subject
  final pulumi.Input<String>? objectId;
  /// Type of users
  final pulumi.Input<String> subjectType;

  /// Creates a new [AccessPackageAssignmentPolicyApprovalSettingsApprovalStageAlternativeApprover].
  /// [backup] For a user in an approval stage, this property indicates whether the user is a backup fallback approver
  /// [objectId] The object ID of the subject
  /// [subjectType] Type of users
  const AccessPackageAssignmentPolicyApprovalSettingsApprovalStageAlternativeApprover({
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
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectType: pulumi.Input.fromValue(map['subjectType'] as String),
    );
  }
}
