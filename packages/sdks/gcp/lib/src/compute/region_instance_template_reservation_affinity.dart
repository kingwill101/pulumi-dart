// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_template_reservation_affinity_specific_reservation.dart';

class RegionInstanceTemplateReservationAffinity {
  /// Specifies the label selector for the reservation to use..
  /// Structure is documented below.
  final pulumi.Input<RegionInstanceTemplateReservationAffinitySpecificReservation>? specificReservation;
  /// The type of reservation from which this instance can consume resources.
  final pulumi.Input<String> type;

  /// Creates a new [RegionInstanceTemplateReservationAffinity].
  /// [specificReservation] Specifies the label selector for the reservation to use..
  /// [type] The type of reservation from which this instance can consume resources.
  RegionInstanceTemplateReservationAffinity({
    this.specificReservation,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specificReservation': ?pulumi.Input.mapOptionalInputValue<RegionInstanceTemplateReservationAffinitySpecificReservation, Map<String, dynamic>>(specificReservation, (value) => value.toMap()),
      'type': type,
    };
  }

  factory RegionInstanceTemplateReservationAffinity.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateReservationAffinity(
      specificReservation: map['specificReservation'] == null ? null : (RegionInstanceTemplateReservationAffinitySpecificReservation.fromMap((map['specificReservation']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

