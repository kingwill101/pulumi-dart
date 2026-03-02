// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector_patch.dart';
import 'device_patch_resource_k8s_io_v1alpha3.dart';
import 'resource_pool_patch_resource_k8s_io_v1alpha3.dart';

/// ResourceSliceSpec contains the information published by the driver in one ResourceSlice.
class ResourceSliceSpecPatchResourceK8sIoV1alpha3 {
  /// AllNodes indicates that all nodes have access to the resources in the pool.
  ///
  /// Exactly one of NodeName, NodeSelector and AllNodes must be set.
  final pulumi.Input<bool>? allNodes;
  /// Devices lists some or all of the devices in this pool.
  ///
  /// Must not have more than 128 entries.
  final pulumi.Input<List<DevicePatchResourceK8sIoV1alpha3>>? devices;
  /// Driver identifies the DRA driver providing the capacity information. A field selector can be used to list only ResourceSlice objects with a certain driver name.
  ///
  /// Must be a DNS subdomain and should end with a DNS domain owned by the vendor of the driver. This field is immutable.
  final pulumi.Input<String>? driver;
  /// NodeName identifies the node which provides the resources in this pool. A field selector can be used to list only ResourceSlice objects belonging to a certain node.
  ///
  /// This field can be used to limit access from nodes to ResourceSlices with the same node name. It also indicates to autoscalers that adding new nodes of the same type as some old node might also make new resources available.
  ///
  /// Exactly one of NodeName, NodeSelector and AllNodes must be set. This field is immutable.
  final pulumi.Input<String>? nodeName;
  /// NodeSelector defines which nodes have access to the resources in the pool, when that pool is not limited to a single node.
  ///
  /// Must use exactly one term.
  ///
  /// Exactly one of NodeName, NodeSelector and AllNodes must be set.
  final pulumi.Input<NodeSelectorPatch>? nodeSelector;
  /// Pool describes the pool that this ResourceSlice belongs to.
  final pulumi.Input<ResourcePoolPatchResourceK8sIoV1alpha3>? pool;

  /// Creates a new [ResourceSliceSpecPatchResourceK8sIoV1alpha3].
  /// [allNodes] AllNodes indicates that all nodes have access to the resources in the pool.
  /// [devices] Devices lists some or all of the devices in this pool.
  /// [driver] Driver identifies the DRA driver providing the capacity information. A field selector can be used to list only ResourceSlice objects with a certain driver name.
  /// [nodeName] NodeName identifies the node which provides the resources in this pool. A field selector can be used to list only ResourceSlice objects belonging to a certain node.
  /// [nodeSelector] NodeSelector defines which nodes have access to the resources in the pool, when that pool is not limited to a single node.
  /// [pool] Pool describes the pool that this ResourceSlice belongs to.
  ResourceSliceSpecPatchResourceK8sIoV1alpha3({
    this.allNodes,
    this.devices,
    this.driver,
    this.nodeName,
    this.nodeSelector,
    this.pool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allNodes': ?allNodes,
      'devices': ?pulumi.Input.mapOptionalInputValue<List<DevicePatchResourceK8sIoV1alpha3>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<DevicePatchResourceK8sIoV1alpha3, Map<String, dynamic>>(value, (value) => value.toMap())),
      'driver': ?driver,
      'nodeName': ?nodeName,
      'nodeSelector': ?pulumi.Input.mapOptionalInputValue<NodeSelectorPatch, Map<String, dynamic>>(nodeSelector, (value) => value.toMap()),
      'pool': ?pulumi.Input.mapOptionalInputValue<ResourcePoolPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(pool, (value) => value.toMap()),
    };
  }

  factory ResourceSliceSpecPatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return ResourceSliceSpecPatchResourceK8sIoV1alpha3(
      allNodes: map['allNodes'] == null ? null : (map['allNodes']! as bool).input(),
      devices: map['devices'] == null ? null : (pulumi.Input.decodeList<DevicePatchResourceK8sIoV1alpha3>(map['devices']!, (value) => DevicePatchResourceK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>()))).input(),
      driver: map['driver'] == null ? null : (map['driver']! as String).input(),
      nodeName: map['nodeName'] == null ? null : (map['nodeName']! as String).input(),
      nodeSelector: map['nodeSelector'] == null ? null : (NodeSelectorPatch.fromMap((map['nodeSelector']! as Map).cast<String, dynamic>())).input(),
      pool: map['pool'] == null ? null : (ResourcePoolPatchResourceK8sIoV1alpha3.fromMap((map['pool']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

