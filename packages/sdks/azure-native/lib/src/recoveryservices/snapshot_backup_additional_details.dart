// ignore_for_file: unused_element, unnecessary_cast

import 'user_assigned_managed_identity_details.dart';

/// Snapshot Backup related fields for WorkloadType SaPHanaSystem
class SnapshotBackupAdditionalDetails {
  final String? instantRPDetails;
  final int? instantRpRetentionRangeInDays;
  /// User assigned managed identity details
  final UserAssignedManagedIdentityDetails? userAssignedManagedIdentityDetails;

  /// Creates a new [SnapshotBackupAdditionalDetails].
  /// [instantRPDetails] Optional.
  /// [instantRpRetentionRangeInDays] Optional.
  /// [userAssignedManagedIdentityDetails] User assigned managed identity details
  SnapshotBackupAdditionalDetails({
    this.instantRPDetails,
    this.instantRpRetentionRangeInDays,
    this.userAssignedManagedIdentityDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instantRPDetails': ?instantRPDetails,
      'instantRpRetentionRangeInDays': ?instantRpRetentionRangeInDays,
      'userAssignedManagedIdentityDetails': ?userAssignedManagedIdentityDetails == null ? null : userAssignedManagedIdentityDetails!.toMap(),
    };
  }

  factory SnapshotBackupAdditionalDetails.fromMap(Map<String, dynamic> map) {
    return SnapshotBackupAdditionalDetails(
      instantRPDetails: map['instantRPDetails'] == null ? null : map['instantRPDetails'] as String,
      instantRpRetentionRangeInDays: map['instantRpRetentionRangeInDays'] == null ? null : map['instantRpRetentionRangeInDays'] as int,
      userAssignedManagedIdentityDetails: map['userAssignedManagedIdentityDetails'] == null ? null : UserAssignedManagedIdentityDetails.fromMap((map['userAssignedManagedIdentityDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

