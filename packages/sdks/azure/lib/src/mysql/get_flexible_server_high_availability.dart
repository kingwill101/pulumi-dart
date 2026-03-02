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
  GetFlexibleServerHighAvailability({
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
      mode: (map['mode'] as String).input(),
      standbyAvailabilityZone: (map['standbyAvailabilityZone'] as String).input(),
    );
  }
}

