// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_interface_endpoint_response.dart';
import 'subnet_response.dart';

/// Route table resource.
class RouteTableInterfaceEndpointResponse {
  /// Gets or sets whether to disable the routes learned by BGP on that route table. True means disable.
  final pulumi.Input<bool?>? disableBgpRoutePropagation;
  /// Gets a unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String?>? etag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// The provisioning state of the resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String?>? provisioningState;
  /// Collection of routes contained within a route table.
  final pulumi.Input<List<RouteInterfaceEndpointResponse>?>? routes;
  /// A collection of references to subnets.
  final pulumi.Input<List<SubnetResponse>> subnets;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [RouteTableInterfaceEndpointResponse].
  /// [disableBgpRoutePropagation] Gets or sets whether to disable the routes learned by BGP on that route table. True means disable.
  /// [etag] Gets a unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [routes] Collection of routes contained within a route table.
  /// [subnets] A collection of references to subnets.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const RouteTableInterfaceEndpointResponse({
    this.disableBgpRoutePropagation,
    this.etag,
    this.id,
    this.location,
    required this.name,
    this.provisioningState,
    this.routes,
    required this.subnets,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableBgpRoutePropagation': ?disableBgpRoutePropagation,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': name,
      'provisioningState': ?provisioningState,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<RouteInterfaceEndpointResponse>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<RouteInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnets': pulumi.Input.mapInputValue<List<SubnetResponse>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'type': type,
    };
  }

  factory RouteTableInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return RouteTableInterfaceEndpointResponse(
      disableBgpRoutePropagation: (() { final guardedValue = map['disableBgpRoutePropagation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouteInterfaceEndpointResponse>(guardedValue, (value) => RouteInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnets: pulumi.Input.fromValue(pulumi.Input.decodeList<SubnetResponse>(map['subnets']!, (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
