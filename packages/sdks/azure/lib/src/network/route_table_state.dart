// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_route.dart';

/// Input properties used for looking up and filtering RouteTable resources.
class RouteTableState {
  /// Boolean flag which controls propagation of routes learned by BGP on that route table. Defaults to `true`.
  final pulumi.Input<bool>? bgpRoutePropagationEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the route.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the route table. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A list of objects representing routes. Each object accepts the arguments documented below.
  ///
  /// > **NOTE** Since `route` can be configured both inline and via the separate `azure.network.Route` resource, we have to explicitly set it to empty slice (`[]`) to remove it.
  final pulumi.Input<List<RouteTableRoute>>? routes;
  /// The collection of Subnets associated with this route table.
  final pulumi.Input<List<String>>? subnets;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RouteTableState].
  /// [bgpRoutePropagationEnabled] Boolean flag which controls propagation of routes learned by BGP on that route table. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] The name of the route.
  /// [resourceGroupName] The name of the resource group in which to create the route table. Changing this forces a new resource to be created.
  /// [routes] A list of objects representing routes. Each object accepts the arguments documented below.
  /// [subnets] The collection of Subnets associated with this route table.
  /// [tags] A mapping of tags to assign to the resource.
  RouteTableState({
    pulumi.Output<bool>? bgpRoutePropagationEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<RouteTableRoute>>? routes,
    pulumi.Output<List<String>>? subnets,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      bgpRoutePropagationEnabled = pulumi.Input.asOptionalInput<bool>(bgpRoutePropagationEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      routes = pulumi.Input.asOptionalInput<List<RouteTableRoute>>(routes),
      subnets = pulumi.Input.asOptionalInput<List<String>>(subnets),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpRoutePropagationEnabled': ?bgpRoutePropagationEnabled,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<RouteTableRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<RouteTableRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnets': ?subnets,
      'tags': ?tags,
    };
  }

  factory RouteTableState.fromMap(Map<String, dynamic> map) {
    return RouteTableState(
      bgpRoutePropagationEnabled: map['bgpRoutePropagationEnabled'] == null ? null : pulumi.Output.create<bool>(map['bgpRoutePropagationEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routes: map['routes'] == null ? null : pulumi.Output.create<List<RouteTableRoute>>(pulumi.Input.decodeList<RouteTableRoute>(map['routes'], (value) => RouteTableRoute.fromMap((value as Map).cast<String, dynamic>()))),
      subnets: map['subnets'] == null ? null : pulumi.Output.create<List<String>>((map['subnets'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

