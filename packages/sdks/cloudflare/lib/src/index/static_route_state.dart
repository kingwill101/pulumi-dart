// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_route_scope.dart';

/// Input properties used for looking up and filtering StaticRoute resources.
class StaticRouteState {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  /// When the route was created.
  final pulumi.Input<String?>? createdOn;
  /// An optional human provided description of the static route.
  final pulumi.Input<String?>? description;
  /// When the route was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// The next-hop IP Address for the static route.
  final pulumi.Input<String?>? nexthop;
  /// IP Prefix in Classless Inter-Domain Routing format.
  final pulumi.Input<String?>? prefix;
  /// Priority of the static route.
  final pulumi.Input<int?>? priority;
  /// Used only for ECMP routes.
  final pulumi.Input<StaticRouteScope?>? scope;
  /// Optional weight of the ECMP scope - if provided.
  final pulumi.Input<int?>? weight;

  /// Creates a new [StaticRouteState].
  /// [accountId] Identifier
  /// [createdOn] When the route was created.
  /// [description] An optional human provided description of the static route.
  /// [modifiedOn] When the route was last modified.
  /// [nexthop] The next-hop IP Address for the static route.
  /// [prefix] IP Prefix in Classless Inter-Domain Routing format.
  /// [priority] Priority of the static route.
  /// [scope] Used only for ECMP routes.
  /// [weight] Optional weight of the ECMP scope - if provided.
  const StaticRouteState({
    this.accountId,
    this.createdOn,
    this.description,
    this.modifiedOn,
    this.nexthop,
    this.prefix,
    this.priority,
    this.scope,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdOn': ?createdOn,
      'description': ?description,
      'modifiedOn': ?modifiedOn,
      'nexthop': ?nexthop,
      'prefix': ?prefix,
      'priority': ?priority,
      'scope': ?pulumi.Input.mapOptionalInputValue<StaticRouteScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'weight': ?weight,
    };
  }

  factory StaticRouteState.fromMap(Map<String, dynamic> map) {
    return StaticRouteState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nexthop: (() { final guardedValue = map['nexthop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StaticRouteScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
