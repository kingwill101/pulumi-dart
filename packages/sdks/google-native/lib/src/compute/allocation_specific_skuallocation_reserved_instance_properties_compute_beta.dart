// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_compute_beta.dart';
import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk_compute_beta.dart';
import 'allocation_specific_skuallocation_reserved_instance_properties_maintenance_interval_compute_beta.dart';

/// Properties of the SKU instances being reserved. Next ID: 9
class AllocationSpecificSKUAllocationReservedInstancePropertiesComputeBeta {
  /// Specifies accelerator type and count.
  final pulumi.Input<List<AcceleratorConfigComputeBeta>>? guestAccelerators;

  /// Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  final pulumi.Input<
    List<
      AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta
    >
  >?
  localSsds;

  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String>? locationHint;

  /// Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  final pulumi.Input<String>? machineType;

  /// Specifies the number of hours after reservation creation where instances using the reservation won't be scheduled for maintenance.
  final pulumi.Input<int>? maintenanceFreezeDurationHours;

  /// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final pulumi.Input<
    AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceIntervalComputeBeta
  >?
  maintenanceInterval;

  /// Minimum cpu platform the reservation.
  final pulumi.Input<String>? minCpuPlatform;

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
      'guestAccelerators':
          ?pulumi.Input.mapOptionalInputValue<
            List<AcceleratorConfigComputeBeta>,
            List<Map<String, dynamic>>
          >(
            guestAccelerators,
            (value) =>
                pulumi.Input.encodeList<
                  AcceleratorConfigComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'localSsds':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta
            >,
            List<Map<String, dynamic>>
          >(
            localSsds,
            (value) =>
                pulumi.Input.encodeList<
                  AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'locationHint': ?locationHint,
      'machineType': ?machineType,
      'maintenanceFreezeDurationHours': ?maintenanceFreezeDurationHours,
      'maintenanceInterval':
          ?pulumi.Input.mapOptionalInputValue<
            AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceIntervalComputeBeta,
            String
          >(maintenanceInterval, (value) => value.wireValue),
      'minCpuPlatform': ?minCpuPlatform,
    };
  }

  factory AllocationSpecificSKUAllocationReservedInstancePropertiesComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AllocationSpecificSKUAllocationReservedInstancePropertiesComputeBeta(
      guestAccelerators: (() {
        final guardedValue = map['guestAccelerators'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AcceleratorConfigComputeBeta>(
            guardedValue,
            (value) => AcceleratorConfigComputeBeta.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      localSsds: (() {
        final guardedValue = map['localSsds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta
          >(
            guardedValue,
            (value) =>
                AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      locationHint: (() {
        final guardedValue = map['locationHint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      machineType: (() {
        final guardedValue = map['machineType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintenanceFreezeDurationHours: (() {
        final guardedValue = map['maintenanceFreezeDurationHours'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maintenanceInterval: (() {
        final guardedValue = map['maintenanceInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceIntervalComputeBeta.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      minCpuPlatform: (() {
        final guardedValue = map['minCpuPlatform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
