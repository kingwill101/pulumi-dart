// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_machine_image_reservation_affinity_specific_reservation.dart';

class InstanceFromMachineImageReservationAffinity {
  /// Specifies the label selector for the reservation to use.
  final pulumi.Input<InstanceFromMachineImageReservationAffinitySpecificReservation>? specificReservation;
  /// The type of reservation from which this instance can consume resources.
  final pulumi.Input<String> type;

  /// Creates a new [InstanceFromMachineImageReservationAffinity].
  /// [specificReservation] Specifies the label selector for the reservation to use.
  /// [type] The type of reservation from which this instance can consume resources.
  InstanceFromMachineImageReservationAffinity({
    this.specificReservation,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specificReservation': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageReservationAffinitySpecificReservation, Map<String, dynamic>>(specificReservation, (value) => value.toMap()),
      'type': type,
    };
  }

  factory InstanceFromMachineImageReservationAffinity.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageReservationAffinity(
      specificReservation: map['specificReservation'] == null ? null : (InstanceFromMachineImageReservationAffinitySpecificReservation.fromMap((map['specificReservation']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

