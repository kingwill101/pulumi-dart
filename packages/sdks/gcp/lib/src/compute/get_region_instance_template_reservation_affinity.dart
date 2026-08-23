// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_template_reservation_affinity_specific_reservation.dart';

class GetRegionInstanceTemplateReservationAffinity {
  /// Specifies the label selector for the reservation to use.
  final pulumi.Input<List<GetRegionInstanceTemplateReservationAffinitySpecificReservation>> specificReservations;
  /// The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  final pulumi.Input<String> type;

  /// Creates a new [GetRegionInstanceTemplateReservationAffinity].
  /// [specificReservations] Specifies the label selector for the reservation to use.
  /// [type] The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  const GetRegionInstanceTemplateReservationAffinity({
    required this.specificReservations,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specificReservations': pulumi.Input.mapInputValue<List<GetRegionInstanceTemplateReservationAffinitySpecificReservation>, List<Map<String, dynamic>>>(specificReservations, (value) => pulumi.Input.encodeList<GetRegionInstanceTemplateReservationAffinitySpecificReservation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory GetRegionInstanceTemplateReservationAffinity.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateReservationAffinity(
      specificReservations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionInstanceTemplateReservationAffinitySpecificReservation>(map['specificReservations']!, (value) => GetRegionInstanceTemplateReservationAffinitySpecificReservation.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
