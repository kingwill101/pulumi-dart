// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualHubRouteTableRoute {
  /// A list of destination addresses for this route.
  final pulumi.Input<List<String>> destinations;
  /// The type of destinations. Possible values are `CIDR`, `ResourceId` and `Service`.
  final pulumi.Input<String> destinationsType;
  /// The name which should be used for this route.
  final pulumi.Input<String> name;
  /// The next hop's resource ID.
  final pulumi.Input<String> nextHop;
  /// The type of next hop. Currently the only possible value is `ResourceId`. Defaults to `ResourceId`.
  ///
  /// &gt; **Note:** The Routes can alternatively be created using the virtualHubRouteTableRoute resource. Using both inline and external routes is not supported and may result in unexpected configuration.
  final pulumi.Input<String?>? nextHopType;

  /// Creates a new [VirtualHubRouteTableRoute].
  /// [destinations] A list of destination addresses for this route.
  /// [destinationsType] The type of destinations. Possible values are `CIDR`, `ResourceId` and `Service`.
  /// [name] The name which should be used for this route.
  /// [nextHop] The next hop's resource ID.
  /// [nextHopType] The type of next hop. Currently the only possible value is `ResourceId`. Defaults to `ResourceId`.
  const VirtualHubRouteTableRoute({
    required this.destinations,
    required this.destinationsType,
    required this.name,
    required this.nextHop,
    this.nextHopType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': destinations,
      'destinationsType': destinationsType,
      'name': name,
      'nextHop': nextHop,
      'nextHopType': ?nextHopType,
    };
  }

  factory VirtualHubRouteTableRoute.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTableRoute(
      destinations: pulumi.Input.fromValue((map['destinations'] as List).cast<String>()),
      destinationsType: pulumi.Input.fromValue(map['destinationsType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
      nextHopType: (() { final guardedValue = map['nextHopType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
