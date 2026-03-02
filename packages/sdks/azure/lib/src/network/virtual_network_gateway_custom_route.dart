// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkGatewayCustomRoute {
  /// A list of address blocks reserved for this virtual network in CIDR notation.
  final pulumi.Input<List<String>>? addressPrefixes;

  /// Creates a new [VirtualNetworkGatewayCustomRoute].
  /// [addressPrefixes] A list of address blocks reserved for this virtual network in CIDR notation.
  VirtualNetworkGatewayCustomRoute({
    this.addressPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
    };
  }

  factory VirtualNetworkGatewayCustomRoute.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayCustomRoute(
      addressPrefixes: map['addressPrefixes'] == null ? null : ((map['addressPrefixes'] as List).cast<String>()).input(),
    );
  }
}

