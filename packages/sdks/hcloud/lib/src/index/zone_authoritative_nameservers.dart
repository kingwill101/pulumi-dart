// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneAuthoritativeNameservers {
  /// Authoritative Hetzner nameservers assigned to the Zone.
  final pulumi.Input<List<String>>? assigneds;

  /// Creates a new [ZoneAuthoritativeNameservers].
  /// [assigneds] Authoritative Hetzner nameservers assigned to the Zone.
  ZoneAuthoritativeNameservers({this.assigneds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'assigneds': ?assigneds};
  }

  factory ZoneAuthoritativeNameservers.fromMap(Map<String, dynamic> map) {
    return ZoneAuthoritativeNameservers(
      assigneds: (() {
        final guardedValue = map['assigneds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
