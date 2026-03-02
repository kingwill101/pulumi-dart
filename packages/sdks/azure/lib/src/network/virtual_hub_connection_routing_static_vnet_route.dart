// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualHubConnectionRoutingStaticVnetRoute {
  /// A list of CIDR Ranges which should be used as Address Prefixes.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// The name which should be used for this Static Route.
  final pulumi.Input<String>? name;
  /// The IP Address which should be used for the Next Hop.
  final pulumi.Input<String>? nextHopIpAddress;

  /// Creates a new [VirtualHubConnectionRoutingStaticVnetRoute].
  /// [addressPrefixes] A list of CIDR Ranges which should be used as Address Prefixes.
  /// [name] The name which should be used for this Static Route.
  /// [nextHopIpAddress] The IP Address which should be used for the Next Hop.
  VirtualHubConnectionRoutingStaticVnetRoute({
    this.addressPrefixes,
    this.name,
    this.nextHopIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'name': ?name,
      'nextHopIpAddress': ?nextHopIpAddress,
    };
  }

  factory VirtualHubConnectionRoutingStaticVnetRoute.fromMap(Map<String, dynamic> map) {
    return VirtualHubConnectionRoutingStaticVnetRoute(
      addressPrefixes: map['addressPrefixes'] == null ? null : ((map['addressPrefixes']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nextHopIpAddress: map['nextHopIpAddress'] == null ? null : (map['nextHopIpAddress']! as String).input(),
    );
  }
}

