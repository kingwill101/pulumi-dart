// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response_compute_v1.dart';
import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk_response_compute_v1.dart';

/// Properties of the SKU instances being reserved. Next ID: 9
class AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeV1 {
  /// Specifies accelerator type and count.
  final pulumi.Input<List<AcceleratorConfigResponseComputeV1>> guestAccelerators;
  /// Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  final pulumi.Input<List<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeV1>> localSsds;
  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String> locationHint;
  /// Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  final pulumi.Input<String> machineType;
  /// Minimum cpu platform the reservation.
  final pulumi.Input<String> minCpuPlatform;

  /// Creates a new [AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeV1].
  /// [guestAccelerators] Specifies accelerator type and count.
  /// [localSsds] Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  /// [locationHint] An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  /// [machineType] Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  /// [minCpuPlatform] Minimum cpu platform the reservation.
  AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeV1({
    required this.guestAccelerators,
    required this.localSsds,
    required this.locationHint,
    required this.machineType,
    required this.minCpuPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestAccelerators': pulumi.Input.mapInputValue<List<AcceleratorConfigResponseComputeV1>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localSsds': pulumi.Input.mapInputValue<List<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeV1>, List<Map<String, dynamic>>>(localSsds, (value) => pulumi.Input.encodeList<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationHint': locationHint,
      'machineType': machineType,
      'minCpuPlatform': minCpuPlatform,
    };
  }

  factory AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeV1(
      guestAccelerators: (pulumi.Input.decodeList<AcceleratorConfigResponseComputeV1>(map['guestAccelerators'], (value) => AcceleratorConfigResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      localSsds: (pulumi.Input.decodeList<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeV1>(map['localSsds'], (value) => AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      locationHint: (map['locationHint'] as String).input(),
      machineType: (map['machineType'] as String).input(),
      minCpuPlatform: (map['minCpuPlatform'] as String).input(),
    );
  }
}

