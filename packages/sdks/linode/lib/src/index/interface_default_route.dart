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
      ipv4: map['ipv4'] == null ? null : (map['ipv4']! as bool).input(),
      ipv6: map['ipv6'] == null ? null : (map['ipv6']! as bool).input(),
    );
  }
}

