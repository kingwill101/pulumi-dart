// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties to be set for the Future Reservation.
class FutureReservationStatusSpecificSKUPropertiesResponse {
  /// ID of the instance template used to populate the Future Reservation properties.
  final pulumi.Input<String> sourceInstanceTemplateId;

  /// Creates a new [FutureReservationStatusSpecificSKUPropertiesResponse].
  /// [sourceInstanceTemplateId] ID of the instance template used to populate the Future Reservation properties.
  FutureReservationStatusSpecificSKUPropertiesResponse({
    required this.sourceInstanceTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceInstanceTemplateId': sourceInstanceTemplateId,
    };
  }

  factory FutureReservationStatusSpecificSKUPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusSpecificSKUPropertiesResponse(
      sourceInstanceTemplateId: (map['sourceInstanceTemplateId'] as String).input(),
    );
  }
}

