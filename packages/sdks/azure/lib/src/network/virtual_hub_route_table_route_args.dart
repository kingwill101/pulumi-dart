// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_virtual_hub_route_table_route_virtual_hub_route_table_route_args_doc}
/// The set of arguments for VirtualHubRouteTableRoute.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_hub_route_table_route_virtual_hub_route_table_route_args_doc}
class VirtualHubRouteTableRouteArgs {
  /// A list of destination addresses for this route.
  final pulumi.Input<List<String>> destinations;
  /// The type of destinations. Possible values are `CIDR`, `ResourceId` and `Service`.
  final pulumi.Input<String> destinationsType;
  /// The name which should be used for this route. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The next hop's resource ID.
  final pulumi.Input<String> nextHop;
  /// The type of next hop. Currently the only possible value is `ResourceId`. Defaults to `ResourceId`.
  final pulumi.Input<String?>? nextHopType;
  /// The ID of the Virtual Hub Route Table to link this route to. Changing this forces a new resource to be created.
  final pulumi.Input<String> routeTableId;

  /// Creates a new [VirtualHubRouteTableRouteArgs].
  /// [destinations] A list of destination addresses for this route.
  /// [destinationsType] The type of destinations. Possible values are `CIDR`, `ResourceId` and `Service`.
  /// [name] The name which should be used for this route. Changing this forces a new resource to be created.
  /// [nextHop] The next hop's resource ID.
  /// [nextHopType] The type of next hop. Currently the only possible value is `ResourceId`. Defaults to `ResourceId`.
  /// [routeTableId] The ID of the Virtual Hub Route Table to link this route to. Changing this forces a new resource to be created.
  const VirtualHubRouteTableRouteArgs({
    required this.destinations,
    required this.destinationsType,
    this.name,
    required this.nextHop,
    this.nextHopType,
    required this.routeTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': destinations,
      'destinationsType': destinationsType,
      'name': ?name,
      'nextHop': nextHop,
      'nextHopType': ?nextHopType,
      'routeTableId': routeTableId,
    };
  }

  factory VirtualHubRouteTableRouteArgs.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTableRouteArgs(
      destinations: pulumi.Input.fromValue((map['destinations'] as List).cast<String>()),
      destinationsType: pulumi.Input.fromValue(map['destinationsType'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
      nextHopType: (() { final guardedValue = map['nextHopType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableId: pulumi.Input.fromValue(map['routeTableId'] as String),
    );
  }
}
