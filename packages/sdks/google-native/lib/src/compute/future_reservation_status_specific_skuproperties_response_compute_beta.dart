// ignore_for_file: unused_element, unnecessary_cast


/// Properties to be set for the Future Reservation.
class FutureReservationStatusSpecificSKUPropertiesResponseComputeBeta {
  /// ID of the instance template used to populate the Future Reservation properties.
  final String sourceInstanceTemplateId;

  /// Creates a new [FutureReservationStatusSpecificSKUPropertiesResponseComputeBeta].
  /// [sourceInstanceTemplateId] ID of the instance template used to populate the Future Reservation properties.
  FutureReservationStatusSpecificSKUPropertiesResponseComputeBeta({
    required this.sourceInstanceTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceInstanceTemplateId': sourceInstanceTemplateId,
    };
  }

  factory FutureReservationStatusSpecificSKUPropertiesResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusSpecificSKUPropertiesResponseComputeBeta(
      sourceInstanceTemplateId: map['sourceInstanceTemplateId'] as String,
    );
  }
}

