// ignore_for_file: unused_element, unnecessary_cast

import 'instance_from_template_reservation_affinity_specific_reservation.dart';

class InstanceFromTemplateReservationAffinity {
  /// Specifies the label selector for the reservation to use.
  final InstanceFromTemplateReservationAffinitySpecificReservation? specificReservation;
  /// The type of reservation from which this instance can consume resources.
  final String type;

  /// Creates a new [InstanceFromTemplateReservationAffinity].
  /// [specificReservation] Specifies the label selector for the reservation to use.
  /// [type] The type of reservation from which this instance can consume resources.
  InstanceFromTemplateReservationAffinity({
    this.specificReservation,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specificReservation': ?specificReservation == null ? null : specificReservation!.toMap(),
      'type': type,
    };
  }

  factory InstanceFromTemplateReservationAffinity.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateReservationAffinity(
      specificReservation: map['specificReservation'] == null ? null : InstanceFromTemplateReservationAffinitySpecificReservation.fromMap((map['specificReservation'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

