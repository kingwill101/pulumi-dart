// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route.dart';

/// Route table resource.
class RouteTable {
  /// Whether to disable the routes learned by BGP on that route table. True means disable.
  final bool? disableBgpRoutePropagation;
  /// Gets a unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// The provisioning state of the resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final String? provisioningState;
  /// Collection of routes contained within a route table.
  final List<Route>? routes;
  /// Resource tags.
  final Map<String, String>? tags;

  /// Creates a new [RouteTable].
  /// [disableBgpRoutePropagation] Whether to disable the routes learned by BGP on that route table. True means disable.
  /// [etag] Gets a unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [provisioningState] The provisioning state of the resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [routes] Collection of routes contained within a route table.
  /// [tags] Resource tags.
  RouteTable({
    this.disableBgpRoutePropagation,
    this.etag,
    this.id,
    this.location,
    this.provisioningState,
    this.routes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableBgpRoutePropagation': ?disableBgpRoutePropagation,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'provisioningState': ?provisioningState,
      'routes': ?routes == null ? null : pulumi.Input.encodeList<Route, Map<String, dynamic>>(routes!, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory RouteTable.fromMap(Map<String, dynamic> map) {
    return RouteTable(
      disableBgpRoutePropagation: map['disableBgpRoutePropagation'] == null ? null : map['disableBgpRoutePropagation'] as bool,
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<Route>(map['routes'], (value) => Route.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

