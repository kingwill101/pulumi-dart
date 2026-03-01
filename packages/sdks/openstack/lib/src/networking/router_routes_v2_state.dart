// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_routes_v2_route.dart';

/// Input properties used for looking up and filtering RouterRoutesV2 resources.
class RouterRoutesV2State {
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to configure routing entres on a router. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// new routing entries.
  final pulumi.Input<String>? region;
  /// ID of the router these routing entries belong to.
  /// Changing this creates new routing entries.
  final pulumi.Input<String>? routerId;
  /// A set of routing entries to add to the router.
  final pulumi.Input<List<RouterRoutesV2Route>>? routes;

  /// Creates a new [RouterRoutesV2State].
  /// [region] The region in which to obtain the V2 networking client.
  /// [routerId] ID of the router these routing entries belong to.
  /// [routes] A set of routing entries to add to the router.
  RouterRoutesV2State({
    pulumi.Output<String>? region,
    pulumi.Output<String>? routerId,
    pulumi.Output<List<RouterRoutesV2Route>>? routes,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      routerId = pulumi.Input.asOptionalInput<String>(routerId),
      routes = pulumi.Input.asOptionalInput<List<RouterRoutesV2Route>>(routes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'routerId': ?routerId,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<RouterRoutesV2Route>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<RouterRoutesV2Route, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RouterRoutesV2State.fromMap(Map<String, dynamic> map) {
    return RouterRoutesV2State(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routerId: map['routerId'] == null ? null : pulumi.Output.create<String>(map['routerId'] as String),
      routes: map['routes'] == null ? null : pulumi.Output.create<List<RouterRoutesV2Route>>(pulumi.Input.decodeList<RouterRoutesV2Route>(map['routes'], (value) => RouterRoutesV2Route.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

