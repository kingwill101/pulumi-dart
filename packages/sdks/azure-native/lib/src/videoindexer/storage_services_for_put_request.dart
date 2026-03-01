// ignore_for_file: unused_element, unnecessary_cast


/// The storage services details
class StorageServicesForPutRequest {
  /// The storage services resource id
  final String? resourceId;
  /// The user assigned identity to be used to grant permissions
  final String? userAssignedIdentity;

  /// Creates a new [StorageServicesForPutRequest].
  /// [resourceId] The storage services resource id
  /// [userAssignedIdentity] The user assigned identity to be used to grant permissions
  StorageServicesForPutRequest({
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
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : map['userAssignedIdentity'] as String,
    );
  }
}

