// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_discovery_workspace_properties.dart';

/// {@template pulumi_storagediscovery_storage_discovery_workspace_args_doc}
/// The set of arguments for StorageDiscoveryWorkspace.
/// {@endtemplate}
/// {@macro pulumi_storagediscovery_storage_discovery_workspace_args_doc}
class StorageDiscoveryWorkspaceArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<StorageDiscoveryWorkspaceProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the StorageDiscoveryWorkspace
  final pulumi.Input<String>? storageDiscoveryWorkspaceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StorageDiscoveryWorkspaceArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageDiscoveryWorkspaceName] The name of the StorageDiscoveryWorkspace
  /// [tags] Resource tags.
  StorageDiscoveryWorkspaceArgs({
    pulumi.Output<String>? location,
    pulumi.Output<StorageDiscoveryWorkspaceProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? storageDiscoveryWorkspaceName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<StorageDiscoveryWorkspaceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageDiscoveryWorkspaceName = pulumi.Input.asOptionalInput<String>(storageDiscoveryWorkspaceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<StorageDiscoveryWorkspaceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'storageDiscoveryWorkspaceName': ?storageDiscoveryWorkspaceName,
      'tags': ?tags,
    };
  }

  factory StorageDiscoveryWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return StorageDiscoveryWorkspaceArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<StorageDiscoveryWorkspaceProperties>(StorageDiscoveryWorkspaceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageDiscoveryWorkspaceName: map['storageDiscoveryWorkspaceName'] == null ? null : pulumi.Output.create<String>(map['storageDiscoveryWorkspaceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

