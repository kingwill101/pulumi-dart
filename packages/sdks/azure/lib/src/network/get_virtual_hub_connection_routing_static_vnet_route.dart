// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualHubConnectionRoutingStaticVnetRoute {
  /// A list of CIDR Ranges which is used as Address Prefixes.
  final pulumi.Input<List<String>> addressPrefixes;
  /// The name of the Connection which should be retrieved.
  final pulumi.Input<String> name;
  /// The IP Address which is used for the Next Hop.
  final pulumi.Input<String> nextHopIpAddress;

  /// Creates a new [GetVirtualHubConnectionRoutingStaticVnetRoute].
  /// [addressPrefixes] A list of CIDR Ranges which is used as Address Prefixes.
  /// [name] The name of the Connection which should be retrieved.
  /// [nextHopIpAddress] The IP Address which is used for the Next Hop.
  const GetVirtualHubConnectionRoutingStaticVnetRoute({
    required this.addressPrefixes,
    required this.name,
    required this.nextHopIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
      'name': name,
      'nextHopIpAddress': nextHopIpAddress,
    };
  }

  factory GetVirtualHubConnectionRoutingStaticVnetRoute.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubConnectionRoutingStaticVnetRoute(
      addressPrefixes: pulumi.Input.fromValue((map['addressPrefixes'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      nextHopIpAddress: pulumi.Input.fromValue(map['nextHopIpAddress'] as String),
    );
  }
}
