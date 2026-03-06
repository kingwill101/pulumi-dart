// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGceSetupReservationAffinity {
  /// Specifies the type of reservation from which this instance can consume resources:
  /// RESERVATION_ANY (default), RESERVATION_SPECIFIC, or RESERVATION_NONE.
  /// Possible values are: `RESERVATION_NONE`, `RESERVATION_ANY`, `RESERVATION_SPECIFIC`.
  final pulumi.Input<String>? consumeReservationType;
  /// Corresponds to the label key of a reservation resource. To target a
  /// RESERVATION_SPECIFIC by name, use compute.googleapis.com/reservation-name
  /// as the key and specify the name of your reservation as its value.
  final pulumi.Input<String>? key;
  /// Corresponds to the label values of a reservation resource. This can be
  /// either a name to a reservation in the same project or
  /// "projects/different-project/reservations/some-reservation-name"
  /// to target a shared reservation in the same zone but in a different project.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [InstanceGceSetupReservationAffinity].
  /// [consumeReservationType] Specifies the type of reservation from which this instance can consume resources:
  /// [key] Corresponds to the label key of a reservation resource. To target a
  /// [values] Corresponds to the label values of a reservation resource. This can be
  const InstanceGceSetupReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeReservationType': ?consumeReservationType,
      'key': ?key,
      'values': ?values,
    };
  }

  factory InstanceGceSetupReservationAffinity.fromMap(Map<String, dynamic> map) {
    return InstanceGceSetupReservationAffinity(
      consumeReservationType: (() { final guardedValue = map['consumeReservationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

