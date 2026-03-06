// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_template_reservation_affinity_specific_reservation.dart';

class InstanceFromTemplateReservationAffinity {
  /// Specifies the label selector for the reservation to use.
  final pulumi.Input<InstanceFromTemplateReservationAffinitySpecificReservation>? specificReservation;
  /// The type of reservation from which this instance can consume resources.
  final pulumi.Input<String> type;

  /// Creates a new [InstanceFromTemplateReservationAffinity].
  /// [specificReservation] Specifies the label selector for the reservation to use.
  /// [type] The type of reservation from which this instance can consume resources.
  const InstanceFromTemplateReservationAffinity({
    this.specificReservation,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specificReservation': ?pulumi.Input.mapOptionalInputValue<InstanceFromTemplateReservationAffinitySpecificReservation, Map<String, dynamic>>(specificReservation, (value) => value.toMap()),
      'type': type,
    };
  }

  factory InstanceFromTemplateReservationAffinity.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateReservationAffinity(
      specificReservation: (() { final guardedValue = map['specificReservation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromTemplateReservationAffinitySpecificReservation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

