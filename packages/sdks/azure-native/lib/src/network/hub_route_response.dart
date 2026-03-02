// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RouteTable route.
class HubRouteResponse {
  /// The type of destinations (eg: CIDR, ResourceId, Service).
  final pulumi.Input<String> destinationType;
  /// List of all destinations.
  final pulumi.Input<List<String>> destinations;
  /// The name of the Route that is unique within a RouteTable. This name can be used to access this route.
  final pulumi.Input<String> name;
  /// NextHop resource ID.
  final pulumi.Input<String> nextHop;
  /// The type of next hop (eg: ResourceId).
  final pulumi.Input<String> nextHopType;

  /// Creates a new [HubRouteResponse].
  /// [destinationType] The type of destinations (eg: CIDR, ResourceId, Service).
  /// [destinations] List of all destinations.
  /// [name] The name of the Route that is unique within a RouteTable. This name can be used to access this route.
  /// [nextHop] NextHop resource ID.
  /// [nextHopType] The type of next hop (eg: ResourceId).
  HubRouteResponse({
    required this.destinationType,
    required this.destinations,
    required this.name,
    required this.nextHop,
    required this.nextHopType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationType': destinationType,
      'destinations': destinations,
      'name': name,
      'nextHop': nextHop,
      'nextHopType': nextHopType,
    };
  }

  factory HubRouteResponse.fromMap(Map<String, dynamic> map) {
    return HubRouteResponse(
      destinationType: (map['destinationType'] as String).input(),
      destinations: ((map['destinations'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      nextHop: (map['nextHop'] as String).input(),
      nextHopType: (map['nextHopType'] as String).input(),
    );
  }
}

