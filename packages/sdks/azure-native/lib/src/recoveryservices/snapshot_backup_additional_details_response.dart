// ignore_for_file: unused_element, unnecessary_cast

import 'user_assigned_managed_identity_details_response.dart';

/// Snapshot Backup related fields for WorkloadType SaPHanaSystem
class SnapshotBackupAdditionalDetailsResponse {
  final String? instantRPDetails;
  final int? instantRpRetentionRangeInDays;
  /// User assigned managed identity details
  final UserAssignedManagedIdentityDetailsResponse? userAssignedManagedIdentityDetails;

  /// Creates a new [SnapshotBackupAdditionalDetailsResponse].
  /// [instantRPDetails] Optional.
  /// [instantRpRetentionRangeInDays] Optional.
  /// [userAssignedManagedIdentityDetails] User assigned managed identity details
  SnapshotBackupAdditionalDetailsResponse({
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

  factory SnapshotBackupAdditionalDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SnapshotBackupAdditionalDetailsResponse(
      instantRPDetails: map['instantRPDetails'] == null ? null : map['instantRPDetails'] as String,
      instantRpRetentionRangeInDays: map['instantRpRetentionRangeInDays'] == null ? null : map['instantRpRetentionRangeInDays'] as int,
      userAssignedManagedIdentityDetails: map['userAssignedManagedIdentityDetails'] == null ? null : UserAssignedManagedIdentityDetailsResponse.fromMap((map['userAssignedManagedIdentityDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

