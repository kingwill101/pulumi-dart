// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReservationReservationSharingPolicy {
  /// Sharing config for all Google Cloud services.
  /// Possible values are: `ALLOW_ALL`, `DISALLOW_ALL`.
  final pulumi.Input<String>? serviceShareType;

  /// Creates a new [ReservationReservationSharingPolicy].
  /// [serviceShareType] Sharing config for all Google Cloud services.
  const ReservationReservationSharingPolicy({
    this.serviceShareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceShareType': ?serviceShareType,
    };
  }

  factory ReservationReservationSharingPolicy.fromMap(Map<String, dynamic> map) {
    return ReservationReservationSharingPolicy(
      serviceShareType: (() { final guardedValue = map['serviceShareType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
