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
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.storageDiscoveryWorkspaceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            StorageDiscoveryWorkspaceProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'storageDiscoveryWorkspaceName': ?storageDiscoveryWorkspaceName,
      'tags': ?tags,
    };
  }

  factory StorageDiscoveryWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return StorageDiscoveryWorkspaceArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StorageDiscoveryWorkspaceProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      storageDiscoveryWorkspaceName: (() {
        final guardedValue = map['storageDiscoveryWorkspaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
