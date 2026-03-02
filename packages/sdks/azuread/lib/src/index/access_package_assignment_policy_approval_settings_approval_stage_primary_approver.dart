// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPackageAssignmentPolicyApprovalSettingsApprovalStagePrimaryApprover {
  /// For a user in an approval stage, this property indicates whether the user is a backup fallback approver
  final pulumi.Input<bool>? backup;
  /// The object ID of the subject
  final pulumi.Input<String>? objectId;
  /// Type of users
  final pulumi.Input<String> subjectType;

  /// Creates a new [AccessPackageAssignmentPolicyApprovalSettingsApprovalStagePrimaryApprover].
  /// [backup] For a user in an approval stage, this property indicates whether the user is a backup fallback approver
  /// [objectId] The object ID of the subject
  /// [subjectType] Type of users
  AccessPackageAssignmentPolicyApprovalSettingsApprovalStagePrimaryApprover({
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

  factory AccessPackageAssignmentPolicyApprovalSettingsApprovalStagePrimaryApprover.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyApprovalSettingsApprovalStagePrimaryApprover(
      backup: map['backup'] == null ? null : (map['backup']! as bool).input(),
      objectId: map['objectId'] == null ? null : (map['objectId']! as String).input(),
      subjectType: (map['subjectType'] as String).input(),
    );
  }
}

