// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_specific_reservation_instance_property.dart';

class GetReservationSpecificReservation {
  /// Indicates how many instances are actually usable currently.
  final pulumi.Input<int> assuredCount;
  /// The number of resources that are allocated.
  final pulumi.Input<int> count;
  /// How many instances are in use.
  final pulumi.Input<int> inUseCount;
  /// The instance properties for the reservation.
  final pulumi.Input<List<GetReservationSpecificReservationInstanceProperty>> instanceProperties;
  /// Specifies the instance template to create the reservation. If you use this field, you must exclude the
  /// instanceProperties field.
  final pulumi.Input<String> sourceInstanceTemplate;

  /// Creates a new [GetReservationSpecificReservation].
  /// [assuredCount] Indicates how many instances are actually usable currently.
  /// [count] The number of resources that are allocated.
  /// [inUseCount] How many instances are in use.
  /// [instanceProperties] The instance properties for the reservation.
  /// [sourceInstanceTemplate] Specifies the instance template to create the reservation. If you use this field, you must exclude the
  const GetReservationSpecificReservation({
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
      'instanceProperties': pulumi.Input.mapInputValue<List<GetReservationSpecificReservationInstanceProperty>, List<Map<String, dynamic>>>(instanceProperties, (value) => pulumi.Input.encodeList<GetReservationSpecificReservationInstanceProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceInstanceTemplate': sourceInstanceTemplate,
    };
  }

  factory GetReservationSpecificReservation.fromMap(Map<String, dynamic> map) {
    return GetReservationSpecificReservation(
      assuredCount: pulumi.Input.fromValue(map['assuredCount'] as int),
      count: pulumi.Input.fromValue(map['count'] as int),
      inUseCount: pulumi.Input.fromValue(map['inUseCount'] as int),
      instanceProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetReservationSpecificReservationInstanceProperty>(map['instanceProperties']!, (value) => GetReservationSpecificReservationInstanceProperty.fromMap((value as Map).cast<String, dynamic>()))),
      sourceInstanceTemplate: pulumi.Input.fromValue(map['sourceInstanceTemplate'] as String),
    );
  }
}
