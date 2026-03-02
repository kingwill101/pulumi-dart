// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage services details
class StorageServicesForPutRequestResponse {
  /// The storage services resource id
  final pulumi.Input<String>? resourceId;
  /// The user assigned identity to be used to grant permissions
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [StorageServicesForPutRequestResponse].
  /// [resourceId] The storage services resource id
  /// [userAssignedIdentity] The user assigned identity to be used to grant permissions
  StorageServicesForPutRequestResponse({
    this.resourceId,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory StorageServicesForPutRequestResponse.fromMap(Map<String, dynamic> map) {
    return StorageServicesForPutRequestResponse(
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : (map['userAssignedIdentity'] as String).input(),
    );
  }
}

