// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties to be set for the Future Reservation.
class FutureReservationStatusSpecificSKUPropertiesResponseComputeBeta {
  /// ID of the instance template used to populate the Future Reservation properties.
  final pulumi.Input<String> sourceInstanceTemplateId;

  /// Creates a new [FutureReservationStatusSpecificSKUPropertiesResponseComputeBeta].
  /// [sourceInstanceTemplateId] ID of the instance template used to populate the Future Reservation properties.
  const FutureReservationStatusSpecificSKUPropertiesResponseComputeBeta({
    required this.sourceInstanceTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceInstanceTemplateId': sourceInstanceTemplateId,
    };
  }

  factory FutureReservationStatusSpecificSKUPropertiesResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusSpecificSKUPropertiesResponseComputeBeta(
      sourceInstanceTemplateId: pulumi.Input.fromValue(map['sourceInstanceTemplateId'] as String),
    );
  }
}

