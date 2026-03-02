// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the data lake storage account associated with the workspace
class DataLakeStorageAccountDetails {
  /// Account URL
  final pulumi.Input<String>? accountUrl;
  /// Create managed private endpoint to this storage account or not
  final pulumi.Input<bool>? createManagedPrivateEndpoint;
  /// Filesystem name
  final pulumi.Input<String>? filesystem;
  /// ARM resource Id of this storage account
  final pulumi.Input<String>? resourceId;

  /// Creates a new [DataLakeStorageAccountDetails].
  /// [accountUrl] Account URL
  /// [createManagedPrivateEndpoint] Create managed private endpoint to this storage account or not
  /// [filesystem] Filesystem name
  /// [resourceId] ARM resource Id of this storage account
  DataLakeStorageAccountDetails({
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

  factory DataLakeStorageAccountDetails.fromMap(Map<String, dynamic> map) {
    return DataLakeStorageAccountDetails(
      accountUrl: map['accountUrl'] == null ? null : (map['accountUrl']! as String).input(),
      createManagedPrivateEndpoint: map['createManagedPrivateEndpoint'] == null ? null : (map['createManagedPrivateEndpoint']! as bool).input(),
      filesystem: map['filesystem'] == null ? null : (map['filesystem']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

