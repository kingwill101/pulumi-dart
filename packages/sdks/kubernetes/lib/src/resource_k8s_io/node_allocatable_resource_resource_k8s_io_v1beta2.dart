// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_allocatable_mapping_resource_k8s_io_v1beta2.dart';
import 'node_allocatable_overhead_resource_k8s_io_v1beta2.dart';

/// NodeAllocatableResource defines the translation between the DRA device/capacity units requested to the corresponding quantity of the node allocatable resource. At least one of Mapping or Overhead must be specified. Not specifying either is an invalid configuration.
class NodeAllocatableResourceResourceK8sIoV1beta2 {
  /// Mapping is used when the device directly models a node allocatable resource like standard CPU or memory (e.g., with a CPU DRA driver). The calculated quantity is accounted for exactly once per claim instance on the node. To prevent node cgroup isolation friction, the scheduler explicitly blocks sharing mapped device claims across multiple pods.
  final pulumi.Input<NodeAllocatableMappingResourceK8sIoV1beta2?>? mapping;
  /// Overhead contains fields for modeling auxiliary overhead incurred on node allocatable resources when allocating devices that are not themselves modeling a node allocatable resource (e.g., host memory overhead for GPUs). Sharing overhead-mapped claims across multiple pods is allowed. The node allocatable overhead is accounted for individually for each pod referencing the claim. Overhead is always subtracted from the node's allocatable capacity for the resource, even when mapping is specified for the same resource. Eg: If a device models memory capacity per socket as a consumable capacity pool via Mapping (with CapacityKey), any overhead specified for the same resource will be subtracted from the node's general allocatable capacity and not from the per-socket capacity pool in Mapping.
  final pulumi.Input<NodeAllocatableOverheadResourceK8sIoV1beta2?>? overhead;

  /// Creates a new [NodeAllocatableResourceResourceK8sIoV1beta2].
  /// [mapping] Mapping is used when the device directly models a node allocatable resource like standard CPU or memory (e.g., with a CPU DRA driver). The calculated quantity is accounted for exactly once per claim instance on the node. To prevent node cgroup isolation friction, the scheduler explicitly blocks sharing mapped device claims across multiple pods.
  /// [overhead] Overhead contains fields for modeling auxiliary overhead incurred on node allocatable resources when allocating devices that are not themselves modeling a node allocatable resource (e.g., host memory overhead for GPUs). Sharing overhead-mapped claims across multiple pods is allowed. The node allocatable overhead is accounted for individually for each pod referencing the claim. Overhead is always subtracted from the node's allocatable capacity for the resource, even when mapping is specified for the same resource. Eg: If a device models memory capacity per socket as a consumable capacity pool via Mapping (with CapacityKey), any overhead specified for the same resource will be subtracted from the node's general allocatable capacity and not from the per-socket capacity pool in Mapping.
  const NodeAllocatableResourceResourceK8sIoV1beta2({
    this.mapping,
    this.overhead,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mapping': ?pulumi.Input.mapOptionalInputValue<NodeAllocatableMappingResourceK8sIoV1beta2, Map<String, dynamic>>(mapping, (value) => value.toMap()),
      'overhead': ?pulumi.Input.mapOptionalInputValue<NodeAllocatableOverheadResourceK8sIoV1beta2, Map<String, dynamic>>(overhead, (value) => value.toMap()),
    };
  }

  factory NodeAllocatableResourceResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return NodeAllocatableResourceResourceK8sIoV1beta2(
      mapping: (() { final guardedValue = map['mapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeAllocatableMappingResourceK8sIoV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overhead: (() { final guardedValue = map['overhead']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeAllocatableOverheadResourceK8sIoV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
