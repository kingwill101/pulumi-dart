// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VirtualHubRouteTableV2 route.
class VirtualHubRouteV2Response {
  /// The type of destinations.
  final pulumi.Input<String>? destinationType;

  /// List of all destinations.
  final pulumi.Input<List<String>>? destinations;

  /// The type of next hops.
  final pulumi.Input<String>? nextHopType;

  /// NextHops ip address.
  final pulumi.Input<List<String>>? nextHops;

  /// Creates a new [VirtualHubRouteV2Response].
  /// [destinationType] The type of destinations.
  /// [destinations] List of all destinations.
  /// [nextHopType] The type of next hops.
  /// [nextHops] NextHops ip address.
  VirtualHubRouteV2Response({
    this.destinationType,
    this.destinations,
    this.nextHopType,
    this.nextHops,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationType': ?destinationType,
      'destinations': ?destinations,
      'nextHopType': ?nextHopType,
      'nextHops': ?nextHops,
    };
  }

  factory VirtualHubRouteV2Response.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteV2Response(
      destinationType: (() {
        final guardedValue = map['destinationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinations: (() {
        final guardedValue = map['destinations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nextHopType: (() {
        final guardedValue = map['nextHopType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nextHops: (() {
        final guardedValue = map['nextHops'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
