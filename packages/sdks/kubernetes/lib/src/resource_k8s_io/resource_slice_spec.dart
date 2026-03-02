// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector.dart';
import 'counter_set.dart';
import 'device.dart';
import 'resource_pool.dart';

/// ResourceSliceSpec contains the information published by the driver in one ResourceSlice.
class ResourceSliceSpec {
  /// AllNodes indicates that all nodes have access to the resources in the pool.
  ///
  /// Exactly one of NodeName, NodeSelector, AllNodes, and PerDeviceNodeSelection must be set.
  final pulumi.Input<bool>? allNodes;
  /// Devices lists some or all of the devices in this pool.
  ///
  /// Must not have more than 128 entries. If any device uses taints or consumes counters the limit is 64.
  ///
  /// Only one of Devices and SharedCounters can be set in a ResourceSlice.
  final pulumi.Input<List<Device>>? devices;
  /// Driver identifies the DRA driver providing the capacity information. A field selector can be used to list only ResourceSlice objects with a certain driver name.
  ///
  /// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver. It should use only lower case characters. This field is immutable.
  final pulumi.Input<String> driver;
  /// NodeName identifies the node which provides the resources in this pool. A field selector can be used to list only ResourceSlice objects belonging to a certain node.
  ///
  /// This field can be used to limit access from nodes to ResourceSlices with the same node name. It also indicates to autoscalers that adding new nodes of the same type as some old node might also make new resources available.
  ///
  /// Exactly one of NodeName, NodeSelector, AllNodes, and PerDeviceNodeSelection must be set. This field is immutable.
  final pulumi.Input<String>? nodeName;
  /// NodeSelector defines which nodes have access to the resources in the pool, when that pool is not limited to a single node.
  ///
  /// Must use exactly one term.
  ///
  /// Exactly one of NodeName, NodeSelector, AllNodes, and PerDeviceNodeSelection must be set.
  final pulumi.Input<NodeSelector>? nodeSelector;
  /// PerDeviceNodeSelection defines whether the access from nodes to resources in the pool is set on the ResourceSlice level or on each device. If it is set to true, every device defined the ResourceSlice must specify this individually.
  ///
  /// Exactly one of NodeName, NodeSelector, AllNodes, and PerDeviceNodeSelection must be set.
  final pulumi.Input<bool>? perDeviceNodeSelection;
  /// Pool describes the pool that this ResourceSlice belongs to.
  final pulumi.Input<ResourcePool> pool;
  /// SharedCounters defines a list of counter sets, each of which has a name and a list of counters available.
  ///
  /// The names of the counter sets must be unique in the ResourcePool.
  ///
  /// Only one of Devices and SharedCounters can be set in a ResourceSlice.
  ///
  /// The maximum number of counter sets is 8.
  final pulumi.Input<List<CounterSet>>? sharedCounters;

  /// Creates a new [ResourceSliceSpec].
  /// [allNodes] AllNodes indicates that all nodes have access to the resources in the pool.
  /// [devices] Devices lists some or all of the devices in this pool.
  /// [driver] Driver identifies the DRA driver providing the capacity information. A field selector can be used to list only ResourceSlice objects with a certain driver name.
  /// [nodeName] NodeName identifies the node which provides the resources in this pool. A field selector can be used to list only ResourceSlice objects belonging to a certain node.
  /// [nodeSelector] NodeSelector defines which nodes have access to the resources in the pool, when that pool is not limited to a single node.
  /// [perDeviceNodeSelection] PerDeviceNodeSelection defines whether the access from nodes to resources in the pool is set on the ResourceSlice level or on each device. If it is set to true, every device defined the ResourceSlice must specify this individually.
  /// [pool] Pool describes the pool that this ResourceSlice belongs to.
  /// [sharedCounters] SharedCounters defines a list of counter sets, each of which has a name and a list of counters available.
  ResourceSliceSpec({
    this.allNodes,
    this.devices,
    required this.driver,
    this.nodeName,
    this.nodeSelector,
    this.perDeviceNodeSelection,
    required this.pool,
    this.sharedCounters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allNodes': ?allNodes,
      'devices': ?pulumi.Input.mapOptionalInputValue<List<Device>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<Device, Map<String, dynamic>>(value, (value) => value.toMap())),
      'driver': driver,
      'nodeName': ?nodeName,
      'nodeSelector': ?pulumi.Input.mapOptionalInputValue<NodeSelector, Map<String, dynamic>>(nodeSelector, (value) => value.toMap()),
      'perDeviceNodeSelection': ?perDeviceNodeSelection,
      'pool': pulumi.Input.mapInputValue<ResourcePool, Map<String, dynamic>>(pool, (value) => value.toMap()),
      'sharedCounters': ?pulumi.Input.mapOptionalInputValue<List<CounterSet>, List<Map<String, dynamic>>>(sharedCounters, (value) => pulumi.Input.encodeList<CounterSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceSliceSpec.fromMap(Map<String, dynamic> map) {
    return ResourceSliceSpec(
      allNodes: map['allNodes'] == null ? null : (map['allNodes'] as bool).input(),
      devices: map['devices'] == null ? null : (pulumi.Input.decodeList<Device>(map['devices'], (value) => Device.fromMap((value as Map).cast<String, dynamic>()))).input(),
      driver: (map['driver'] as String).input(),
      nodeName: map['nodeName'] == null ? null : (map['nodeName'] as String).input(),
      nodeSelector: map['nodeSelector'] == null ? null : (NodeSelector.fromMap((map['nodeSelector'] as Map).cast<String, dynamic>())).input(),
      perDeviceNodeSelection: map['perDeviceNodeSelection'] == null ? null : (map['perDeviceNodeSelection'] as bool).input(),
      pool: (ResourcePool.fromMap((map['pool'] as Map).cast<String, dynamic>())).input(),
      sharedCounters: map['sharedCounters'] == null ? null : (pulumi.Input.decodeList<CounterSet>(map['sharedCounters'], (value) => CounterSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

