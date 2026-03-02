// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector.dart';
import 'device_allocation_result_resource_k8s_io_v1beta2.dart';

/// AllocationResult contains attributes of an allocated resource.
class AllocationResultResourceK8sIoV1beta2 {
  /// AllocationTimestamp stores the time when the resources were allocated. This field is not guaranteed to be set, in which case that time is unknown.
  ///
  /// This is an alpha field and requires enabling the DRADeviceBindingConditions and DRAResourceClaimDeviceStatus feature gate.
  final pulumi.Input<String>? allocationTimestamp;
  /// Devices is the result of allocating devices.
  final pulumi.Input<DeviceAllocationResultResourceK8sIoV1beta2>? devices;
  /// NodeSelector defines where the allocated resources are available. If unset, they are available everywhere.
  final pulumi.Input<NodeSelector>? nodeSelector;

  /// Creates a new [AllocationResultResourceK8sIoV1beta2].
  /// [allocationTimestamp] AllocationTimestamp stores the time when the resources were allocated. This field is not guaranteed to be set, in which case that time is unknown.
  /// [devices] Devices is the result of allocating devices.
  /// [nodeSelector] NodeSelector defines where the allocated resources are available. If unset, they are available everywhere.
  AllocationResultResourceK8sIoV1beta2({
    this.allocationTimestamp,
    this.devices,
    this.nodeSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationTimestamp': ?allocationTimestamp,
      'devices': ?pulumi.Input.mapOptionalInputValue<DeviceAllocationResultResourceK8sIoV1beta2, Map<String, dynamic>>(devices, (value) => value.toMap()),
      'nodeSelector': ?pulumi.Input.mapOptionalInputValue<NodeSelector, Map<String, dynamic>>(nodeSelector, (value) => value.toMap()),
    };
  }

  factory AllocationResultResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return AllocationResultResourceK8sIoV1beta2(
      allocationTimestamp: map['allocationTimestamp'] == null ? null : (map['allocationTimestamp'] as String).input(),
      devices: map['devices'] == null ? null : (DeviceAllocationResultResourceK8sIoV1beta2.fromMap((map['devices'] as Map).cast<String, dynamic>())).input(),
      nodeSelector: map['nodeSelector'] == null ? null : (NodeSelector.fromMap((map['nodeSelector'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

