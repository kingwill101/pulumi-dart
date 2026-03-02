// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceTemplateReservationAffinitySpecificReservation {
  /// The key for the node affinity label.
  final pulumi.Input<String> key;
  /// Corresponds to the label values of a reservation resource.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetRegionInstanceTemplateReservationAffinitySpecificReservation].
  /// [key] The key for the node affinity label.
  /// [values] Corresponds to the label values of a reservation resource.
  GetRegionInstanceTemplateReservationAffinitySpecificReservation({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory GetRegionInstanceTemplateReservationAffinitySpecificReservation.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateReservationAffinitySpecificReservation(
      key: (map['key'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

