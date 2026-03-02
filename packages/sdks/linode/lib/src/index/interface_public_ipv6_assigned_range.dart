// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterfacePublicIpv6AssignedRange {
  /// The IPv6 network range in CIDR notation.
  final pulumi.Input<String>? range;
  /// The public IPv6 address that the range is routed to.
  final pulumi.Input<String>? routeTarget;

  /// Creates a new [InterfacePublicIpv6AssignedRange].
  /// [range] The IPv6 network range in CIDR notation.
  /// [routeTarget] The public IPv6 address that the range is routed to.
  InterfacePublicIpv6AssignedRange({
    this.range,
    this.routeTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': ?range,
      'routeTarget': ?routeTarget,
    };
  }

  factory InterfacePublicIpv6AssignedRange.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv6AssignedRange(
      range: map['range'] == null ? null : (map['range']! as String).input(),
      routeTarget: map['routeTarget'] == null ? null : (map['routeTarget']! as String).input(),
    );
  }
}

