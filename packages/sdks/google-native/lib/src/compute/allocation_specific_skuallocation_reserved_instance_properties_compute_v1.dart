// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_compute_v1.dart';
import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk_compute_v1.dart';

/// Properties of the SKU instances being reserved. Next ID: 9
class AllocationSpecificSKUAllocationReservedInstancePropertiesComputeV1 {
  /// Specifies accelerator type and count.
  final pulumi.Input<List<AcceleratorConfigComputeV1>>? guestAccelerators;
  /// Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  final pulumi.Input<List<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeV1>>? localSsds;
  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String>? locationHint;
  /// Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  final pulumi.Input<String>? machineType;
  /// Minimum cpu platform the reservation.
  final pulumi.Input<String>? minCpuPlatform;

  /// Creates a new [AllocationSpecificSKUAllocationReservedInstancePropertiesComputeV1].
  /// [guestAccelerators] Specifies accelerator type and count.
  /// [localSsds] Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  /// [locationHint] An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  /// [machineType] Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  /// [minCpuPlatform] Minimum cpu platform the reservation.
  const AllocationSpecificSKUAllocationReservedInstancePropertiesComputeV1({
    this.guestAccelerators,
    this.localSsds,
    this.locationHint,
    this.machineType,
    this.minCpuPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<AcceleratorConfigComputeV1>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localSsds': ?pulumi.Input.mapOptionalInputValue<List<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeV1>, List<Map<String, dynamic>>>(localSsds, (value) => pulumi.Input.encodeList<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationHint': ?locationHint,
      'machineType': ?machineType,
      'minCpuPlatform': ?minCpuPlatform,
    };
  }

  factory AllocationSpecificSKUAllocationReservedInstancePropertiesComputeV1.fromMap(Map<String, dynamic> map) {
    return AllocationSpecificSKUAllocationReservedInstancePropertiesComputeV1(
      guestAccelerators: (() { final guardedValue = map['guestAccelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AcceleratorConfigComputeV1>(guardedValue, (value) => AcceleratorConfigComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localSsds: (() { final guardedValue = map['localSsds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeV1>(guardedValue, (value) => AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      locationHint: (() { final guardedValue = map['locationHint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
