// ignore_for_file: unused_element, unnecessary_cast


class GetReservationResourceStatusSpecificSkuAllocation {
  /// ID of the instance template used to populate reservation properties.
  final String sourceInstanceTemplateId;
  /// Per service utilization breakdown. The Key is the Google Cloud managed service name.
  final Map<String, String> utilizations;

  /// Creates a new [GetReservationResourceStatusSpecificSkuAllocation].
  /// [sourceInstanceTemplateId] ID of the instance template used to populate reservation properties.
  /// [utilizations] Per service utilization breakdown. The Key is the Google Cloud managed service name.
  GetReservationResourceStatusSpecificSkuAllocation({
    required this.sourceInstanceTemplateId,
    required this.utilizations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceInstanceTemplateId': sourceInstanceTemplateId,
      'utilizations': utilizations,
    };
  }

  factory GetReservationResourceStatusSpecificSkuAllocation.fromMap(Map<String, dynamic> map) {
    return GetReservationResourceStatusSpecificSkuAllocation(
      sourceInstanceTemplateId: map['sourceInstanceTemplateId'] as String,
      utilizations: (map['utilizations'] as Map).cast<String, String>(),
    );
  }
}

