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
  GetStorageDiscoveryWorkspaceArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> storageDiscoveryWorkspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageDiscoveryWorkspaceName = pulumi.Input.asInput<String>(storageDiscoveryWorkspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'storageDiscoveryWorkspaceName': storageDiscoveryWorkspaceName,
    };
  }

  factory GetStorageDiscoveryWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageDiscoveryWorkspaceArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageDiscoveryWorkspaceName: pulumi.Output.create<String>(map['storageDiscoveryWorkspaceName'] as String),
    );
  }
}

