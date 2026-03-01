// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagesync_get_registered_server_args_doc}
/// Arguments for getRegisteredServer.
/// {@endtemplate}
/// {@macro pulumi_storagesync_get_registered_server_args_doc}
class GetRegisteredServerArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// GUID identifying the on-premises server.
  final pulumi.Input<String> serverId;
  /// Name of Storage Sync Service resource.
  final pulumi.Input<String> storageSyncServiceName;

  /// Creates a new [GetRegisteredServerArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverId] GUID identifying the on-premises server.
  /// [storageSyncServiceName] Name of Storage Sync Service resource.
  GetRegisteredServerArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverId,
    required pulumi.Output<String> storageSyncServiceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverId = pulumi.Input.asInput<String>(serverId),
      storageSyncServiceName = pulumi.Input.asInput<String>(storageSyncServiceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serverId': serverId,
      'storageSyncServiceName': storageSyncServiceName,
    };
  }

  factory GetRegisteredServerArgs.fromMap(Map<String, dynamic> map) {
    return GetRegisteredServerArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverId: pulumi.Output.create<String>(map['serverId'] as String),
      storageSyncServiceName: pulumi.Output.create<String>(map['storageSyncServiceName'] as String),
    );
  }
}

