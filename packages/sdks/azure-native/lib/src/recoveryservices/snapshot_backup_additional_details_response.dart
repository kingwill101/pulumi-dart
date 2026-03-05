// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_managed_identity_details_response.dart';

/// Snapshot Backup related fields for WorkloadType SaPHanaSystem
class SnapshotBackupAdditionalDetailsResponse {
  final pulumi.Input<String>? instantRPDetails;
  final pulumi.Input<int>? instantRpRetentionRangeInDays;
  /// User assigned managed identity details
  final pulumi.Input<UserAssignedManagedIdentityDetailsResponse>? userAssignedManagedIdentityDetails;

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

