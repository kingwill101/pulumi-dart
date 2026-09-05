// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector_patch.dart';
import 'counter_set_patch_resource_k8s_io_v1beta1.dart';
import 'device_patch_resource_k8s_io_v1beta1.dart';
import 'resource_pool_patch_resource_k8s_io_v1beta1.dart';

/// ResourceSliceSpec contains the information published by the driver in one ResourceSlice.
class ResourceSliceSpecPatchResourceK8sIoV1beta1 {
  /// AllNodes indicates that all nodes have access to the resources in the pool.
  ///
  /// Exactly one of NodeName, NodeSelector, AllNodes, and PerDeviceNodeSelection must be set.
  final pulumi.Input<bool?>? allNodes;
  /// Devices lists some or all of the devices in this pool.
  ///
  /// Must not have more than 128 entries. If any device uses taints or consumes counters the limit is 64.
  ///
  /// Only one of Devices and SharedCounters can be set in a ResourceSlice.
  final pulumi.Input<List<DevicePatchResourceK8sIoV1beta1>?>? devices;
  /// Driver identifies the DRA driver providing the capacity information. A field selector can be used to list only ResourceSlice objects with a certain driver name.
  ///
  /// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver. It should use only lower case characters. This field is immutable.
  final pulumi.Input<String?>? driver;
  /// NodeName identifies the node which provides the resources in this pool. A field selector can be used to list only ResourceSlice objects belonging to a certain node.
  ///
  /// This field can be used to limit access from nodes to ResourceSlices with the same node name. It also indicates to autoscalers that adding new nodes of the same type as some old node might also make new resources available.
  ///
  /// Exactly one of NodeName, NodeSelector, AllNodes, and PerDeviceNodeSelection must be set. This field is immutable.
  final pulumi.Input<String?>? nodeName;
  /// NodeSelector defines which nodes have access to the resources in the pool, when that pool is not limited to a single node.
  ///
  /// Must use exactly one term.
  ///
  /// Exactly one of NodeName, NodeSelector, AllNodes, and PerDeviceNodeSelection must be set.
  final pulumi.Input<NodeSelectorPatch?>? nodeSelector;
  /// PartitionTypeAttribute names a string device attribute (by fully qualified name, e.g. "gpu.example.com/profile") whose value labels each device with its partition type, such as "Full" or "Half" for a MIG-style GPU.
  ///
  /// When set, every partitionable device in the slice must carry the attribute and devices sharing a value must share the same ConsumesCounters cost.
  final pulumi.Input<String?>? partitionTypeAttribute;
  /// PerDeviceNodeSelection defines whether the access from nodes to resources in the pool is set on the ResourceSlice level or on each device. If it is set to true, every device defined the ResourceSlice must specify this individually.
  ///
  /// Exactly one of NodeName, NodeSelector, AllNodes, and PerDeviceNodeSelection must be set.
  final pulumi.Input<bool?>? perDeviceNodeSelection;
  /// Pool describes the pool that this ResourceSlice belongs to.
  final pulumi.Input<ResourcePoolPatchResourceK8sIoV1beta1?>? pool;
  /// SharedCounters defines a list of counter sets, each of which has a name and a list of counters available.
  ///
  /// The names of the counter sets must be unique in the ResourcePool.
  ///
  /// Only one of Devices and SharedCounters can be set in a ResourceSlice.
  ///
  /// The maximum number of counter sets is 8.
  final pulumi.Input<List<CounterSetPatchResourceK8sIoV1beta1>?>? sharedCounters;
  /// SkipNodeOperations lists node-local resource operations (gRPC calls) that will be skipped for the devices in this slice when determining whether operations are necessary on the node. If all allocated devices for a driver in a claim skip an operation, that gRPC call will be skipped. Valid values are:
  ///
  /// - "NodePrepareResources": NodePrepareResources gRPC calls are skipped. This
  /// value cannot be specified unless "NodeUnprepareResources" is also listed
  /// (or "*" is specified).
  /// - "NodeUnprepareResources": NodeUnprepareResources gRPC calls are skipped. - "*": All node-local resource operations are skipped.
  ///
  /// Other values may be added in the future. The kubelet must ignore unknown values.
  final pulumi.Input<List<String>?>? skipNodeOperations;

  /// Creates a new [ResourceSliceSpecPatchResourceK8sIoV1beta1].
  /// [allNodes] AllNodes indicates that all nodes have access to the resources in the pool.
  /// [devices] Devices lists some or all of the devices in this pool.
  /// [driver] Driver identifies the DRA driver providing the capacity information. A field selector can be used to list only ResourceSlice objects with a certain driver name.
  /// [nodeName] NodeName identifies the node which provides the resources in this pool. A field selector can be used to list only ResourceSlice objects belonging to a certain node.
  /// [nodeSelector] NodeSelector defines which nodes have access to the resources in the pool, when that pool is not limited to a single node.
  /// [partitionTypeAttribute] PartitionTypeAttribute names a string device attribute (by fully qualified name, e.g. "gpu.example.com/profile") whose value labels each device with its partition type, such as "Full" or "Half" for a MIG-style GPU.
  /// [perDeviceNodeSelection] PerDeviceNodeSelection defines whether the access from nodes to resources in the pool is set on the ResourceSlice level or on each device. If it is set to true, every device defined the ResourceSlice must specify this individually.
  /// [pool] Pool describes the pool that this ResourceSlice belongs to.
  /// [sharedCounters] SharedCounters defines a list of counter sets, each of which has a name and a list of counters available.
  /// [skipNodeOperations] SkipNodeOperations lists node-local resource operations (gRPC calls) that will be skipped for the devices in this slice when determining whether operations are necessary on the node. If all allocated devices for a driver in a claim skip an operation, that gRPC call will be skipped. Valid values are:
  const ResourceSliceSpecPatchResourceK8sIoV1beta1({
    this.allNodes,
    this.devices,
    this.driver,
    this.nodeName,
    this.nodeSelector,
    this.partitionTypeAttribute,
    this.perDeviceNodeSelection,
    this.pool,
    this.sharedCounters,
    this.skipNodeOperations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allNodes': ?allNodes,
      'devices': ?pulumi.Input.mapOptionalInputValue<List<DevicePatchResourceK8sIoV1beta1>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<DevicePatchResourceK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'driver': ?driver,
      'nodeName': ?nodeName,
      'nodeSelector': ?pulumi.Input.mapOptionalInputValue<NodeSelectorPatch, Map<String, dynamic>>(nodeSelector, (value) => value.toMap()),
      'partitionTypeAttribute': ?partitionTypeAttribute,
      'perDeviceNodeSelection': ?perDeviceNodeSelection,
      'pool': ?pulumi.Input.mapOptionalInputValue<ResourcePoolPatchResourceK8sIoV1beta1, Map<String, dynamic>>(pool, (value) => value.toMap()),
      'sharedCounters': ?pulumi.Input.mapOptionalInputValue<List<CounterSetPatchResourceK8sIoV1beta1>, List<Map<String, dynamic>>>(sharedCounters, (value) => pulumi.Input.encodeList<CounterSetPatchResourceK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'skipNodeOperations': ?skipNodeOperations,
    };
  }

  factory ResourceSliceSpecPatchResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ResourceSliceSpecPatchResourceK8sIoV1beta1(
      allNodes: (() { final guardedValue = map['allNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DevicePatchResourceK8sIoV1beta1>(guardedValue, (value) => DevicePatchResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeSelector: (() { final guardedValue = map['nodeSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeSelectorPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      partitionTypeAttribute: (() { final guardedValue = map['partitionTypeAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      perDeviceNodeSelection: (() { final guardedValue = map['perDeviceNodeSelection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pool: (() { final guardedValue = map['pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePoolPatchResourceK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sharedCounters: (() { final guardedValue = map['sharedCounters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CounterSetPatchResourceK8sIoV1beta1>(guardedValue, (value) => CounterSetPatchResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      skipNodeOperations: (() { final guardedValue = map['skipNodeOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
