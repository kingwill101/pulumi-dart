// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage services details
class StorageServicesForPutRequest {
  /// The storage services resource id
  final pulumi.Input<String>? resourceId;
  /// The user assigned identity to be used to grant permissions
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [StorageServicesForPutRequest].
  /// [resourceId] The storage services resource id
  /// [userAssignedIdentity] The user assigned identity to be used to grant permissions
  const StorageServicesForPutRequest({
    this.resourceId,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory StorageServicesForPutRequest.fromMap(Map<String, dynamic> map) {
    return StorageServicesForPutRequest(
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentity: (() { final guardedValue = map['userAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
