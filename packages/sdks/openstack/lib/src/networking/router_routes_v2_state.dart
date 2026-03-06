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
  const RouterRoutesV2State({
    this.region,
    this.routerId,
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'routerId': ?routerId,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<RouterRoutesV2Route>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<RouterRoutesV2Route, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RouterRoutesV2State.fromMap(Map<String, dynamic> map) {
    return RouterRoutesV2State(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routerId: (() { final guardedValue = map['routerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouterRoutesV2Route>(guardedValue, (value) => RouterRoutesV2Route.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

