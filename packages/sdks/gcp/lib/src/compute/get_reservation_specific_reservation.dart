// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_specific_reservation_instance_property.dart';

class GetReservationSpecificReservation {
  /// Indicates how many instances are actually usable currently.
  final int assuredCount;
  /// The number of resources that are allocated.
  final int count;
  /// How many instances are in use.
  final int inUseCount;
  /// The instance properties for the reservation.
  final List<GetReservationSpecificReservationInstanceProperty> instanceProperties;
  /// Specifies the instance template to create the reservation. If you use this field, you must exclude the
  /// instanceProperties field.
  final String sourceInstanceTemplate;

  /// Creates a new [GetReservationSpecificReservation].
  /// [assuredCount] Indicates how many instances are actually usable currently.
  /// [count] The number of resources that are allocated.
  /// [inUseCount] How many instances are in use.
  /// [instanceProperties] The instance properties for the reservation.
  /// [sourceInstanceTemplate] Specifies the instance template to create the reservation. If you use this field, you must exclude the
  GetReservationSpecificReservation({
    required this.assuredCount,
    required this.count,
    required this.inUseCount,
    required this.instanceProperties,
    required this.sourceInstanceTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assuredCount': assuredCount,
      'count': count,
      'inUseCount': inUseCount,
      'instanceProperties': pulumi.Input.encodeList<GetReservationSpecificReservationInstanceProperty, Map<String, dynamic>>(instanceProperties, (value) => value.toMap()),
      'sourceInstanceTemplate': sourceInstanceTemplate,
    };
  }

  factory GetReservationSpecificReservation.fromMap(Map<String, dynamic> map) {
    return GetReservationSpecificReservation(
      assuredCount: map['assuredCount'] as int,
      count: map['count'] as int,
      inUseCount: map['inUseCount'] as int,
      instanceProperties: pulumi.Input.decodeList<GetReservationSpecificReservationInstanceProperty>(map['instanceProperties'], (value) => GetReservationSpecificReservationInstanceProperty.fromMap((value as Map).cast<String, dynamic>())),
      sourceInstanceTemplate: map['sourceInstanceTemplate'] as String,
    );
  }
}

