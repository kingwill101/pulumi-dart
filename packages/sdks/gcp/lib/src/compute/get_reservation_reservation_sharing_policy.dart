// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReservationReservationSharingPolicy {
  /// Sharing config for all Google Cloud services. Possible values: ["ALLOW_ALL", "DISALLOW_ALL"]
  final pulumi.Input<String> serviceShareType;

  /// Creates a new [GetReservationReservationSharingPolicy].
  /// [serviceShareType] Sharing config for all Google Cloud services. Possible values: ["ALLOW_ALL", "DISALLOW_ALL"]
  GetReservationReservationSharingPolicy({required this.serviceShareType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'serviceShareType': serviceShareType};
  }

  factory GetReservationReservationSharingPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetReservationReservationSharingPolicy(
      serviceShareType: pulumi.Input.fromValue(
        map['serviceShareType'] as String,
      ),
    );
  }
}
