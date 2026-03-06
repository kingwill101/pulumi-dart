// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_discovery_scope_response.dart';

/// Storage Discovery Workspace Properties
class StorageDiscoveryWorkspacePropertiesResponse {
  /// The description of the storage discovery workspace
  final pulumi.Input<String>? description;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// The scopes of the storage discovery workspace.
  final pulumi.Input<List<StorageDiscoveryScopeResponse>> scopes;
  /// The storage discovery sku
  final pulumi.Input<String>? sku;
  /// The view level storage discovery data estate
  final pulumi.Input<List<String>> workspaceRoots;

  /// Creates a new [StorageDiscoveryWorkspacePropertiesResponse].
  /// [description] The description of the storage discovery workspace
  /// [provisioningState] The status of the last operation.
  /// [scopes] The scopes of the storage discovery workspace.
  /// [sku] The storage discovery sku
  /// [workspaceRoots] The view level storage discovery data estate
  const StorageDiscoveryWorkspacePropertiesResponse({
    this.description,
    required this.provisioningState,
    required this.scopes,
    this.sku,
    required this.workspaceRoots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'provisioningState': provisioningState,
      'scopes': pulumi.Input.mapInputValue<List<StorageDiscoveryScopeResponse>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<StorageDiscoveryScopeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': ?sku,
      'workspaceRoots': workspaceRoots,
    };
  }

  factory StorageDiscoveryWorkspacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageDiscoveryWorkspacePropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      scopes: pulumi.Input.fromValue(pulumi.Input.decodeList<StorageDiscoveryScopeResponse>(map['scopes']!, (value) => StorageDiscoveryScopeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceRoots: pulumi.Input.fromValue((map['workspaceRoots'] as List).cast<String>()),
    );
  }
}

