// ignore_for_file: unused_element, unnecessary_cast


/// Details of the data lake storage account associated with the workspace
class DataLakeStorageAccountDetailsResponse {
  /// Account URL
  final String? accountUrl;
  /// Create managed private endpoint to this storage account or not
  final bool? createManagedPrivateEndpoint;
  /// Filesystem name
  final String? filesystem;
  /// ARM resource Id of this storage account
  final String? resourceId;

  /// Creates a new [DataLakeStorageAccountDetailsResponse].
  /// [accountUrl] Account URL
  /// [createManagedPrivateEndpoint] Create managed private endpoint to this storage account or not
  /// [filesystem] Filesystem name
  /// [resourceId] ARM resource Id of this storage account
  DataLakeStorageAccountDetailsResponse({
    this.accountUrl,
    this.createManagedPrivateEndpoint,
    this.filesystem,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountUrl': ?accountUrl,
      'createManagedPrivateEndpoint': ?createManagedPrivateEndpoint,
      'filesystem': ?filesystem,
      'resourceId': ?resourceId,
    };
  }

  factory DataLakeStorageAccountDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeStorageAccountDetailsResponse(
      accountUrl: map['accountUrl'] == null ? null : map['accountUrl'] as String,
      createManagedPrivateEndpoint: map['createManagedPrivateEndpoint'] == null ? null : map['createManagedPrivateEndpoint'] as bool,
      filesystem: map['filesystem'] == null ? null : map['filesystem'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

