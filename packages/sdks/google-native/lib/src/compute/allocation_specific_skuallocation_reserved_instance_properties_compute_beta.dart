// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_compute_beta.dart';
import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk_compute_beta.dart';
import 'allocation_specific_skuallocation_reserved_instance_properties_maintenance_interval_compute_beta.dart';

/// Properties of the SKU instances being reserved. Next ID: 9
class AllocationSpecificSKUAllocationReservedInstancePropertiesComputeBeta {
  /// Specifies accelerator type and count.
  final List<AcceleratorConfigComputeBeta>? guestAccelerators;
  /// Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  final List<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta>? localSsds;
  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final String? locationHint;
  /// Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  final String? machineType;
  /// Specifies the number of hours after reservation creation where instances using the reservation won't be scheduled for maintenance.
  final int? maintenanceFreezeDurationHours;
  /// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceIntervalComputeBeta? maintenanceInterval;
  /// Minimum cpu platform the reservation.
  final String? minCpuPlatform;

  /// Creates a new [AllocationSpecificSKUAllocationReservedInstancePropertiesComputeBeta].
  /// [guestAccelerators] Specifies accelerator type and count.
  /// [localSsds] Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  /// [locationHint] An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  /// [machineType] Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  /// [maintenanceFreezeDurationHours] Specifies the number of hours after reservation creation where instances using the reservation won't be scheduled for maintenance.
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  /// [minCpuPlatform] Minimum cpu platform the reservation.
  AllocationSpecificSKUAllocationReservedInstancePropertiesComputeBeta({
    this.guestAccelerators,
    this.localSsds,
    this.locationHint,
    this.machineType,
    this.maintenanceFreezeDurationHours,
    this.maintenanceInterval,
    this.minCpuPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestAccelerators': ?guestAccelerators == null ? null : pulumi.Input.encodeList<AcceleratorConfigComputeBeta, Map<String, dynamic>>(guestAccelerators!, (value) => value.toMap()),
      'localSsds': ?localSsds == null ? null : pulumi.Input.encodeList<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta, Map<String, dynamic>>(localSsds!, (value) => value.toMap()),
      'locationHint': ?locationHint,
      'machineType': ?machineType,
      'maintenanceFreezeDurationHours': ?maintenanceFreezeDurationHours,
      'maintenanceInterval': ?maintenanceInterval == null ? null : maintenanceInterval!.value,
      'minCpuPlatform': ?minCpuPlatform,
    };
  }

  factory AllocationSpecificSKUAllocationReservedInstancePropertiesComputeBeta.fromMap(Map<String, dynamic> map) {
    return AllocationSpecificSKUAllocationReservedInstancePropertiesComputeBeta(
      guestAccelerators: map['guestAccelerators'] == null ? null : pulumi.Input.decodeList<AcceleratorConfigComputeBeta>(map['guestAccelerators'], (value) => AcceleratorConfigComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      localSsds: map['localSsds'] == null ? null : pulumi.Input.decodeList<AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta>(map['localSsds'], (value) => AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      locationHint: map['locationHint'] == null ? null : map['locationHint'] as String,
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
      maintenanceFreezeDurationHours: map['maintenanceFreezeDurationHours'] == null ? null : map['maintenanceFreezeDurationHours'] as int,
      maintenanceInterval: map['maintenanceInterval'] == null ? null : AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceIntervalComputeBeta.fromValue(map['maintenanceInterval'] as String),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : map['minCpuPlatform'] as String,
    );
  }
}

