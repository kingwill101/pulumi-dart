// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNetworkGatewayCustomRoute {
  /// A list of address blocks reserved for this virtual network in CIDR notation.
  final pulumi.Input<List<String>> addressPrefixes;

  /// Creates a new [GetVirtualNetworkGatewayCustomRoute].
  /// [addressPrefixes] A list of address blocks reserved for this virtual network in CIDR notation.
  GetVirtualNetworkGatewayCustomRoute({required this.addressPrefixes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'addressPrefixes': addressPrefixes};
  }

  factory GetVirtualNetworkGatewayCustomRoute.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNetworkGatewayCustomRoute(
      addressPrefixes: pulumi.Input.fromValue(
        (map['addressPrefixes'] as List).cast<String>(),
      ),
    );
  }
}
