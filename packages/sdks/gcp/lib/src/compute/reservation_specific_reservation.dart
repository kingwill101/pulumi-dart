// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_specific_reservation_instance_properties.dart';

class ReservationSpecificReservation {
  /// (Output)
  /// Indicates how many instances are actually usable currently.
  final pulumi.Input<int>? assuredCount;
  /// The number of resources that are allocated.
  final pulumi.Input<int> count;
  /// (Output)
  /// How many instances are in use.
  final pulumi.Input<int>? inUseCount;
  /// The instance properties for the reservation.
  /// Structure is documented below.
  final pulumi.Input<ReservationSpecificReservationInstanceProperties>? instanceProperties;
  /// Specifies the instance template to create the reservation. If you use this field, you must exclude the
  /// instanceProperties field.
  final pulumi.Input<String>? sourceInstanceTemplate;

  /// Creates a new [ReservationSpecificReservation].
  /// [assuredCount] (Output)
  /// [count] The number of resources that are allocated.
  /// [inUseCount] (Output)
  /// [instanceProperties] The instance properties for the reservation.
  /// [sourceInstanceTemplate] Specifies the instance template to create the reservation. If you use this field, you must exclude the
  ReservationSpecificReservation({
    this.assuredCount,
    required this.count,
    this.inUseCount,
    this.instanceProperties,
    this.sourceInstanceTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assuredCount': ?assuredCount,
      'count': count,
      'inUseCount': ?inUseCount,
      'instanceProperties': ?pulumi.Input.mapOptionalInputValue<ReservationSpecificReservationInstanceProperties, Map<String, dynamic>>(instanceProperties, (value) => value.toMap()),
      'sourceInstanceTemplate': ?sourceInstanceTemplate,
    };
  }

  factory ReservationSpecificReservation.fromMap(Map<String, dynamic> map) {
    return ReservationSpecificReservation(
      assuredCount: (() { final guardedValue = map['assuredCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      count: pulumi.Input.fromValue(map['count'] as int),
      inUseCount: (() { final guardedValue = map['inUseCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceProperties: (() { final guardedValue = map['instanceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationSpecificReservationInstanceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceInstanceTemplate: (() { final guardedValue = map['sourceInstanceTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

