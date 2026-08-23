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
  const VirtualHubRouteTableRouteState({
    this.destinations,
    this.destinationsType,
    this.name,
    this.nextHop,
    this.nextHopType,
    this.routeTableId,
  });

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
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationsType: (() { final guardedValue = map['destinationsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHop: (() { final guardedValue = map['nextHop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopType: (() { final guardedValue = map['nextHopType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
