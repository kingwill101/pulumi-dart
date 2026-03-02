// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_discovery_scope.dart';

/// Storage Discovery Workspace Properties
class StorageDiscoveryWorkspaceProperties {
  /// The description of the storage discovery workspace
  final pulumi.Input<String>? description;
  /// The scopes of the storage discovery workspace.
  final pulumi.Input<List<StorageDiscoveryScope>> scopes;
  /// The storage discovery sku
  final pulumi.Input<String>? sku;
  /// The view level storage discovery data estate
  final pulumi.Input<List<String>> workspaceRoots;

  /// Creates a new [StorageDiscoveryWorkspaceProperties].
  /// [description] The description of the storage discovery workspace
  /// [scopes] The scopes of the storage discovery workspace.
  /// [sku] The storage discovery sku
  /// [workspaceRoots] The view level storage discovery data estate
  StorageDiscoveryWorkspaceProperties({
    this.description,
    required this.scopes,
    this.sku,
    required this.workspaceRoots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'scopes': pulumi.Input.mapInputValue<List<StorageDiscoveryScope>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<StorageDiscoveryScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': ?sku,
      'workspaceRoots': workspaceRoots,
    };
  }

  factory StorageDiscoveryWorkspaceProperties.fromMap(Map<String, dynamic> map) {
    return StorageDiscoveryWorkspaceProperties(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      scopes: (pulumi.Input.decodeList<StorageDiscoveryScope>(map['scopes'], (value) => StorageDiscoveryScope.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      workspaceRoots: ((map['workspaceRoots'] as List).cast<String>()).input(),
    );
  }
}

