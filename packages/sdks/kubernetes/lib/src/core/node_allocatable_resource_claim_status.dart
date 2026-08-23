// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodeAllocatableResourceClaimStatus describes the status of node allocatable resources allocated via DRA.
class NodeAllocatableResourceClaimStatus {
  /// Containers lists the names of all containers in this pod that reference the claim.
  final pulumi.Input<List<String>>? containers;
  /// ResourceClaimName is the resource claim referenced by the pod that resulted in this node allocatable resource allocation.
  final pulumi.Input<String> resourceClaimName;
  /// Resources is a map of the node-allocatable resource name to the aggregate quantity allocated to the claim.
  final pulumi.Input<Map<String, String>> resources;

  /// Creates a new [NodeAllocatableResourceClaimStatus].
  /// [containers] Containers lists the names of all containers in this pod that reference the claim.
  /// [resourceClaimName] ResourceClaimName is the resource claim referenced by the pod that resulted in this node allocatable resource allocation.
  /// [resources] Resources is a map of the node-allocatable resource name to the aggregate quantity allocated to the claim.
  const NodeAllocatableResourceClaimStatus({
    this.containers,
    required this.resourceClaimName,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?containers,
      'resourceClaimName': resourceClaimName,
      'resources': resources,
    };
  }

  factory NodeAllocatableResourceClaimStatus.fromMap(Map<String, dynamic> map) {
    return NodeAllocatableResourceClaimStatus(
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceClaimName: pulumi.Input.fromValue(map['resourceClaimName'] as String),
      resources: pulumi.Input.fromValue((map['resources'] as Map).cast<String, String>()),
    );
  }
}
