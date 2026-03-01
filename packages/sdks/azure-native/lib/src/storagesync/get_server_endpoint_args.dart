// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagesync_get_server_endpoint_args_doc}
/// Arguments for getServerEndpoint.
/// {@endtemplate}
/// {@macro pulumi_storagesync_get_server_endpoint_args_doc}
class GetServerEndpointArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Server Endpoint object.
  final pulumi.Input<String> serverEndpointName;
  /// Name of Storage Sync Service resource.
  final pulumi.Input<String> storageSyncServiceName;
  /// Name of Sync Group resource.
  final pulumi.Input<String> syncGroupName;

  /// Creates a new [GetServerEndpointArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverEndpointName] Name of Server Endpoint object.
  /// [storageSyncServiceName] Name of Storage Sync Service resource.
  /// [syncGroupName] Name of Sync Group resource.
  GetServerEndpointArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverEndpointName,
    required pulumi.Output<String> storageSyncServiceName,
    required pulumi.Output<String> syncGroupName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverEndpointName = pulumi.Input.asInput<String>(serverEndpointName),
      storageSyncServiceName = pulumi.Input.asInput<String>(storageSyncServiceName),
      syncGroupName = pulumi.Input.asInput<String>(syncGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serverEndpointName': serverEndpointName,
      'storageSyncServiceName': storageSyncServiceName,
      'syncGroupName': syncGroupName,
    };
  }

  factory GetServerEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetServerEndpointArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverEndpointName: pulumi.Output.create<String>(map['serverEndpointName'] as String),
      storageSyncServiceName: pulumi.Output.create<String>(map['storageSyncServiceName'] as String),
      syncGroupName: pulumi.Output.create<String>(map['syncGroupName'] as String),
    );
  }
}

