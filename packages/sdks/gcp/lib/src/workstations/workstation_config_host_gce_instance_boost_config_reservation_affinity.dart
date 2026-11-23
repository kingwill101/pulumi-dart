// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkstationConfigHostGceInstanceBoostConfigReservationAffinity {
  /// Type of reservation consumption.
  /// Possible values are: `NO_RESERVATION`, `ANY_RESERVATION`, `SPECIFIC_RESERVATION`.
  final pulumi.Input<String?>? consumeReservationType;
  /// Label key of reservation resource.
  final pulumi.Input<String?>? key;
  /// Label values of reservation resources.
  /// Valid values are either the name of a reservation in the same project
  /// or "projects/{project}/reservations/{reservation}" to target a shared
  /// reservation in the same zone but in a different project.
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [WorkstationConfigHostGceInstanceBoostConfigReservationAffinity].
  /// [consumeReservationType] Type of reservation consumption.
  /// [key] Label key of reservation resource.
  /// [values] Label values of reservation resources.
  const WorkstationConfigHostGceInstanceBoostConfigReservationAffinity({
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

  factory WorkstationConfigHostGceInstanceBoostConfigReservationAffinity.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigHostGceInstanceBoostConfigReservationAffinity(
      consumeReservationType: (() { final guardedValue = map['consumeReservationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
