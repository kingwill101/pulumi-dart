// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_allocatable_mapped_resources_patch.dart';
import 'node_allocatable_overhead_resources_patch.dart';

/// NodeAllocatableResourceClaimStatus describes the status of node allocatable resources allocated via DRA.
class NodeAllocatableResourceClaimStatusPatch {
  /// Containers lists the names of all containers in this pod that reference the claim.
  final pulumi.Input<List<String>?>? containers;
  /// Mapping contains allocations through devices mapped in the device spec's `nodeAllocatableResources[...].mapping` field. This is used by kubelet for pod level and container-level cgroup enforcement.
  final pulumi.Input<List<NodeAllocatableMappedResourcesPatch>?>? mapping;
  /// Overhead contains allocations through devices mapped in the device spec's `nodeAllocatableResources[...].overhead` field. This is used by kubelet for pod level and container-level cgroup enforcement.
  final pulumi.Input<List<NodeAllocatableOverheadResourcesPatch>?>? overhead;
  /// ResourceClaimName is the resource claim referenced by the pod that resulted in this node allocatable resource allocation.
  final pulumi.Input<String?>? resourceClaimName;
  /// Resources is a map of the node-allocatable resource name to the aggregate quantity allocated to the claim.
  final pulumi.Input<Map<String, String>?>? resources;

  /// Creates a new [NodeAllocatableResourceClaimStatusPatch].
  /// [containers] Containers lists the names of all containers in this pod that reference the claim.
  /// [mapping] Mapping contains allocations through devices mapped in the device spec's `nodeAllocatableResources[...].mapping` field. This is used by kubelet for pod level and container-level cgroup enforcement.
  /// [overhead] Overhead contains allocations through devices mapped in the device spec's `nodeAllocatableResources[...].overhead` field. This is used by kubelet for pod level and container-level cgroup enforcement.
  /// [resourceClaimName] ResourceClaimName is the resource claim referenced by the pod that resulted in this node allocatable resource allocation.
  /// [resources] Resources is a map of the node-allocatable resource name to the aggregate quantity allocated to the claim.
  const NodeAllocatableResourceClaimStatusPatch({
    this.containers,
    this.mapping,
    this.overhead,
    this.resourceClaimName,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?containers,
      'mapping': ?pulumi.Input.mapOptionalInputValue<List<NodeAllocatableMappedResourcesPatch>, List<Map<String, dynamic>>>(mapping, (value) => pulumi.Input.encodeList<NodeAllocatableMappedResourcesPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'overhead': ?pulumi.Input.mapOptionalInputValue<List<NodeAllocatableOverheadResourcesPatch>, List<Map<String, dynamic>>>(overhead, (value) => pulumi.Input.encodeList<NodeAllocatableOverheadResourcesPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceClaimName': ?resourceClaimName,
      'resources': ?resources,
    };
  }

  factory NodeAllocatableResourceClaimStatusPatch.fromMap(Map<String, dynamic> map) {
    return NodeAllocatableResourceClaimStatusPatch(
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mapping: (() { final guardedValue = map['mapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeAllocatableMappedResourcesPatch>(guardedValue, (value) => NodeAllocatableMappedResourcesPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      overhead: (() { final guardedValue = map['overhead']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeAllocatableOverheadResourcesPatch>(guardedValue, (value) => NodeAllocatableOverheadResourcesPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceClaimName: (() { final guardedValue = map['resourceClaimName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
