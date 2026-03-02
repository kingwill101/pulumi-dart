// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response_compute_beta.dart';
import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk_response_compute_beta.dart';

/// Properties of the SKU instances being reserved. Next ID: 9
class AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeBeta {
  /// Specifies accelerator type and count.
  final pulumi.Input<List<AcceleratorConfigResponseComputeBeta>> guestAccelerators;
  /// Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  final pulumi.Input<List<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta>> localSsds;
  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String> locationHint;
  /// Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  final pulumi.Input<String> machineType;
  /// Specifies the number of hours after reservation creation where instances using the reservation won't be scheduled for maintenance.
  final pulumi.Input<int> maintenanceFreezeDurationHours;
  /// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final pulumi.Input<String> maintenanceInterval;
  /// Minimum cpu platform the reservation.
  final pulumi.Input<String> minCpuPlatform;

  /// Creates a new [AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeBeta].
  /// [guestAccelerators] Specifies accelerator type and count.
  /// [localSsds] Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  /// [locationHint] An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  /// [machineType] Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  /// [maintenanceFreezeDurationHours] Specifies the number of hours after reservation creation where instances using the reservation won't be scheduled for maintenance.
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  /// [minCpuPlatform] Minimum cpu platform the reservation.
  AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeBeta({
    required this.guestAccelerators,
    required this.localSsds,
    required this.locationHint,
    required this.machineType,
    required this.maintenanceFreezeDurationHours,
    required this.maintenanceInterval,
    required this.minCpuPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestAccelerators': pulumi.Input.mapInputValue<List<AcceleratorConfigResponseComputeBeta>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localSsds': pulumi.Input.mapInputValue<List<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta>, List<Map<String, dynamic>>>(localSsds, (value) => pulumi.Input.encodeList<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationHint': locationHint,
      'machineType': machineType,
      'maintenanceFreezeDurationHours': maintenanceFreezeDurationHours,
      'maintenanceInterval': maintenanceInterval,
      'minCpuPlatform': minCpuPlatform,
    };
  }

  factory AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeBeta(
      guestAccelerators: (pulumi.Input.decodeList<AcceleratorConfigResponseComputeBeta>(map['guestAccelerators'], (value) => AcceleratorConfigResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      localSsds: (pulumi.Input.decodeList<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta>(map['localSsds'], (value) => AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      locationHint: (map['locationHint'] as String).input(),
      machineType: (map['machineType'] as String).input(),
      maintenanceFreezeDurationHours: (map['maintenanceFreezeDurationHours'] as int).input(),
      maintenanceInterval: (map['maintenanceInterval'] as String).input(),
      minCpuPlatform: (map['minCpuPlatform'] as String).input(),
    );
  }
}

