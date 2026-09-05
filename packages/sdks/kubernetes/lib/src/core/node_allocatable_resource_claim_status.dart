// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_allocatable_mapped_resources.dart';
import 'node_allocatable_overhead_resources.dart';

/// NodeAllocatableResourceClaimStatus describes the status of node allocatable resources allocated via DRA.
class NodeAllocatableResourceClaimStatus {
  /// Containers lists the names of all containers in this pod that reference the claim.
  final pulumi.Input<List<String>?>? containers;
  /// Mapping contains allocations through devices mapped in the device spec's `nodeAllocatableResources[...].mapping` field. This is used by kubelet for pod level and container-level cgroup enforcement.
  final pulumi.Input<List<NodeAllocatableMappedResources>?>? mapping;
  /// Overhead contains allocations through devices mapped in the device spec's `nodeAllocatableResources[...].overhead` field. This is used by kubelet for pod level and container-level cgroup enforcement.
  final pulumi.Input<List<NodeAllocatableOverheadResources>?>? overhead;
  /// ResourceClaimName is the resource claim referenced by the pod that resulted in this node allocatable resource allocation.
  final pulumi.Input<String> resourceClaimName;
  /// Resources is a map of the node-allocatable resource name to the aggregate quantity allocated to the claim.
  final pulumi.Input<Map<String, String>?>? resources;

  /// Creates a new [NodeAllocatableResourceClaimStatus].
  /// [containers] Containers lists the names of all containers in this pod that reference the claim.
  /// [mapping] Mapping contains allocations through devices mapped in the device spec's `nodeAllocatableResources[...].mapping` field. This is used by kubelet for pod level and container-level cgroup enforcement.
  /// [overhead] Overhead contains allocations through devices mapped in the device spec's `nodeAllocatableResources[...].overhead` field. This is used by kubelet for pod level and container-level cgroup enforcement.
  /// [resourceClaimName] ResourceClaimName is the resource claim referenced by the pod that resulted in this node allocatable resource allocation.
  /// [resources] Resources is a map of the node-allocatable resource name to the aggregate quantity allocated to the claim.
  const NodeAllocatableResourceClaimStatus({
    this.containers,
    this.mapping,
    this.overhead,
    required this.resourceClaimName,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?containers,
      'mapping': ?pulumi.Input.mapOptionalInputValue<List<NodeAllocatableMappedResources>, List<Map<String, dynamic>>>(mapping, (value) => pulumi.Input.encodeList<NodeAllocatableMappedResources, Map<String, dynamic>>(value, (value) => value.toMap())),
      'overhead': ?pulumi.Input.mapOptionalInputValue<List<NodeAllocatableOverheadResources>, List<Map<String, dynamic>>>(overhead, (value) => pulumi.Input.encodeList<NodeAllocatableOverheadResources, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceClaimName': resourceClaimName,
      'resources': ?resources,
    };
  }

  factory NodeAllocatableResourceClaimStatus.fromMap(Map<String, dynamic> map) {
    return NodeAllocatableResourceClaimStatus(
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mapping: (() { final guardedValue = map['mapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeAllocatableMappedResources>(guardedValue, (value) => NodeAllocatableMappedResources.fromMap((value as Map).cast<String, dynamic>()))); })(),
      overhead: (() { final guardedValue = map['overhead']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeAllocatableOverheadResources>(guardedValue, (value) => NodeAllocatableOverheadResources.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceClaimName: pulumi.Input.fromValue(map['resourceClaimName'] as String),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
