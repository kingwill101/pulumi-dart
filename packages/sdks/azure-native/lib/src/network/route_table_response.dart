// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_response.dart';
import 'subnet_response.dart';

/// Route table resource.
class RouteTableResponse {
  /// Whether to disable the routes learned by BGP on that route table. True means disable.
  final pulumi.Input<bool>? disableBgpRoutePropagation;

  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Resource location.
  final pulumi.Input<String>? location;

  /// Resource name.
  final pulumi.Input<String> name;

  /// The provisioning state of the route table resource.
  final pulumi.Input<String> provisioningState;

  /// The resource GUID property of the route table.
  final pulumi.Input<String> resourceGuid;

  /// Collection of routes contained within a route table.
  final pulumi.Input<List<RouteResponse>>? routes;

  /// A collection of references to subnets.
  final pulumi.Input<List<SubnetResponse>> subnets;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [RouteTableResponse].
  /// [disableBgpRoutePropagation] Whether to disable the routes learned by BGP on that route table. True means disable.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the route table resource.
  /// [resourceGuid] The resource GUID property of the route table.
  /// [routes] Collection of routes contained within a route table.
  /// [subnets] A collection of references to subnets.
  /// [tags] Resource tags.
  /// [type] Resource type.
  RouteTableResponse({
    this.disableBgpRoutePropagation,
    required this.etag,
    this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceGuid,
    this.routes,
    required this.subnets,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableBgpRoutePropagation': ?disableBgpRoutePropagation,
      'etag': etag,
      'id': ?id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'routes':
          ?pulumi.Input.mapOptionalInputValue<
            List<RouteResponse>,
            List<Map<String, dynamic>>
          >(
            routes,
            (value) =>
                pulumi.Input.encodeList<RouteResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'subnets':
          pulumi.Input.mapInputValue<
            List<SubnetResponse>,
            List<Map<String, dynamic>>
          >(
            subnets,
            (value) =>
                pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'tags': ?tags,
      'type': type,
    };
  }

  factory RouteTableResponse.fromMap(Map<String, dynamic> map) {
    return RouteTableResponse(
      disableBgpRoutePropagation: (() {
        final guardedValue = map['disableBgpRoutePropagation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
      routes: (() {
        final guardedValue = map['routes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RouteResponse>(
            guardedValue,
            (value) =>
                RouteResponse.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      subnets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SubnetResponse>(
          map['subnets']!,
          (value) =>
              SubnetResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
