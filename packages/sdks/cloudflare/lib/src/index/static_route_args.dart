// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_route_scope.dart';

/// {@template pulumi_index_static_route_static_route_args_doc}
/// The set of arguments for StaticRoute.
/// {@endtemplate}
/// {@macro pulumi_index_static_route_static_route_args_doc}
class StaticRouteArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  /// An optional human provided description of the static route.
  final pulumi.Input<String?>? description;
  /// The next-hop IP Address for the static route.
  final pulumi.Input<String> nexthop;
  /// IP Prefix in Classless Inter-Domain Routing format.
  final pulumi.Input<String> prefix;
  /// Priority of the static route.
  final pulumi.Input<int> priority;
  /// Used only for ECMP routes.
  final pulumi.Input<StaticRouteScope?>? scope;
  /// Optional weight of the ECMP scope - if provided.
  final pulumi.Input<int?>? weight;

  /// Creates a new [StaticRouteArgs].
  /// [accountId] Identifier
  /// [description] An optional human provided description of the static route.
  /// [nexthop] The next-hop IP Address for the static route.
  /// [prefix] IP Prefix in Classless Inter-Domain Routing format.
  /// [priority] Priority of the static route.
  /// [scope] Used only for ECMP routes.
  /// [weight] Optional weight of the ECMP scope - if provided.
  const StaticRouteArgs({
    required this.accountId,
    this.description,
    required this.nexthop,
    required this.prefix,
    required this.priority,
    this.scope,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'nexthop': nexthop,
      'prefix': prefix,
      'priority': priority,
      'scope': ?pulumi.Input.mapOptionalInputValue<StaticRouteScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'weight': ?weight,
    };
  }

  factory StaticRouteArgs.fromMap(Map<String, dynamic> map) {
    return StaticRouteArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nexthop: pulumi.Input.fromValue(map['nexthop'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StaticRouteScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
