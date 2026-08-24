// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_magic_wan_static_route_get_magic_wan_static_route_args_doc}
/// Arguments for getMagicWanStaticRoute.
/// {@endtemplate}
/// {@macro pulumi_index_get_magic_wan_static_route_get_magic_wan_static_route_args_doc}
class GetMagicWanStaticRouteArgs {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  /// Identifier
  final pulumi.Input<String> routeId;

  /// Creates a new [GetMagicWanStaticRouteArgs].
  /// [accountId] Identifier
  /// [routeId] Identifier
  const GetMagicWanStaticRouteArgs({
    this.accountId,
    required this.routeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'routeId': routeId,
    };
  }

  factory GetMagicWanStaticRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetMagicWanStaticRouteArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeId: pulumi.Input.fromValue(map['routeId'] as String),
    );
  }
}
