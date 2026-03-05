// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterfaceDefaultRoute {
  /// If set to true, the interface is used for the IPv4 default route.
  final pulumi.Input<bool>? ipv4;
  /// If set to true, the interface is used for the IPv6 default route.
  final pulumi.Input<bool>? ipv6;

  /// Creates a new [InterfaceDefaultRoute].
  /// [ipv4] If set to true, the interface is used for the IPv4 default route.
  /// [ipv6] If set to true, the interface is used for the IPv6 default route.
  InterfaceDefaultRoute({
    this.ipv4,
    this.ipv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ?ipv4,
      'ipv6': ?ipv6,
    };
  }

  factory InterfaceDefaultRoute.fromMap(Map<String, dynamic> map) {
    return InterfaceDefaultRoute(
      ipv4: (() { final guardedValue = map['ipv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

