// ignore_for_file: unused_element, unnecessary_cast

import 'get_magic_wan_static_route_route.dart';

/// Result data returned by getMagicWanStaticRoute.
class GetMagicWanStaticRouteResult {
  /// Identifier
  final String? accountId;
  /// Identifier
  final String? id;
  final GetMagicWanStaticRouteRoute? route;
  /// Identifier
  final String? routeId;

  /// Creates a new [GetMagicWanStaticRouteResult].
  /// [accountId] Identifier
  /// [id] Identifier
  /// [route] Optional.
  /// [routeId] Identifier
  const GetMagicWanStaticRouteResult({
    this.accountId,
    this.id,
    this.route,
    this.routeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'route': ?route?.toMap(),
      'routeId': ?routeId,
    };
  }

  factory GetMagicWanStaticRouteResult.fromMap(Map<String, dynamic> map) {
    return GetMagicWanStaticRouteResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      route: (() { final guardedValue = map['route']; if (guardedValue == null) return null; return GetMagicWanStaticRouteRoute.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      routeId: (() { final guardedValue = map['routeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
