// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_allocatable_mapping_patch.dart';
import 'node_allocatable_overhead_patch.dart';

/// NodeAllocatableResource defines the translation between the DRA device/capacity units requested to the corresponding quantity of the node allocatable resource. At least one of Mapping or Overhead must be specified. Not specifying either is an invalid configuration.
class NodeAllocatableResourcePatch {
  /// Mapping is used when the device directly models a node allocatable resource like standard CPU or memory (e.g., with a CPU DRA driver). The calculated quantity is accounted for exactly once per claim instance on the node. To prevent node cgroup isolation friction, the scheduler explicitly blocks sharing mapped device claims across multiple pods.
  final pulumi.Input<NodeAllocatableMappingPatch?>? mapping;
  /// Overhead contains fields for modeling auxiliary overhead incurred on node allocatable resources when allocating devices that are not themselves modeling a node allocatable resource (e.g., host memory overhead for GPUs). Sharing overhead-mapped claims across multiple pods is allowed. The node allocatable overhead is accounted for individually for each pod referencing the claim. Overhead is always subtracted from the node's allocatable capacity for the resource, even when mapping is specified for the same resource. Eg: If a device models memory capacity per socket as a consumable capacity pool via Mapping (with CapacityKey), any overhead specified for the same resource will be subtracted from the node's general allocatable capacity and not from the per-socket capacity pool in Mapping.
  final pulumi.Input<NodeAllocatableOverheadPatch?>? overhead;

  /// Creates a new [NodeAllocatableResourcePatch].
  /// [mapping] Mapping is used when the device directly models a node allocatable resource like standard CPU or memory (e.g., with a CPU DRA driver). The calculated quantity is accounted for exactly once per claim instance on the node. To prevent node cgroup isolation friction, the scheduler explicitly blocks sharing mapped device claims across multiple pods.
  /// [overhead] Overhead contains fields for modeling auxiliary overhead incurred on node allocatable resources when allocating devices that are not themselves modeling a node allocatable resource (e.g., host memory overhead for GPUs). Sharing overhead-mapped claims across multiple pods is allowed. The node allocatable overhead is accounted for individually for each pod referencing the claim. Overhead is always subtracted from the node's allocatable capacity for the resource, even when mapping is specified for the same resource. Eg: If a device models memory capacity per socket as a consumable capacity pool via Mapping (with CapacityKey), any overhead specified for the same resource will be subtracted from the node's general allocatable capacity and not from the per-socket capacity pool in Mapping.
  const NodeAllocatableResourcePatch({
    this.mapping,
    this.overhead,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapping': ?pulumi.Input.mapOptionalInputValue<NodeAllocatableMappingPatch, Map<String, dynamic>>(mapping, (value) => value.toMap()),
      'overhead': ?pulumi.Input.mapOptionalInputValue<NodeAllocatableOverheadPatch, Map<String, dynamic>>(overhead, (value) => value.toMap()),
    };
  }

  factory NodeAllocatableResourcePatch.fromMap(Map<String, dynamic> map) {
    return NodeAllocatableResourcePatch(
      mapping: (() { final guardedValue = map['mapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeAllocatableMappingPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overhead: (() { final guardedValue = map['overhead']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeAllocatableOverheadPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
