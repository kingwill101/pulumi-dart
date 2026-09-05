// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector.dart';
import 'device_allocation_result_resource_k8s_io_v1beta1.dart';

/// AllocationResult contains attributes of an allocated resource.
class AllocationResultResourceK8sIoV1beta1 {
  /// AllocationTimestamp stores the time when the resources were allocated. This field is not guaranteed to be set, in which case that time is unknown.
  ///
  /// This is a beta field and requires enabling the DRADeviceBindingConditions and DRAResourceClaimDeviceStatus feature gate.
  final pulumi.Input<String?>? allocationTimestamp;
  /// Devices is the result of allocating devices.
  final pulumi.Input<DeviceAllocationResultResourceK8sIoV1beta1?>? devices;
  /// NodeSelector defines where the allocated resources are available. If unset, they are available everywhere.
  final pulumi.Input<NodeSelector?>? nodeSelector;

  /// Creates a new [AllocationResultResourceK8sIoV1beta1].
  /// [allocationTimestamp] AllocationTimestamp stores the time when the resources were allocated. This field is not guaranteed to be set, in which case that time is unknown.
  /// [devices] Devices is the result of allocating devices.
  /// [nodeSelector] NodeSelector defines where the allocated resources are available. If unset, they are available everywhere.
  const AllocationResultResourceK8sIoV1beta1({
    this.allocationTimestamp,
    this.devices,
    this.nodeSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationTimestamp': ?allocationTimestamp,
      'devices': ?pulumi.Input.mapOptionalInputValue<DeviceAllocationResultResourceK8sIoV1beta1, Map<String, dynamic>>(devices, (value) => value.toMap()),
      'nodeSelector': ?pulumi.Input.mapOptionalInputValue<NodeSelector, Map<String, dynamic>>(nodeSelector, (value) => value.toMap()),
    };
  }

  factory AllocationResultResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return AllocationResultResourceK8sIoV1beta1(
      allocationTimestamp: (() { final guardedValue = map['allocationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceAllocationResultResourceK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeSelector: (() { final guardedValue = map['nodeSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
