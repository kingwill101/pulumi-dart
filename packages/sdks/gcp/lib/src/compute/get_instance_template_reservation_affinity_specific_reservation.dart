// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTemplateReservationAffinitySpecificReservation {
  /// The key for the node affinity label.
  final String key;
  /// Corresponds to the label values of a reservation resource.
  final List<String> values;

  /// Creates a new [GetInstanceTemplateReservationAffinitySpecificReservation].
  /// [key] The key for the node affinity label.
  /// [values] Corresponds to the label values of a reservation resource.
  GetInstanceTemplateReservationAffinitySpecificReservation({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory GetInstanceTemplateReservationAffinitySpecificReservation.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateReservationAffinitySpecificReservation(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

