// ignore_for_file: unused_element, unnecessary_cast

import 'user_assigned_managed_identity_details.dart';

/// Snapshot Backup related fields for WorkloadType SAP Hana system
class SnapshotBackupAdditionalDetails {
  /// Instant RP details for the snapshot.
  final String? instantRPDetails;
  /// Retention range for instant Rp in days.
  final int? instantRpRetentionRangeInDays;
  /// User Assigned managed identity details used for snapshot policy.
  final UserAssignedManagedIdentityDetails? userAssignedManagedIdentityDetails;

  /// Creates a new [SnapshotBackupAdditionalDetails].
  /// [instantRPDetails] Instant RP details for the snapshot.
  /// [instantRpRetentionRangeInDays] Retention range for instant Rp in days.
  /// [userAssignedManagedIdentityDetails] User Assigned managed identity details used for snapshot policy.
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

