// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterfacePublicIpv6Shared {
  /// The IPv6 network range in CIDR notation.
  final pulumi.Input<String>? range;
  /// The public IPv6 address that the range is routed to.
  final pulumi.Input<String>? routeTarget;

  /// Creates a new [InterfacePublicIpv6Shared].
  /// [range] The IPv6 network range in CIDR notation.
  /// [routeTarget] The public IPv6 address that the range is routed to.
  InterfacePublicIpv6Shared({
    this.range,
    this.routeTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': ?range,
      'routeTarget': ?routeTarget,
    };
  }

  factory InterfacePublicIpv6Shared.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv6Shared(
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTarget: (() { final guardedValue = map['routeTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

