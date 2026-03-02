// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_specific_reservation_instance_property_guest_accelerator.dart';
import 'get_reservation_specific_reservation_instance_property_local_ssd.dart';

class GetReservationSpecificReservationInstanceProperty {
  /// Guest accelerator type and count.
  final pulumi.Input<List<GetReservationSpecificReservationInstancePropertyGuestAccelerator>> guestAccelerators;
  /// The amount of local ssd to reserve with each instance. This
  /// reserves disks of type 'local-ssd'.
  final pulumi.Input<List<GetReservationSpecificReservationInstancePropertyLocalSsd>> localSsds;
  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String> locationHint;
  /// The name of the machine type to reserve.
  final pulumi.Input<String> machineType;
  /// Specifies the frequency of planned maintenance events. Possible values: ["AS_NEEDED", "PERIODIC", "RECURRENT"]
  final pulumi.Input<String> maintenanceInterval;
  /// The minimum CPU platform for the reservation. For example,
  /// '"Intel Skylake"'. See
  /// the CPU platform availability reference](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform#availablezones)
  /// for information on available CPU platforms.
  final pulumi.Input<String> minCpuPlatform;

  /// Creates a new [GetReservationSpecificReservationInstanceProperty].
  /// [guestAccelerators] Guest accelerator type and count.
  /// [localSsds] The amount of local ssd to reserve with each instance. This
  /// [locationHint] An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  /// [machineType] The name of the machine type to reserve.
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. Possible values: ["AS_NEEDED", "PERIODIC", "RECURRENT"]
  /// [minCpuPlatform] The minimum CPU platform for the reservation. For example,
  GetReservationSpecificReservationInstanceProperty({
    required this.guestAccelerators,
    required this.localSsds,
    required this.locationHint,
    required this.machineType,
    required this.maintenanceInterval,
    required this.minCpuPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestAccelerators': pulumi.Input.mapInputValue<List<GetReservationSpecificReservationInstancePropertyGuestAccelerator>, List<Map<String, dynamic>>>(guestAccelerators, (value) => pulumi.Input.encodeList<GetReservationSpecificReservationInstancePropertyGuestAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localSsds': pulumi.Input.mapInputValue<List<GetReservationSpecificReservationInstancePropertyLocalSsd>, List<Map<String, dynamic>>>(localSsds, (value) => pulumi.Input.encodeList<GetReservationSpecificReservationInstancePropertyLocalSsd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationHint': locationHint,
      'machineType': machineType,
      'maintenanceInterval': maintenanceInterval,
      'minCpuPlatform': minCpuPlatform,
    };
  }

  factory GetReservationSpecificReservationInstanceProperty.fromMap(Map<String, dynamic> map) {
    return GetReservationSpecificReservationInstanceProperty(
      guestAccelerators: (pulumi.Input.decodeList<GetReservationSpecificReservationInstancePropertyGuestAccelerator>(map['guestAccelerators'], (value) => GetReservationSpecificReservationInstancePropertyGuestAccelerator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      localSsds: (pulumi.Input.decodeList<GetReservationSpecificReservationInstancePropertyLocalSsd>(map['localSsds'], (value) => GetReservationSpecificReservationInstancePropertyLocalSsd.fromMap((value as Map).cast<String, dynamic>()))).input(),
      locationHint: (map['locationHint'] as String).input(),
      machineType: (map['machineType'] as String).input(),
      maintenanceInterval: (map['maintenanceInterval'] as String).input(),
      minCpuPlatform: (map['minCpuPlatform'] as String).input(),
    );
  }
}

