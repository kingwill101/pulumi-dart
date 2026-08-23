// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagediscovery_get_storage_discovery_workspace_args_doc}
/// Arguments for getStorageDiscoveryWorkspace.
/// {@endtemplate}
/// {@macro pulumi_storagediscovery_get_storage_discovery_workspace_args_doc}
class GetStorageDiscoveryWorkspaceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the StorageDiscoveryWorkspace
  final pulumi.Input<String> storageDiscoveryWorkspaceName;

  /// Creates a new [GetStorageDiscoveryWorkspaceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageDiscoveryWorkspaceName] The name of the StorageDiscoveryWorkspace
  const GetStorageDiscoveryWorkspaceArgs({
    required this.resourceGroupName,
    required this.storageDiscoveryWorkspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'storageDiscoveryWorkspaceName': storageDiscoveryWorkspaceName,
    };
  }

  factory GetStorageDiscoveryWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageDiscoveryWorkspaceArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageDiscoveryWorkspaceName: pulumi.Input.fromValue(map['storageDiscoveryWorkspaceName'] as String),
    );
  }
}
