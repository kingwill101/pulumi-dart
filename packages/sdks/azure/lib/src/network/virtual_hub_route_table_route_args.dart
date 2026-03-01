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
  final pulumi.Input<String>? name;
  /// The next hop's resource ID.
  final pulumi.Input<String> nextHop;
  /// The type of next hop. Currently the only possible value is `ResourceId`. Defaults to `ResourceId`.
  final pulumi.Input<String>? nextHopType;
  /// The ID of the Virtual Hub Route Table to link this route to. Changing this forces a new resource to be created.
  final pulumi.Input<String> routeTableId;

  /// Creates a new [VirtualHubRouteTableRouteArgs].
  /// [destinations] A list of destination addresses for this route.
  /// [destinationsType] The type of destinations. Possible values are `CIDR`, `ResourceId` and `Service`.
  /// [name] The name which should be used for this route. Changing this forces a new resource to be created.
  /// [nextHop] The next hop's resource ID.
  /// [nextHopType] The type of next hop. Currently the only possible value is `ResourceId`. Defaults to `ResourceId`.
  /// [routeTableId] The ID of the Virtual Hub Route Table to link this route to. Changing this forces a new resource to be created.
  VirtualHubRouteTableRouteArgs({
    required pulumi.Output<List<String>> destinations,
    required pulumi.Output<String> destinationsType,
    pulumi.Output<String>? name,
    required pulumi.Output<String> nextHop,
    pulumi.Output<String>? nextHopType,
    required pulumi.Output<String> routeTableId,
  }) :
      destinations = pulumi.Input.asInput<List<String>>(destinations),
      destinationsType = pulumi.Input.asInput<String>(destinationsType),
      name = pulumi.Input.asOptionalInput<String>(name),
      nextHop = pulumi.Input.asInput<String>(nextHop),
      nextHopType = pulumi.Input.asOptionalInput<String>(nextHopType),
      routeTableId = pulumi.Input.asInput<String>(routeTableId);

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
      destinations: pulumi.Output.create<List<String>>((map['destinations'] as List).cast<String>()),
      destinationsType: pulumi.Output.create<String>(map['destinationsType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nextHop: pulumi.Output.create<String>(map['nextHop'] as String),
      nextHopType: map['nextHopType'] == null ? null : pulumi.Output.create<String>(map['nextHopType'] as String),
      routeTableId: pulumi.Output.create<String>(map['routeTableId'] as String),
    );
  }
}

