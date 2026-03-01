// ignore_for_file: unused_element, unnecessary_cast


/// VirtualHubRouteTableV2 route.
class VirtualHubRouteV2Response {
  /// The type of destinations.
  final String? destinationType;
  /// List of all destinations.
  final List<String>? destinations;
  /// The type of next hops.
  final String? nextHopType;
  /// NextHops ip address.
  final List<String>? nextHops;

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
      destinationType: map['destinationType'] == null ? null : map['destinationType'] as String,
      destinations: map['destinations'] == null ? null : (map['destinations'] as List).cast<String>(),
      nextHopType: map['nextHopType'] == null ? null : map['nextHopType'] as String,
      nextHops: map['nextHops'] == null ? null : (map['nextHops'] as List).cast<String>(),
    );
  }
}

