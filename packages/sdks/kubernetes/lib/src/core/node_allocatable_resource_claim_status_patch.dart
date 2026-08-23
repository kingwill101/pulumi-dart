// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodeAllocatableResourceClaimStatus describes the status of node allocatable resources allocated via DRA.
class NodeAllocatableResourceClaimStatusPatch {
  /// Containers lists the names of all containers in this pod that reference the claim.
  final pulumi.Input<List<String>>? containers;
  /// ResourceClaimName is the resource claim referenced by the pod that resulted in this node allocatable resource allocation.
  final pulumi.Input<String>? resourceClaimName;
  /// Resources is a map of the node-allocatable resource name to the aggregate quantity allocated to the claim.
  final pulumi.Input<Map<String, String>>? resources;

  /// Creates a new [NodeAllocatableResourceClaimStatusPatch].
  /// [containers] Containers lists the names of all containers in this pod that reference the claim.
  /// [resourceClaimName] ResourceClaimName is the resource claim referenced by the pod that resulted in this node allocatable resource allocation.
  /// [resources] Resources is a map of the node-allocatable resource name to the aggregate quantity allocated to the claim.
  const NodeAllocatableResourceClaimStatusPatch({
    this.containers,
    this.resourceClaimName,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?containers,
      'resourceClaimName': ?resourceClaimName,
      'resources': ?resources,
    };
  }

  factory NodeAllocatableResourceClaimStatusPatch.fromMap(Map<String, dynamic> map) {
    return NodeAllocatableResourceClaimStatusPatch(
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceClaimName: (() { final guardedValue = map['resourceClaimName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
