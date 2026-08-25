// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_specific_sku_properties_instance_properties_guest_accelerator.dart';
import 'future_reservation_specific_sku_properties_instance_properties_local_ssd.dart';

class FutureReservationSpecificSkuPropertiesInstanceProperties {
  /// Specifies accelerator type and count.
  /// Structure is documented below.
  final pulumi.Input<List<FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator>?>? guestAccelerators;
  /// Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  /// Structure is documented below.
  final pulumi.Input<List<FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd>?>? localSsds;
  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String?>? locationHint;
  /// Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  final pulumi.Input<String?>? machineType;
  /// Specifies the number of hours after reservation creation where instances using the reservation won't be scheduled for maintenance.
  final pulumi.Input<int?>? maintenanceFreezeDurationHours;
  /// Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  /// Possible values are: `PERIODIC`.
  final pulumi.Input<String?>? maintenanceInterval;
  /// Minimum cpu platform the reservation.
  final pulumi.Input<String?>? minCpuPlatform;

  /// Creates a new [FutureReservationSpecificSkuPropertiesInstanceProperties].
  /// [guestAccelerators] Specifies accelerator type and count.
  /// [localSsds] Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  /// [locationHint] An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  /// [machineType] Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  /// [maintenanceFreezeDurationHours] Specifies the number of hours after reservation creation where instances using the reservation won't be scheduled for maintenance.
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  /// [minCpuPlatform] Minimum cpu platform the reservation.
  const FutureReservationSpecificSkuPropertiesInstanceProperties({
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
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localSsds': ?pulumi.Input.mapOptionalInputValue<List<FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd>, List<Map<String, dynamic>>>(localSsds, (value) => pulumi.Input.encodeList<FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationHint': ?locationHint,
      'machineType': ?machineType,
      'maintenanceFreezeDurationHours': ?maintenanceFreezeDurationHours,
      'maintenanceInterval': ?maintenanceInterval,
      'minCpuPlatform': ?minCpuPlatform,
    };
  }

  factory FutureReservationSpecificSkuPropertiesInstanceProperties.fromMap(Map<String, dynamic> map) {
    return FutureReservationSpecificSkuPropertiesInstanceProperties(
      guestAccelerators: (() { final guardedValue = map['guestAccelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator>(guardedValue, (value) => FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localSsds: (() { final guardedValue = map['localSsds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd>(guardedValue, (value) => FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      locationHint: (() { final guardedValue = map['locationHint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceFreezeDurationHours: (() { final guardedValue = map['maintenanceFreezeDurationHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maintenanceInterval: (() { final guardedValue = map['maintenanceInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
