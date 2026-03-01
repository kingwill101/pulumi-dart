// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualHubRouteTableRoute resources.
class VirtualHubRouteTableRouteState {
  /// A list of destination addresses for this route.
  final pulumi.Input<List<String>>? destinations;
  /// The type of destinations. Possible values are `CIDR`, `ResourceId` and `Service`.
  final pulumi.Input<String>? destinationsType;
  /// The name which should be used for this route. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The next hop's resource ID.
  final pulumi.Input<String>? nextHop;
  /// The type of next hop. Currently the only possible value is `ResourceId`. Defaults to `ResourceId`.
  final pulumi.Input<String>? nextHopType;
  /// The ID of the Virtual Hub Route Table to link this route to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? routeTableId;

  /// Creates a new [VirtualHubRouteTableRouteState].
  /// [destinations] A list of destination addresses for this route.
  /// [destinationsType] The type of destinations. Possible values are `CIDR`, `ResourceId` and `Service`.
  /// [name] The name which should be used for this route. Changing this forces a new resource to be created.
  /// [nextHop] The next hop's resource ID.
  /// [nextHopType] The type of next hop. Currently the only possible value is `ResourceId`. Defaults to `ResourceId`.
  /// [routeTableId] The ID of the Virtual Hub Route Table to link this route to. Changing this forces a new resource to be created.
  VirtualHubRouteTableRouteState({
    pulumi.Output<List<String>>? destinations,
    pulumi.Output<String>? destinationsType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nextHop,
    pulumi.Output<String>? nextHopType,
    pulumi.Output<String>? routeTableId,
  }) :
      destinations = pulumi.Input.asOptionalInput<List<String>>(destinations),
      destinationsType = pulumi.Input.asOptionalInput<String>(destinationsType),
      name = pulumi.Input.asOptionalInput<String>(name),
      nextHop = pulumi.Input.asOptionalInput<String>(nextHop),
      nextHopType = pulumi.Input.asOptionalInput<String>(nextHopType),
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations,
      'destinationsType': ?destinationsType,
      'name': ?name,
      'nextHop': ?nextHop,
      'nextHopType': ?nextHopType,
      'routeTableId': ?routeTableId,
    };
  }

  factory VirtualHubRouteTableRouteState.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTableRouteState(
      destinations: map['destinations'] == null ? null : pulumi.Output.create<List<String>>((map['destinations'] as List).cast<String>()),
      destinationsType: map['destinationsType'] == null ? null : pulumi.Output.create<String>(map['destinationsType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nextHop: map['nextHop'] == null ? null : pulumi.Output.create<String>(map['nextHop'] as String),
      nextHopType: map['nextHopType'] == null ? null : pulumi.Output.create<String>(map['nextHopType'] as String),
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
    );
  }
}

