// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the data lake storage account associated with the workspace
class DataLakeStorageAccountDetailsResponse {
  /// Account URL
  final pulumi.Input<String>? accountUrl;

  /// Create managed private endpoint to this storage account or not
  final pulumi.Input<bool>? createManagedPrivateEndpoint;

  /// Filesystem name
  final pulumi.Input<String>? filesystem;

  /// ARM resource Id of this storage account
  final pulumi.Input<String>? resourceId;

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

  factory DataLakeStorageAccountDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataLakeStorageAccountDetailsResponse(
      accountUrl: (() {
        final guardedValue = map['accountUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createManagedPrivateEndpoint: (() {
        final guardedValue = map['createManagedPrivateEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      filesystem: (() {
        final guardedValue = map['filesystem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
