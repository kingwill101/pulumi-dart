// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_specific_reservation_instance_properties_guest_accelerator.dart';
import 'reservation_specific_reservation_instance_properties_local_ssd.dart';

class ReservationSpecificReservationInstanceProperties {
  /// Guest accelerator type and count.
  /// Structure is documented below.
  final pulumi.Input<List<ReservationSpecificReservationInstancePropertiesGuestAccelerator>?>? guestAccelerators;
  /// The amount of local ssd to reserve with each instance. This
  /// reserves disks of type `local-ssd`.
  /// Structure is documented below.
  final pulumi.Input<List<ReservationSpecificReservationInstancePropertiesLocalSsd>?>? localSsds;
  /// (Output)
  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String?>? locationHint;
  /// The name of the machine type to reserve.
  final pulumi.Input<String> machineType;
  /// (Optional, Beta)
  /// Specifies the frequency of planned maintenance events.
  /// Possible values are: `AS_NEEDED`, `PERIODIC`, `RECURRENT`.
  final pulumi.Input<String?>? maintenanceInterval;
  /// The minimum CPU platform for the reservation. For example,
  /// `"Intel Skylake"`. See
  /// the CPU platform availability reference](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform#availablezones)
  /// for information on available CPU platforms.
  final pulumi.Input<String?>? minCpuPlatform;

  /// Creates a new [ReservationSpecificReservationInstanceProperties].
  /// [guestAccelerators] Guest accelerator type and count.
  /// [localSsds] The amount of local ssd to reserve with each instance. This
  /// [locationHint] (Output)
  /// [machineType] The name of the machine type to reserve.
  /// [maintenanceInterval] (Optional, Beta)
  /// [minCpuPlatform] The minimum CPU platform for the reservation. For example,
  const ReservationSpecificReservationInstanceProperties({
    this.guestAccelerators,
    this.localSsds,
    this.locationHint,
    required this.machineType,
    this.maintenanceInterval,
    this.minCpuPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestAccelerators': ?pulumi.Input.mapOptionalInputValue<List<ReservationSpecificReservationInstancePropertiesGuestAccelerator>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<ReservationSpecificReservationInstancePropertiesGuestAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localSsds': ?pulumi.Input.mapOptionalInputValue<List<ReservationSpecificReservationInstancePropertiesLocalSsd>, List<Map<String, dynamic>>>(localSsds, (value) => pulumi.Input.encodeList<ReservationSpecificReservationInstancePropertiesLocalSsd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationHint': ?locationHint,
      'machineType': machineType,
      'maintenanceInterval': ?maintenanceInterval,
      'minCpuPlatform': ?minCpuPlatform,
    };
  }

  factory ReservationSpecificReservationInstanceProperties.fromMap(Map<String, dynamic> map) {
    return ReservationSpecificReservationInstanceProperties(
      guestAccelerators: (() { final guardedValue = map['guestAccelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReservationSpecificReservationInstancePropertiesGuestAccelerator>(guardedValue, (value) => ReservationSpecificReservationInstancePropertiesGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localSsds: (() { final guardedValue = map['localSsds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReservationSpecificReservationInstancePropertiesLocalSsd>(guardedValue, (value) => ReservationSpecificReservationInstancePropertiesLocalSsd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      locationHint: (() { final guardedValue = map['locationHint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      maintenanceInterval: (() { final guardedValue = map['maintenanceInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
