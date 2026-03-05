// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_managed_identity_details.dart';

/// Snapshot Backup related fields for WorkloadType SAP Hana system
class SnapshotBackupAdditionalDetails {
  /// Instant RP details for the snapshot.
  final pulumi.Input<String>? instantRPDetails;
  /// Retention range for instant Rp in days.
  final pulumi.Input<int>? instantRpRetentionRangeInDays;
  /// User Assigned managed identity details used for snapshot policy.
  final pulumi.Input<UserAssignedManagedIdentityDetails>? userAssignedManagedIdentityDetails;

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
      'userAssignedManagedIdentityDetails': ?pulumi.Input.mapOptionalInputValue<UserAssignedManagedIdentityDetails, Map<String, dynamic>>(userAssignedManagedIdentityDetails, (value) => value.toMap()),
    };
  }

  factory SnapshotBackupAdditionalDetails.fromMap(Map<String, dynamic> map) {
    return SnapshotBackupAdditionalDetails(
      instantRPDetails: (() { final guardedValue = map['instantRPDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instantRpRetentionRangeInDays: (() { final guardedValue = map['instantRpRetentionRangeInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      userAssignedManagedIdentityDetails: (() { final guardedValue = map['userAssignedManagedIdentityDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserAssignedManagedIdentityDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

