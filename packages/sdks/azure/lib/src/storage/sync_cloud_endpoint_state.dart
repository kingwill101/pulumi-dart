// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SyncCloudEndpoint resources.
class SyncCloudEndpointState {
  /// The Storage Share name to be synchronized in this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  final pulumi.Input<String>? fileShareName;
  /// The name which should be used for this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  final pulumi.Input<String>? storageAccountId;
  /// The Tenant ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created. Defaults to the current tenant id.
  final pulumi.Input<String>? storageAccountTenantId;
  /// The ID of the Storage Sync Group where this Cloud Endpoint should be created. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  final pulumi.Input<String>? storageSyncGroupId;

  /// Creates a new [SyncCloudEndpointState].
  /// [fileShareName] The Storage Share name to be synchronized in this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  /// [name] The name which should be used for this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  /// [storageAccountId] The ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  /// [storageAccountTenantId] The Tenant ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created. Defaults to the current tenant id.
  /// [storageSyncGroupId] The ID of the Storage Sync Group where this Cloud Endpoint should be created. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  const SyncCloudEndpointState({
    this.fileShareName,
    this.name,
    this.storageAccountId,
    this.storageAccountTenantId,
    this.storageSyncGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileShareName': ?fileShareName,
      'name': ?name,
      'storageAccountId': ?storageAccountId,
      'storageAccountTenantId': ?storageAccountTenantId,
      'storageSyncGroupId': ?storageSyncGroupId,
    };
  }

  factory SyncCloudEndpointState.fromMap(Map<String, dynamic> map) {
    return SyncCloudEndpointState(
      fileShareName: (() { final guardedValue = map['fileShareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountTenantId: (() { final guardedValue = map['storageAccountTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSyncGroupId: (() { final guardedValue = map['storageSyncGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
