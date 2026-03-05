// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_managed_identity_details_response.dart';

/// Snapshot Backup related fields for WorkloadType SAP Hana system
class SnapshotBackupAdditionalDetailsResponse {
  /// Instant RP details for the snapshot.
  final pulumi.Input<String>? instantRPDetails;
  /// Retention range for instant Rp in days.
  final pulumi.Input<int>? instantRpRetentionRangeInDays;
  /// User Assigned managed identity details used for snapshot policy.
  final pulumi.Input<UserAssignedManagedIdentityDetailsResponse>? userAssignedManagedIdentityDetails;

  /// Creates a new [SnapshotBackupAdditionalDetailsResponse].
  /// [instantRPDetails] Instant RP details for the snapshot.
  /// [instantRpRetentionRangeInDays] Retention range for instant Rp in days.
  /// [userAssignedManagedIdentityDetails] User Assigned managed identity details used for snapshot policy.
  SnapshotBackupAdditionalDetailsResponse({
    this.instantRPDetails,
    this.instantRpRetentionRangeInDays,
    this.userAssignedManagedIdentityDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instantRPDetails': ?instantRPDetails,
      'instantRpRetentionRangeInDays': ?instantRpRetentionRangeInDays,
      'userAssignedManagedIdentityDetails': ?pulumi.Input.mapOptionalInputValue<UserAssignedManagedIdentityDetailsResponse, Map<String, dynamic>>(userAssignedManagedIdentityDetails, (value) => value.toMap()),
    };
  }

  factory SnapshotBackupAdditionalDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SnapshotBackupAdditionalDetailsResponse(
      instantRPDetails: (() { final guardedValue = map['instantRPDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instantRpRetentionRangeInDays: (() { final guardedValue = map['instantRpRetentionRangeInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      userAssignedManagedIdentityDetails: (() { final guardedValue = map['userAssignedManagedIdentityDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserAssignedManagedIdentityDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

