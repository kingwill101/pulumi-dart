// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of all Static Routes.
class StaticRouteResponse {
  /// List of all address prefixes.
  final pulumi.Input<List<String>?>? addressPrefixes;
  /// The name of the StaticRoute that is unique within a VnetRoute.
  final pulumi.Input<String?>? name;
  /// The ip address of the next hop.
  final pulumi.Input<String?>? nextHopIpAddress;

  /// Creates a new [StaticRouteResponse].
  /// [addressPrefixes] List of all address prefixes.
  /// [name] The name of the StaticRoute that is unique within a VnetRoute.
  /// [nextHopIpAddress] The ip address of the next hop.
  const StaticRouteResponse({
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
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopIpAddress: (() { final guardedValue = map['nextHopIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
