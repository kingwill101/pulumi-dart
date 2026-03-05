// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagesync_get_cloud_endpoint_args_doc}
/// Arguments for getCloudEndpoint.
/// {@endtemplate}
/// {@macro pulumi_storagesync_get_cloud_endpoint_args_doc}
class GetCloudEndpointArgs {
  /// Name of Cloud Endpoint object.
  final pulumi.Input<String> cloudEndpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Storage Sync Service resource.
  final pulumi.Input<String> storageSyncServiceName;
  /// Name of Sync Group resource.
  final pulumi.Input<String> syncGroupName;

  /// Creates a new [GetCloudEndpointArgs].
  /// [cloudEndpointName] Name of Cloud Endpoint object.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageSyncServiceName] Name of Storage Sync Service resource.
  /// [syncGroupName] Name of Sync Group resource.
  GetCloudEndpointArgs({
    required this.cloudEndpointName,
    required this.resourceGroupName,
    required this.storageSyncServiceName,
    required this.syncGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudEndpointName': cloudEndpointName,
      'resourceGroupName': resourceGroupName,
      'storageSyncServiceName': storageSyncServiceName,
      'syncGroupName': syncGroupName,
    };
  }

  factory GetCloudEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudEndpointArgs(
      cloudEndpointName: pulumi.Input.fromValue(map['cloudEndpointName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageSyncServiceName: pulumi.Input.fromValue(map['storageSyncServiceName'] as String),
      syncGroupName: pulumi.Input.fromValue(map['syncGroupName'] as String),
    );
  }
}

