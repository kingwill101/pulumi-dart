// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFlexibleServerHighAvailability {
  /// The high availability mode of the MySQL Flexible Server.
  final pulumi.Input<String> mode;
  /// The availability zone of the standby Flexible Server.
  final pulumi.Input<String> standbyAvailabilityZone;

  /// Creates a new [GetFlexibleServerHighAvailability].
  /// [mode] The high availability mode of the MySQL Flexible Server.
  /// [standbyAvailabilityZone] The availability zone of the standby Flexible Server.
  const GetFlexibleServerHighAvailability({
    required this.mode,
    required this.standbyAvailabilityZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'standbyAvailabilityZone': standbyAvailabilityZone,
    };
  }

  factory GetFlexibleServerHighAvailability.fromMap(Map<String, dynamic> map) {
    return GetFlexibleServerHighAvailability(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      standbyAvailabilityZone: pulumi.Input.fromValue(map['standbyAvailabilityZone'] as String),
    );
  }
}

