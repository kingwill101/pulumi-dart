// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_sync_cloud_endpoint_sync_cloud_endpoint_args_doc}
/// The set of arguments for SyncCloudEndpoint.
/// {@endtemplate}
/// {@macro pulumi_storage_sync_cloud_endpoint_sync_cloud_endpoint_args_doc}
class SyncCloudEndpointArgs {
  /// The Storage Share name to be synchronized in this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  final pulumi.Input<String> fileShareName;
  /// The name which should be used for this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  final pulumi.Input<String> storageAccountId;
  /// The Tenant ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created. Defaults to the current tenant id.
  final pulumi.Input<String>? storageAccountTenantId;
  /// The ID of the Storage Sync Group where this Cloud Endpoint should be created. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  final pulumi.Input<String> storageSyncGroupId;

  /// Creates a new [SyncCloudEndpointArgs].
  /// [fileShareName] The Storage Share name to be synchronized in this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  /// [name] The name which should be used for this Storage Sync Cloud Endpoint. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  /// [storageAccountId] The ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  /// [storageAccountTenantId] The Tenant ID of the Storage Account where the Storage Share exists. Changing this forces a new Storage Sync Cloud Endpoint to be created. Defaults to the current tenant id.
  /// [storageSyncGroupId] The ID of the Storage Sync Group where this Cloud Endpoint should be created. Changing this forces a new Storage Sync Cloud Endpoint to be created.
  const SyncCloudEndpointArgs({
    required this.fileShareName,
    this.name,
    required this.storageAccountId,
    this.storageAccountTenantId,
    required this.storageSyncGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileShareName': fileShareName,
      'name': ?name,
      'storageAccountId': storageAccountId,
      'storageAccountTenantId': ?storageAccountTenantId,
      'storageSyncGroupId': storageSyncGroupId,
    };
  }

  factory SyncCloudEndpointArgs.fromMap(Map<String, dynamic> map) {
    return SyncCloudEndpointArgs(
      fileShareName: pulumi.Input.fromValue(map['fileShareName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
      storageAccountTenantId: (() { final guardedValue = map['storageAccountTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSyncGroupId: pulumi.Input.fromValue(map['storageSyncGroupId'] as String),
    );
  }
}
