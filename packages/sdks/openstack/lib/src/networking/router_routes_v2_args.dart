// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_routes_v2_route.dart';

/// {@template pulumi_networking_router_routes_v2_router_routes_v2_args_doc}
/// The set of arguments for RouterRoutesV2.
/// {@endtemplate}
/// {@macro pulumi_networking_router_routes_v2_router_routes_v2_args_doc}
class RouterRoutesV2Args {
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to configure routing entres on a router. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// new routing entries.
  final pulumi.Input<String>? region;
  /// ID of the router these routing entries belong to.
  /// Changing this creates new routing entries.
  final pulumi.Input<String> routerId;
  /// A set of routing entries to add to the router.
  final pulumi.Input<List<RouterRoutesV2Route>>? routes;

  /// Creates a new [RouterRoutesV2Args].
  /// [region] The region in which to obtain the V2 networking client.
  /// [routerId] ID of the router these routing entries belong to.
  /// [routes] A set of routing entries to add to the router.
  RouterRoutesV2Args({
    this.region,
    required this.routerId,
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'routerId': routerId,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<RouterRoutesV2Route>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<RouterRoutesV2Route, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RouterRoutesV2Args.fromMap(Map<String, dynamic> map) {
    return RouterRoutesV2Args(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routerId: (map['routerId'] as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<RouterRoutesV2Route>(map['routes'], (value) => RouterRoutesV2Route.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

