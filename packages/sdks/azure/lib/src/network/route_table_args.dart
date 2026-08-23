// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_route.dart';

/// {@template pulumi_network_route_table_route_table_args_doc}
/// The set of arguments for RouteTable.
/// {@endtemplate}
/// {@macro pulumi_network_route_table_route_table_args_doc}
class RouteTableArgs {
  /// Boolean flag which controls propagation of routes learned by BGP on that route table. Defaults to `true`.
  final pulumi.Input<bool>? bgpRoutePropagationEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the route.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the route table. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A list of objects representing routes. Each object accepts the arguments documented below.
  ///
  /// &gt; **NOTE** Since `route` can be configured both inline and via the separate `azure.network.Route` resource, we have to explicitly set it to empty slice (`[]`) to remove it.
  final pulumi.Input<List<RouteTableRoute>>? routes;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RouteTableArgs].
  /// [bgpRoutePropagationEnabled] Boolean flag which controls propagation of routes learned by BGP on that route table. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] The name of the route.
  /// [resourceGroupName] The name of the resource group in which to create the route table. Changing this forces a new resource to be created.
  /// [routes] A list of objects representing routes. Each object accepts the arguments documented below.
  /// [tags] A mapping of tags to assign to the resource.
  const RouteTableArgs({
    this.bgpRoutePropagationEnabled,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.routes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpRoutePropagationEnabled': ?bgpRoutePropagationEnabled,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<RouteTableRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<RouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory RouteTableArgs.fromMap(Map<String, dynamic> map) {
    return RouteTableArgs(
      bgpRoutePropagationEnabled: (() { final guardedValue = map['bgpRoutePropagationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouteTableRoute>(guardedValue, (value) => RouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
