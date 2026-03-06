// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_managed_identity_details.dart';

/// Snapshot Backup related fields for WorkloadType SaPHanaSystem
class SnapshotBackupAdditionalDetails {
  final pulumi.Input<String>? instantRPDetails;
  final pulumi.Input<int>? instantRpRetentionRangeInDays;
  /// User assigned managed identity details
  final pulumi.Input<UserAssignedManagedIdentityDetails>? userAssignedManagedIdentityDetails;

  /// Creates a new [SnapshotBackupAdditionalDetails].
  /// [instantRPDetails] Optional.
  /// [instantRpRetentionRangeInDays] Optional.
  /// [userAssignedManagedIdentityDetails] User assigned managed identity details
  const SnapshotBackupAdditionalDetails({
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

