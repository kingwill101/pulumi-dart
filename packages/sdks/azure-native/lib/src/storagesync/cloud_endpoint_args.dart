// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagesync_cloud_endpoint_args_doc}
/// The set of arguments for CloudEndpoint.
/// {@endtemplate}
/// {@macro pulumi_storagesync_cloud_endpoint_args_doc}
class CloudEndpointArgs {
  /// Azure file share name
  final pulumi.Input<String>? azureFileShareName;
  /// Name of Cloud Endpoint object.
  final pulumi.Input<String>? cloudEndpointName;
  /// Friendly Name
  final pulumi.Input<String>? friendlyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Storage Account Resource Id
  final pulumi.Input<String>? storageAccountResourceId;
  /// Storage Account Tenant Id
  final pulumi.Input<String>? storageAccountTenantId;
  /// Name of Storage Sync Service resource.
  final pulumi.Input<String> storageSyncServiceName;
  /// Name of Sync Group resource.
  final pulumi.Input<String> syncGroupName;

  /// Creates a new [CloudEndpointArgs].
  /// [azureFileShareName] Azure file share name
  /// [cloudEndpointName] Name of Cloud Endpoint object.
  /// [friendlyName] Friendly Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageAccountResourceId] Storage Account Resource Id
  /// [storageAccountTenantId] Storage Account Tenant Id
  /// [storageSyncServiceName] Name of Storage Sync Service resource.
  /// [syncGroupName] Name of Sync Group resource.
  const CloudEndpointArgs({
    this.azureFileShareName,
    this.cloudEndpointName,
    this.friendlyName,
    required this.resourceGroupName,
    this.storageAccountResourceId,
    this.storageAccountTenantId,
    required this.storageSyncServiceName,
    required this.syncGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFileShareName': ?azureFileShareName,
      'cloudEndpointName': ?cloudEndpointName,
      'friendlyName': ?friendlyName,
      'resourceGroupName': resourceGroupName,
      'storageAccountResourceId': ?storageAccountResourceId,
      'storageAccountTenantId': ?storageAccountTenantId,
      'storageSyncServiceName': storageSyncServiceName,
      'syncGroupName': syncGroupName,
    };
  }

  factory CloudEndpointArgs.fromMap(Map<String, dynamic> map) {
    return CloudEndpointArgs(
      azureFileShareName: (() { final guardedValue = map['azureFileShareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudEndpointName: (() { final guardedValue = map['cloudEndpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageAccountResourceId: (() { final guardedValue = map['storageAccountResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountTenantId: (() { final guardedValue = map['storageAccountTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSyncServiceName: pulumi.Input.fromValue(map['storageSyncServiceName'] as String),
      syncGroupName: pulumi.Input.fromValue(map['syncGroupName'] as String),
    );
  }
}
