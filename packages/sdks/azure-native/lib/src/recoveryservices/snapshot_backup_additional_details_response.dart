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
      instantRPDetails: map['instantRPDetails'] == null ? null : (map['instantRPDetails'] as String).input(),
      instantRpRetentionRangeInDays: map['instantRpRetentionRangeInDays'] == null ? null : (map['instantRpRetentionRangeInDays'] as int).input(),
      userAssignedManagedIdentityDetails: map['userAssignedManagedIdentityDetails'] == null ? null : (UserAssignedManagedIdentityDetailsResponse.fromMap((map['userAssignedManagedIdentityDetails'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

