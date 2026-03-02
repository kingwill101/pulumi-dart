// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_specific_reservation_instance_properties_guest_accelerator.dart';
import 'reservation_specific_reservation_instance_properties_local_ssd.dart';

class ReservationSpecificReservationInstanceProperties {
  /// Guest accelerator type and count.
  /// Structure is documented below.
  final pulumi.Input<List<ReservationSpecificReservationInstancePropertiesGuestAccelerator>>? guestAccelerators;
  /// The amount of local ssd to reserve with each instance. This
  /// reserves disks of type `local-ssd`.
  /// Structure is documented below.
  final pulumi.Input<List<ReservationSpecificReservationInstancePropertiesLocalSsd>>? localSsds;
  /// (Output)
  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String>? locationHint;
  /// The name of the machine type to reserve.
  final pulumi.Input<String> machineType;
  /// Specifies the frequency of planned maintenance events.
  /// Possible values are: `AS_NEEDED`, `PERIODIC`, `RECURRENT`.
  final pulumi.Input<String>? maintenanceInterval;
  /// The minimum CPU platform for the reservation. For example,
  /// `"Intel Skylake"`. See
  /// the CPU platform availability reference](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform#availablezones)
  /// for information on available CPU platforms.
  final pulumi.Input<String>? minCpuPlatform;

  /// Creates a new [ReservationSpecificReservationInstanceProperties].
  /// [guestAccelerators] Guest accelerator type and count.
  /// [localSsds] The amount of local ssd to reserve with each instance. This
  /// [locationHint] (Output)
  /// [machineType] The name of the machine type to reserve.
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events.
  /// [minCpuPlatform] The minimum CPU platform for the reservation. For example,
  ReservationSpecificReservationInstanceProperties({
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
      guestAccelerators: map['guestAccelerators'] == null ? null : (pulumi.Input.decodeList<ReservationSpecificReservationInstancePropertiesGuestAccelerator>(map['guestAccelerators']!, (value) => ReservationSpecificReservationInstancePropertiesGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      localSsds: map['localSsds'] == null ? null : (pulumi.Input.decodeList<ReservationSpecificReservationInstancePropertiesLocalSsd>(map['localSsds']!, (value) => ReservationSpecificReservationInstancePropertiesLocalSsd.fromMap((value as Map).cast<String, dynamic>()))).input(),
      locationHint: map['locationHint'] == null ? null : (map['locationHint']! as String).input(),
      machineType: (map['machineType'] as String).input(),
      maintenanceInterval: map['maintenanceInterval'] == null ? null : (map['maintenanceInterval']! as String).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform']! as String).input(),
    );
  }
}

