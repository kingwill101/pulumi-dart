// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_wan_static_route_route_scope.dart';

class GetMagicWanStaticRouteRoute {
  /// When the route was created.
  final pulumi.Input<String> createdOn;
  /// An optional human provided description of the static route.
  final pulumi.Input<String> description;
  /// Identifier
  final pulumi.Input<String> id;
  /// When the route was last modified.
  final pulumi.Input<String> modifiedOn;
  /// The next-hop IP Address for the static route.
  final pulumi.Input<String> nexthop;
  /// IP Prefix in Classless Inter-Domain Routing format.
  final pulumi.Input<String> prefix;
  /// Priority of the static route.
  final pulumi.Input<int> priority;
  /// Used only for ECMP routes.
  final pulumi.Input<GetMagicWanStaticRouteRouteScope> scope;
  /// Optional weight of the ECMP scope - if provided.
  final pulumi.Input<int> weight;

  /// Creates a new [GetMagicWanStaticRouteRoute].
  /// [createdOn] When the route was created.
  /// [description] An optional human provided description of the static route.
  /// [id] Identifier
  /// [modifiedOn] When the route was last modified.
  /// [nexthop] The next-hop IP Address for the static route.
  /// [prefix] IP Prefix in Classless Inter-Domain Routing format.
  /// [priority] Priority of the static route.
  /// [scope] Used only for ECMP routes.
  /// [weight] Optional weight of the ECMP scope - if provided.
  const GetMagicWanStaticRouteRoute({
    required this.createdOn,
    required this.description,
    required this.id,
    required this.modifiedOn,
    required this.nexthop,
    required this.prefix,
    required this.priority,
    required this.scope,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'description': description,
      'id': id,
      'modifiedOn': modifiedOn,
      'nexthop': nexthop,
      'prefix': prefix,
      'priority': priority,
      'scope': pulumi.Input.mapInputValue<GetMagicWanStaticRouteRouteScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'weight': weight,
    };
  }

  factory GetMagicWanStaticRouteRoute.fromMap(Map<String, dynamic> map) {
    return GetMagicWanStaticRouteRoute(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      nexthop: pulumi.Input.fromValue(map['nexthop'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      scope: pulumi.Input.fromValue(GetMagicWanStaticRouteRouteScope.fromMap((map['scope']! as Map).cast<String, dynamic>())),
      weight: pulumi.Input.fromValue((map['weight'] as num).toInt()),
    );
  }
}
