// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_workers_route_get_workers_route_args_doc}
/// Arguments for getWorkersRoute.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_route_get_workers_route_args_doc}
class GetWorkersRouteArgs {
  /// Identifier.
  final pulumi.Input<String> routeId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetWorkersRouteArgs].
  /// [routeId] Identifier.
  /// [zoneId] Identifier.
  const GetWorkersRouteArgs({
    required this.routeId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routeId': routeId,
      'zoneId': ?zoneId,
    };
  }

  factory GetWorkersRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkersRouteArgs(
      routeId: pulumi.Input.fromValue(map['routeId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
