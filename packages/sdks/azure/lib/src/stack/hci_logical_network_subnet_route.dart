// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HciLogicalNetworkSubnetRoute {
  /// The Address in CIDR notation. Changing this forces a new resource to be created.
  final pulumi.Input<String> addressPrefix;

  /// The name of the route. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The IPv4 address of the next hop. Changing this forces a new resource to be created.
  final pulumi.Input<String> nextHopIpAddress;

  /// Creates a new [HciLogicalNetworkSubnetRoute].
  /// [addressPrefix] The Address in CIDR notation. Changing this forces a new resource to be created.
  /// [name] The name of the route. Changing this forces a new resource to be created.
  /// [nextHopIpAddress] The IPv4 address of the next hop. Changing this forces a new resource to be created.
  HciLogicalNetworkSubnetRoute({
    required this.addressPrefix,
    this.name,
    required this.nextHopIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'name': ?name,
      'nextHopIpAddress': nextHopIpAddress,
    };
  }

  factory HciLogicalNetworkSubnetRoute.fromMap(Map<String, dynamic> map) {
    return HciLogicalNetworkSubnetRoute(
      addressPrefix: pulumi.Input.fromValue(map['addressPrefix'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nextHopIpAddress: pulumi.Input.fromValue(
        map['nextHopIpAddress'] as String,
      ),
    );
  }
}
