// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesZoneAuthoritativeNameservers {
  /// Authoritative Hetzner nameservers assigned to the Zone.
  final pulumi.Input<List<String>> assigneds;

  /// Creates a new [GetZonesZoneAuthoritativeNameservers].
  /// [assigneds] Authoritative Hetzner nameservers assigned to the Zone.
  GetZonesZoneAuthoritativeNameservers({
    required this.assigneds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigneds': assigneds,
    };
  }

  factory GetZonesZoneAuthoritativeNameservers.fromMap(Map<String, dynamic> map) {
    return GetZonesZoneAuthoritativeNameservers(
      assigneds: pulumi.Input.fromValue((map['assigneds'] as List).cast<String>()),
    );
  }
}

