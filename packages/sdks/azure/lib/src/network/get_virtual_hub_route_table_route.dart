// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualHubRouteTableRoute {
  /// A list of destination addresses for this route.
  final pulumi.Input<List<String>> destinations;
  /// The type of destinations.
  final pulumi.Input<String> destinationsType;
  /// The name of the Virtual Hub Route Table.
  final pulumi.Input<String> name;
  /// The next hop's resource ID.
  final pulumi.Input<String> nextHop;
  /// The type of next hop.
  final pulumi.Input<String> nextHopType;

  /// Creates a new [GetVirtualHubRouteTableRoute].
  /// [destinations] A list of destination addresses for this route.
  /// [destinationsType] The type of destinations.
  /// [name] The name of the Virtual Hub Route Table.
  /// [nextHop] The next hop's resource ID.
  /// [nextHopType] The type of next hop.
  const GetVirtualHubRouteTableRoute({
    required this.destinations,
    required this.destinationsType,
    required this.name,
    required this.nextHop,
    required this.nextHopType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': destinations,
      'destinationsType': destinationsType,
      'name': name,
      'nextHop': nextHop,
      'nextHopType': nextHopType,
    };
  }

  factory GetVirtualHubRouteTableRoute.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubRouteTableRoute(
      destinations: pulumi.Input.fromValue((map['destinations'] as List).cast<String>()),
      destinationsType: pulumi.Input.fromValue(map['destinationsType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
      nextHopType: pulumi.Input.fromValue(map['nextHopType'] as String),
    );
  }
}
