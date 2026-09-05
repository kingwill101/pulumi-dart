// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector.dart';
import 'device_allocation_result.dart';

/// AllocationResult contains attributes of an allocated resource.
class AllocationResult {
  /// AllocationTimestamp stores the time when the resources were allocated. This field is not guaranteed to be set, in which case that time is unknown.
  ///
  /// This is a beta field and requires enabling the DRADeviceBindingConditions and DRAResourceClaimDeviceStatus feature gate.
  final pulumi.Input<String?>? allocationTimestamp;
  /// Devices is the result of allocating devices.
  final pulumi.Input<DeviceAllocationResult?>? devices;
  /// NodeSelector defines where the allocated resources are available. If unset, they are available everywhere.
  final pulumi.Input<NodeSelector?>? nodeSelector;

  /// Creates a new [AllocationResult].
  /// [allocationTimestamp] AllocationTimestamp stores the time when the resources were allocated. This field is not guaranteed to be set, in which case that time is unknown.
  /// [devices] Devices is the result of allocating devices.
  /// [nodeSelector] NodeSelector defines where the allocated resources are available. If unset, they are available everywhere.
  const AllocationResult({
    this.allocationTimestamp,
    this.devices,
    this.nodeSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationTimestamp': ?allocationTimestamp,
      'devices': ?pulumi.Input.mapOptionalInputValue<DeviceAllocationResult, Map<String, dynamic>>(devices, (value) => value.toMap()),
      'nodeSelector': ?pulumi.Input.mapOptionalInputValue<NodeSelector, Map<String, dynamic>>(nodeSelector, (value) => value.toMap()),
    };
  }

  factory AllocationResult.fromMap(Map<String, dynamic> map) {
    return AllocationResult(
      allocationTimestamp: (() { final guardedValue = map['allocationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceAllocationResult.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeSelector: (() { final guardedValue = map['nodeSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
