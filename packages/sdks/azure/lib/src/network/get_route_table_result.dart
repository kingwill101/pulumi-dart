// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_route.dart';

/// Result data returned by getRouteTable.
class GetRouteTableResult {
  /// Boolean flag which controls propagation of routes learned by BGP on that route table.
  final bool? bgpRoutePropagationEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region in which the Route Table exists.
  final String? location;
  /// The name of the Route.
  final String? name;
  final String? resourceGroupName;
  /// One or more `route` blocks as documented below.
  final List<GetRouteTableRoute>? routes;
  /// The collection of Subnets associated with this route table.
  final List<String>? subnets;
  /// A mapping of tags assigned to the Route Table.
  final Map<String, String>? tags;

  /// Creates a new [GetRouteTableResult].
  /// [bgpRoutePropagationEnabled] Boolean flag which controls propagation of routes learned by BGP on that route table.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region in which the Route Table exists.
  /// [name] The name of the Route.
  /// [resourceGroupName] Optional.
  /// [routes] One or more `route` blocks as documented below.
  /// [subnets] The collection of Subnets associated with this route table.
  /// [tags] A mapping of tags assigned to the Route Table.
  const GetRouteTableResult({
    this.bgpRoutePropagationEnabled,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.routes,
    this.subnets,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpRoutePropagationEnabled': ?bgpRoutePropagationEnabled,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'routes': ?(() { final guardedValue = routes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouteTableRoute, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'subnets': ?subnets,
      'tags': ?tags,
    };
  }

  factory GetRouteTableResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTableResult(
      bgpRoutePropagationEnabled: (() { final guardedValue = map['bgpRoutePropagationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouteTableRoute>(guardedValue, (value) => GetRouteTableRoute.fromMap((value as Map).cast<String, dynamic>())); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
