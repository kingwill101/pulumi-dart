// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FutureReservationStatusSpecificSkuProperties {
  /// ID of the instance template used to populate the Future Reservation properties.
  final pulumi.Input<String>? sourceInstanceTemplateId;

  /// Creates a new [FutureReservationStatusSpecificSkuProperties].
  /// [sourceInstanceTemplateId] ID of the instance template used to populate the Future Reservation properties.
  FutureReservationStatusSpecificSkuProperties({
    this.sourceInstanceTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceInstanceTemplateId': ?sourceInstanceTemplateId,
    };
  }

  factory FutureReservationStatusSpecificSkuProperties.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusSpecificSkuProperties(
      sourceInstanceTemplateId: map['sourceInstanceTemplateId'] == null ? null : (map['sourceInstanceTemplateId']! as String).input(),
    );
  }
}

