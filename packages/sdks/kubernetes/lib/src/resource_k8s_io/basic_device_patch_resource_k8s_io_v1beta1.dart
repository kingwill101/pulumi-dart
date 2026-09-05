// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector_patch.dart';
import 'device_attribute_resource_k8s_io_v1beta1.dart';
import 'device_capacity_resource_k8s_io_v1beta1.dart';
import 'device_counter_consumption_patch_resource_k8s_io_v1beta1.dart';
import 'device_taint_patch_resource_k8s_io_v1beta1.dart';
import 'node_allocatable_resource_mapping_resource_k8s_io_v1beta1.dart';
import 'node_allocatable_resource_resource_k8s_io_v1beta1.dart';

/// BasicDevice defines one device instance.
class BasicDevicePatchResourceK8sIoV1beta1 {
  /// AllNodes indicates that all nodes have access to the device.
  ///
  /// Must only be set if Spec.PerDeviceNodeSelection is set to true. At most one of NodeName, NodeSelector and AllNodes can be set.
  final pulumi.Input<bool?>? allNodes;
  /// AllowMultipleAllocations marks whether the device is allowed to be allocated to multiple DeviceRequests.
  ///
  /// If AllowMultipleAllocations is set to true, the device can be allocated more than once, and all of its capacity is consumable, regardless of whether the requestPolicy is defined or not.
  final pulumi.Input<bool?>? allowMultipleAllocations;
  /// Attributes defines the set of attributes for this device. The name of each attribute must be unique in that set.
  ///
  /// The maximum number of attributes and capacities combined is 32.
  final pulumi.Input<Map<String, DeviceAttributeResourceK8sIoV1beta1>?>? attributes;
  /// BindingConditions defines the conditions for proceeding with binding. All of these conditions must be set in the per-device status conditions with a value of True to proceed with binding the pod to the node while scheduling the pod.
  ///
  /// The maximum number of binding conditions is 4.
  ///
  /// The conditions must be a valid condition type string.
  ///
  /// This is a beta field and requires enabling the DRADeviceBindingConditions and DRAResourceClaimDeviceStatus feature gates.
  final pulumi.Input<List<String>?>? bindingConditions;
  /// BindingFailureConditions defines the conditions for binding failure. They may be set in the per-device status conditions. If any is true, a binding failure occurred.
  ///
  /// The maximum number of binding failure conditions is 4.
  ///
  /// The conditions must be a valid condition type string.
  ///
  /// This is a beta field and requires enabling the DRADeviceBindingConditions and DRAResourceClaimDeviceStatus feature gates.
  final pulumi.Input<List<String>?>? bindingFailureConditions;
  /// BindsToNode indicates if the usage of an allocation involving this device has to be limited to exactly the node that was chosen when allocating the claim. If set to true, the scheduler will set the ResourceClaim.Status.Allocation.NodeSelector to match the node where the allocation was made.
  ///
  /// This is a beta field and requires enabling the DRADeviceBindingConditions and DRAResourceClaimDeviceStatus feature gates.
  final pulumi.Input<bool?>? bindsToNode;
  /// Capacity defines the set of capacities for this device. The name of each capacity must be unique in that set.
  ///
  /// The maximum number of attributes and capacities combined is 32.
  final pulumi.Input<Map<String, DeviceCapacityResourceK8sIoV1beta1>?>? capacity;
  /// ConsumesCounters defines a list of references to sharedCounters and the set of counters that the device will consume from those counter sets.
  ///
  /// There can only be a single entry per counterSet.
  ///
  /// The maximum number of device counter consumptions per device is 2.
  final pulumi.Input<List<DeviceCounterConsumptionPatchResourceK8sIoV1beta1>?>? consumesCounters;
  /// NodeAllocatableResourceMappings defines the mapping of node resources that are managed by the DRA driver exposing this device. This includes resources currently reported in v1.Node `status.allocatable` that are not extended resources (see https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#extended-resources). Examples include "cpu", "memory", "ephemeral-storage", and hugepages. In addition to standard requests made through the Pod `spec`, these resources can also be requested through claims and allocated by the DRA driver. For example, a CPU DRA driver might allocate exclusive CPUs or auxiliary node memory dependencies of an accelerator device. The keys of this map are the node-allocatable resource names (e.g., "cpu", "memory"). Extended resource names are not permitted as keys.
  final pulumi.Input<Map<String, NodeAllocatableResourceMappingResourceK8sIoV1beta1>?>? nodeAllocatableResourceMappings;
  /// NodeAllocatableResources defines the mapping of node resources that are managed by the DRA driver exposing this device. This includes resources currently reported in v1.Node `status.allocatable` that are not extended resources (see https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#extended-resources). Examples include "cpu", "memory", "ephemeral-storage", and hugepages. In addition to standard requests made through the Pod `spec`, these resources can also be requested through claims and allocated by the DRA driver. For example, a CPU DRA driver might allocate exclusive CPUs or auxiliary node memory dependencies of an accelerator device. The keys of this map are the node-allocatable resource names (e.g., "cpu", "memory"). Extended resource names are not permitted as keys.
  final pulumi.Input<Map<String, NodeAllocatableResourceResourceK8sIoV1beta1>?>? nodeAllocatableResources;
  /// NodeName identifies the node where the device is available.
  ///
  /// Must only be set if Spec.PerDeviceNodeSelection is set to true. At most one of NodeName, NodeSelector and AllNodes can be set.
  final pulumi.Input<String?>? nodeName;
  /// NodeSelector defines the nodes where the device is available.
  ///
  /// Must use exactly one term.
  ///
  /// Must only be set if Spec.PerDeviceNodeSelection is set to true. At most one of NodeName, NodeSelector and AllNodes can be set.
  final pulumi.Input<NodeSelectorPatch?>? nodeSelector;
  /// If specified, these are the driver-defined taints.
  ///
  /// The maximum number of taints is 16. If taints are set for any device in a ResourceSlice, then the maximum number of allowed devices per ResourceSlice is 64 instead of 128.
  ///
  /// This is a beta field and requires enabling the DRADeviceTaints feature gate.
  final pulumi.Input<List<DeviceTaintPatchResourceK8sIoV1beta1>?>? taints;

  /// Creates a new [BasicDevicePatchResourceK8sIoV1beta1].
  /// [allNodes] AllNodes indicates that all nodes have access to the device.
  /// [allowMultipleAllocations] AllowMultipleAllocations marks whether the device is allowed to be allocated to multiple DeviceRequests.
  /// [attributes] Attributes defines the set of attributes for this device. The name of each attribute must be unique in that set.
  /// [bindingConditions] BindingConditions defines the conditions for proceeding with binding. All of these conditions must be set in the per-device status conditions with a value of True to proceed with binding the pod to the node while scheduling the pod.
  /// [bindingFailureConditions] BindingFailureConditions defines the conditions for binding failure. They may be set in the per-device status conditions. If any is true, a binding failure occurred.
  /// [bindsToNode] BindsToNode indicates if the usage of an allocation involving this device has to be limited to exactly the node that was chosen when allocating the claim. If set to true, the scheduler will set the ResourceClaim.Status.Allocation.NodeSelector to match the node where the allocation was made.
  /// [capacity] Capacity defines the set of capacities for this device. The name of each capacity must be unique in that set.
  /// [consumesCounters] ConsumesCounters defines a list of references to sharedCounters and the set of counters that the device will consume from those counter sets.
  /// [nodeAllocatableResourceMappings] NodeAllocatableResourceMappings defines the mapping of node resources that are managed by the DRA driver exposing this device. This includes resources currently reported in v1.Node `status.allocatable` that are not extended resources (see https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#extended-resources). Examples include "cpu", "memory", "ephemeral-storage", and hugepages. In addition to standard requests made through the Pod `spec`, these resources can also be requested through claims and allocated by the DRA driver. For example, a CPU DRA driver might allocate exclusive CPUs or auxiliary node memory dependencies of an accelerator device. The keys of this map are the node-allocatable resource names (e.g., "cpu", "memory"). Extended resource names are not permitted as keys.
  /// [nodeAllocatableResources] NodeAllocatableResources defines the mapping of node resources that are managed by the DRA driver exposing this device. This includes resources currently reported in v1.Node `status.allocatable` that are not extended resources (see https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#extended-resources). Examples include "cpu", "memory", "ephemeral-storage", and hugepages. In addition to standard requests made through the Pod `spec`, these resources can also be requested through claims and allocated by the DRA driver. For example, a CPU DRA driver might allocate exclusive CPUs or auxiliary node memory dependencies of an accelerator device. The keys of this map are the node-allocatable resource names (e.g., "cpu", "memory"). Extended resource names are not permitted as keys.
  /// [nodeName] NodeName identifies the node where the device is available.
  /// [nodeSelector] NodeSelector defines the nodes where the device is available.
  /// [taints] If specified, these are the driver-defined taints.
  const BasicDevicePatchResourceK8sIoV1beta1({
    this.allNodes,
    this.allowMultipleAllocations,
    this.attributes,
    this.bindingConditions,
    this.bindingFailureConditions,
    this.bindsToNode,
    this.capacity,
    this.consumesCounters,
    this.nodeAllocatableResourceMappings,
    this.nodeAllocatableResources,
    this.nodeName,
    this.nodeSelector,
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allNodes': ?allNodes,
      'allowMultipleAllocations': ?allowMultipleAllocations,
      'attributes': ?pulumi.Input.mapOptionalInputValue<Map<String, DeviceAttributeResourceK8sIoV1beta1>, Map<String, Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeMapValues<DeviceAttributeResourceK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bindingConditions': ?bindingConditions,
      'bindingFailureConditions': ?bindingFailureConditions,
      'bindsToNode': ?bindsToNode,
      'capacity': ?pulumi.Input.mapOptionalInputValue<Map<String, DeviceCapacityResourceK8sIoV1beta1>, Map<String, Map<String, dynamic>>>(capacity, (value) => pulumi.Input.encodeMapValues<DeviceCapacityResourceK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consumesCounters': ?pulumi.Input.mapOptionalInputValue<List<DeviceCounterConsumptionPatchResourceK8sIoV1beta1>, List<Map<String, dynamic>>>(consumesCounters, (value) => pulumi.Input.encodeList<DeviceCounterConsumptionPatchResourceK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeAllocatableResourceMappings': ?pulumi.Input.mapOptionalInputValue<Map<String, NodeAllocatableResourceMappingResourceK8sIoV1beta1>, Map<String, Map<String, dynamic>>>(nodeAllocatableResourceMappings, (value) => pulumi.Input.encodeMapValues<NodeAllocatableResourceMappingResourceK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeAllocatableResources': ?pulumi.Input.mapOptionalInputValue<Map<String, NodeAllocatableResourceResourceK8sIoV1beta1>, Map<String, Map<String, dynamic>>>(nodeAllocatableResources, (value) => pulumi.Input.encodeMapValues<NodeAllocatableResourceResourceK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeName': ?nodeName,
      'nodeSelector': ?pulumi.Input.mapOptionalInputValue<NodeSelectorPatch, Map<String, dynamic>>(nodeSelector, (value) => value.toMap()),
      'taints': ?pulumi.Input.mapOptionalInputValue<List<DeviceTaintPatchResourceK8sIoV1beta1>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<DeviceTaintPatchResourceK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BasicDevicePatchResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return BasicDevicePatchResourceK8sIoV1beta1(
      allNodes: (() { final guardedValue = map['allNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowMultipleAllocations: (() { final guardedValue = map['allowMultipleAllocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeviceAttributeResourceK8sIoV1beta1>(guardedValue, (value) => DeviceAttributeResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bindingConditions: (() { final guardedValue = map['bindingConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      bindingFailureConditions: (() { final guardedValue = map['bindingFailureConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      bindsToNode: (() { final guardedValue = map['bindsToNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeviceCapacityResourceK8sIoV1beta1>(guardedValue, (value) => DeviceCapacityResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      consumesCounters: (() { final guardedValue = map['consumesCounters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceCounterConsumptionPatchResourceK8sIoV1beta1>(guardedValue, (value) => DeviceCounterConsumptionPatchResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeAllocatableResourceMappings: (() { final guardedValue = map['nodeAllocatableResourceMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<NodeAllocatableResourceMappingResourceK8sIoV1beta1>(guardedValue, (value) => NodeAllocatableResourceMappingResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeAllocatableResources: (() { final guardedValue = map['nodeAllocatableResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<NodeAllocatableResourceResourceK8sIoV1beta1>(guardedValue, (value) => NodeAllocatableResourceResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeSelector: (() { final guardedValue = map['nodeSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeSelectorPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceTaintPatchResourceK8sIoV1beta1>(guardedValue, (value) => DeviceTaintPatchResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
