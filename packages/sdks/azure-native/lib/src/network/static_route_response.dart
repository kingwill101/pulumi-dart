// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of all Static Routes.
class StaticRouteResponse {
  /// List of all address prefixes.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// The name of the StaticRoute that is unique within a VnetRoute.
  final pulumi.Input<String>? name;
  /// The ip address of the next hop.
  final pulumi.Input<String>? nextHopIpAddress;

  /// Creates a new [StaticRouteResponse].
  /// [addressPrefixes] List of all address prefixes.
  /// [name] The name of the StaticRoute that is unique within a VnetRoute.
  /// [nextHopIpAddress] The ip address of the next hop.
  StaticRouteResponse({
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

  factory StaticRouteResponse.fromMap(Map<String, dynamic> map) {
    return StaticRouteResponse(
      addressPrefixes: map['addressPrefixes'] == null ? null : ((map['addressPrefixes'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nextHopIpAddress: map['nextHopIpAddress'] == null ? null : (map['nextHopIpAddress'] as String).input(),
    );
  }
}

