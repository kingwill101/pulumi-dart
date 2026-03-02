// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector_patch.dart';
import 'device_attribute.dart';
import 'device_capacity.dart';
import 'device_counter_consumption_patch.dart';
import 'device_taint_patch.dart';

/// Device represents one individual hardware instance that can be selected based on its attributes. Besides the name, exactly one field must be set.
class DevicePatch {
  /// AllNodes indicates that all nodes have access to the device.
  ///
  /// Must only be set if Spec.PerDeviceNodeSelection is set to true. At most one of NodeName, NodeSelector and AllNodes can be set.
  final pulumi.Input<bool>? allNodes;
  /// AllowMultipleAllocations marks whether the device is allowed to be allocated to multiple DeviceRequests.
  ///
  /// If AllowMultipleAllocations is set to true, the device can be allocated more than once, and all of its capacity is consumable, regardless of whether the requestPolicy is defined or not.
  final pulumi.Input<bool>? allowMultipleAllocations;
  /// Attributes defines the set of attributes for this device. The name of each attribute must be unique in that set.
  ///
  /// The maximum number of attributes and capacities combined is 32.
  final pulumi.Input<Map<String, DeviceAttribute>>? attributes;
  /// BindingConditions defines the conditions for proceeding with binding. All of these conditions must be set in the per-device status conditions with a value of True to proceed with binding the pod to the node while scheduling the pod.
  ///
  /// The maximum number of binding conditions is 4.
  ///
  /// The conditions must be a valid condition type string.
  ///
  /// This is an alpha field and requires enabling the DRADeviceBindingConditions and DRAResourceClaimDeviceStatus feature gates.
  final pulumi.Input<List<String>>? bindingConditions;
  /// BindingFailureConditions defines the conditions for binding failure. They may be set in the per-device status conditions. If any is set to "True", a binding failure occurred.
  ///
  /// The maximum number of binding failure conditions is 4.
  ///
  /// The conditions must be a valid condition type string.
  ///
  /// This is an alpha field and requires enabling the DRADeviceBindingConditions and DRAResourceClaimDeviceStatus feature gates.
  final pulumi.Input<List<String>>? bindingFailureConditions;
  /// BindsToNode indicates if the usage of an allocation involving this device has to be limited to exactly the node that was chosen when allocating the claim. If set to true, the scheduler will set the ResourceClaim.Status.Allocation.NodeSelector to match the node where the allocation was made.
  ///
  /// This is an alpha field and requires enabling the DRADeviceBindingConditions and DRAResourceClaimDeviceStatus feature gates.
  final pulumi.Input<bool>? bindsToNode;
  /// Capacity defines the set of capacities for this device. The name of each capacity must be unique in that set.
  ///
  /// The maximum number of attributes and capacities combined is 32.
  final pulumi.Input<Map<String, DeviceCapacity>>? capacity;
  /// ConsumesCounters defines a list of references to sharedCounters and the set of counters that the device will consume from those counter sets.
  ///
  /// There can only be a single entry per counterSet.
  ///
  /// The maximum number of device counter consumptions per device is 2.
  final pulumi.Input<List<DeviceCounterConsumptionPatch>>? consumesCounters;
  /// Name is unique identifier among all devices managed by the driver in the pool. It must be a DNS label.
  final pulumi.Input<String>? name;
  /// NodeName identifies the node where the device is available.
  ///
  /// Must only be set if Spec.PerDeviceNodeSelection is set to true. At most one of NodeName, NodeSelector and AllNodes can be set.
  final pulumi.Input<String>? nodeName;
  /// NodeSelector defines the nodes where the device is available.
  ///
  /// Must use exactly one term.
  ///
  /// Must only be set if Spec.PerDeviceNodeSelection is set to true. At most one of NodeName, NodeSelector and AllNodes can be set.
  final pulumi.Input<NodeSelectorPatch>? nodeSelector;
  /// If specified, these are the driver-defined taints.
  ///
  /// The maximum number of taints is 16. If taints are set for any device in a ResourceSlice, then the maximum number of allowed devices per ResourceSlice is 64 instead of 128.
  ///
  /// This is an alpha field and requires enabling the DRADeviceTaints feature gate.
  final pulumi.Input<List<DeviceTaintPatch>>? taints;

  /// Creates a new [DevicePatch].
  /// [allNodes] AllNodes indicates that all nodes have access to the device.
  /// [allowMultipleAllocations] AllowMultipleAllocations marks whether the device is allowed to be allocated to multiple DeviceRequests.
  /// [attributes] Attributes defines the set of attributes for this device. The name of each attribute must be unique in that set.
  /// [bindingConditions] BindingConditions defines the conditions for proceeding with binding. All of these conditions must be set in the per-device status conditions with a value of True to proceed with binding the pod to the node while scheduling the pod.
  /// [bindingFailureConditions] BindingFailureConditions defines the conditions for binding failure. They may be set in the per-device status conditions. If any is set to "True", a binding failure occurred.
  /// [bindsToNode] BindsToNode indicates if the usage of an allocation involving this device has to be limited to exactly the node that was chosen when allocating the claim. If set to true, the scheduler will set the ResourceClaim.Status.Allocation.NodeSelector to match the node where the allocation was made.
  /// [capacity] Capacity defines the set of capacities for this device. The name of each capacity must be unique in that set.
  /// [consumesCounters] ConsumesCounters defines a list of references to sharedCounters and the set of counters that the device will consume from those counter sets.
  /// [name] Name is unique identifier among all devices managed by the driver in the pool. It must be a DNS label.
  /// [nodeName] NodeName identifies the node where the device is available.
  /// [nodeSelector] NodeSelector defines the nodes where the device is available.
  /// [taints] If specified, these are the driver-defined taints.
  DevicePatch({
    this.allNodes,
    this.allowMultipleAllocations,
    this.attributes,
    this.bindingConditions,
    this.bindingFailureConditions,
    this.bindsToNode,
    this.capacity,
    this.consumesCounters,
    this.name,
    this.nodeName,
    this.nodeSelector,
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allNodes': ?allNodes,
      'allowMultipleAllocations': ?allowMultipleAllocations,
      'attributes': ?pulumi.Input.mapOptionalInputValue<Map<String, DeviceAttribute>, Map<String, Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeMapValues<DeviceAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bindingConditions': ?bindingConditions,
      'bindingFailureConditions': ?bindingFailureConditions,
      'bindsToNode': ?bindsToNode,
      'capacity': ?pulumi.Input.mapOptionalInputValue<Map<String, DeviceCapacity>, Map<String, Map<String, dynamic>>>(capacity, (value) => pulumi.Input.encodeMapValues<DeviceCapacity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consumesCounters': ?pulumi.Input.mapOptionalInputValue<List<DeviceCounterConsumptionPatch>, List<Map<String, dynamic>>>(consumesCounters, (value) => pulumi.Input.encodeList<DeviceCounterConsumptionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'nodeName': ?nodeName,
      'nodeSelector': ?pulumi.Input.mapOptionalInputValue<NodeSelectorPatch, Map<String, dynamic>>(nodeSelector, (value) => value.toMap()),
      'taints': ?pulumi.Input.mapOptionalInputValue<List<DeviceTaintPatch>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<DeviceTaintPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DevicePatch.fromMap(Map<String, dynamic> map) {
    return DevicePatch(
      allNodes: map['allNodes'] == null ? null : (map['allNodes'] as bool).input(),
      allowMultipleAllocations: map['allowMultipleAllocations'] == null ? null : (map['allowMultipleAllocations'] as bool).input(),
      attributes: map['attributes'] == null ? null : (pulumi.Input.decodeMapValues<DeviceAttribute>(map['attributes'], (value) => DeviceAttribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bindingConditions: map['bindingConditions'] == null ? null : ((map['bindingConditions'] as List).cast<String>()).input(),
      bindingFailureConditions: map['bindingFailureConditions'] == null ? null : ((map['bindingFailureConditions'] as List).cast<String>()).input(),
      bindsToNode: map['bindsToNode'] == null ? null : (map['bindsToNode'] as bool).input(),
      capacity: map['capacity'] == null ? null : (pulumi.Input.decodeMapValues<DeviceCapacity>(map['capacity'], (value) => DeviceCapacity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      consumesCounters: map['consumesCounters'] == null ? null : (pulumi.Input.decodeList<DeviceCounterConsumptionPatch>(map['consumesCounters'], (value) => DeviceCounterConsumptionPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nodeName: map['nodeName'] == null ? null : (map['nodeName'] as String).input(),
      nodeSelector: map['nodeSelector'] == null ? null : (NodeSelectorPatch.fromMap((map['nodeSelector'] as Map).cast<String, dynamic>())).input(),
      taints: map['taints'] == null ? null : (pulumi.Input.decodeList<DeviceTaintPatch>(map['taints'], (value) => DeviceTaintPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

