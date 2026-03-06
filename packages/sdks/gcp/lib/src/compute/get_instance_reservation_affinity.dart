// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_reservation_affinity_specific_reservation.dart';

class GetInstanceReservationAffinity {
  /// Specifies the label selector for the reservation to use.
  final pulumi.Input<List<GetInstanceReservationAffinitySpecificReservation>> specificReservations;
  /// The accelerator type resource exposed to this instance. E.g. `nvidia-tesla-k80`.
  final pulumi.Input<String> type;

  /// Creates a new [GetInstanceReservationAffinity].
  /// [specificReservations] Specifies the label selector for the reservation to use.
  /// [type] The accelerator type resource exposed to this instance. E.g. `nvidia-tesla-k80`.
  const GetInstanceReservationAffinity({
    required this.specificReservations,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specificReservations': pulumi.Input.mapInputValue<List<GetInstanceReservationAffinitySpecificReservation>, List<Map<String, dynamic>>>(specificReservations, (value) => pulumi.Input.encodeList<GetInstanceReservationAffinitySpecificReservation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory GetInstanceReservationAffinity.fromMap(Map<String, dynamic> map) {
    return GetInstanceReservationAffinity(
      specificReservations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceReservationAffinitySpecificReservation>(map['specificReservations']!, (value) => GetInstanceReservationAffinitySpecificReservation.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

