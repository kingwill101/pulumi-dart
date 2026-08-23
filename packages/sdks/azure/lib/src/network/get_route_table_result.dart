// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_route.dart';

/// Result data returned by getRouteTable.
class GetRouteTableResult {
  /// Boolean flag which controls propagation of routes learned by BGP on that route table.
  final bool bgpRoutePropagationEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region in which the Route Table exists.
  final String location;
  /// The name of the Route.
  final String name;
  final String resourceGroupName;
  /// One or more `route` blocks as documented below.
  final List<GetRouteTableRoute> routes;
  /// The collection of Subnets associated with this route table.
  final List<String> subnets;
  /// A mapping of tags assigned to the Route Table.
  final Map<String, String> tags;

  /// Creates a new [GetRouteTableResult].
  /// [bgpRoutePropagationEnabled] Boolean flag which controls propagation of routes learned by BGP on that route table.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region in which the Route Table exists.
  /// [name] The name of the Route.
  /// [resourceGroupName] Required.
  /// [routes] One or more `route` blocks as documented below.
  /// [subnets] The collection of Subnets associated with this route table.
  /// [tags] A mapping of tags assigned to the Route Table.
  const GetRouteTableResult({
    required this.bgpRoutePropagationEnabled,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.routes,
    required this.subnets,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpRoutePropagationEnabled': bgpRoutePropagationEnabled,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'routes': pulumi.Input.encodeList<GetRouteTableRoute, Map<String, dynamic>>(routes, (value) => value.toMap()),
      'subnets': subnets,
      'tags': tags,
    };
  }

  factory GetRouteTableResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTableResult(
      bgpRoutePropagationEnabled: map['bgpRoutePropagationEnabled'] as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routes: pulumi.Input.decodeList<GetRouteTableRoute>(map['routes']!, (value) => GetRouteTableRoute.fromMap((value as Map).cast<String, dynamic>())),
      subnets: (map['subnets'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
