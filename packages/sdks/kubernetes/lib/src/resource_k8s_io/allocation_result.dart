// ignore_for_file: unused_element, unnecessary_cast

import '../core/node_selector.dart';
import 'device_allocation_result.dart';

/// AllocationResult contains attributes of an allocated resource.
class AllocationResult {
  /// AllocationTimestamp stores the time when the resources were allocated. This field is not guaranteed to be set, in which case that time is unknown.
  ///
  /// This is an alpha field and requires enabling the DRADeviceBindingConditions and DRAResourceClaimDeviceStatus feature gate.
  final String? allocationTimestamp;
  /// Devices is the result of allocating devices.
  final DeviceAllocationResult? devices;
  /// NodeSelector defines where the allocated resources are available. If unset, they are available everywhere.
  final NodeSelector? nodeSelector;

  /// Creates a new [AllocationResult].
  /// [allocationTimestamp] AllocationTimestamp stores the time when the resources were allocated. This field is not guaranteed to be set, in which case that time is unknown.
  /// [devices] Devices is the result of allocating devices.
  /// [nodeSelector] NodeSelector defines where the allocated resources are available. If unset, they are available everywhere.
  AllocationResult({
    this.allocationTimestamp,
    this.devices,
    this.nodeSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationTimestamp': ?allocationTimestamp,
      'devices': ?devices == null ? null : devices!.toMap(),
      'nodeSelector': ?nodeSelector == null ? null : nodeSelector!.toMap(),
    };
  }

  factory AllocationResult.fromMap(Map<String, dynamic> map) {
    return AllocationResult(
      allocationTimestamp: map['allocationTimestamp'] == null ? null : map['allocationTimestamp'] as String,
      devices: map['devices'] == null ? null : DeviceAllocationResult.fromMap((map['devices'] as Map).cast<String, dynamic>()),
      nodeSelector: map['nodeSelector'] == null ? null : NodeSelector.fromMap((map['nodeSelector'] as Map).cast<String, dynamic>()),
    );
  }
}

